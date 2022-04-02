#include "src/io.h"
#include "src/date.h"
#include "src/version.h"
#include "src/macros.h"
#include "src/XpressNetMaster.h"
#include <Servo.h>

XpressNetMasterClass  Xnet ;

uint8_t prevStepper[] = {0xff, 0xff} ;
uint8_t prevServo ;

const int F1_F4 = 0 ;
const int F5_F8 = 0x80 ;
const int MAX_SPEED = 5000 ;
const int MIN_SPEED = 20000 ;
const int MAX_SERVO = 2100 ; // 160
const int MIN_SERVO = 600 ; //   0  PERFECT

Servo servo ;

UINT16 servoPos = 1500 ;
INT32 setPoint ;
INT32 speed = MIN_SPEED  ;
INT32 position ;

const int F11 = -3 ; // degrees at the time
const int F12 =  3 ;

void setup()
{
    initIO() ;

    servo.writeMicroseconds( servoPos ) ;
    servo.attach( servoPin ) ;

    Xnet.setup( Loco28, max485dir ) ;
    // Serial.begin( 115200 ) ;
    // Serial.println( version ) ;
    // Serial.println( date ) ;
}

UINT8 step = 1, prevStep = 1 ;

enum modes
{
    cruisingCW,
    cruisingCCW,
    shiftingCW,
    shiftingCCW,
    breaking,
    IDLE,
} ;

UINT8 stepperMode = IDLE ;
UINT8 servoMode = IDLE ;
UINT8 direction = IDLE ;

void setStep( INT8 dir )
{
    static INT8 step ;

    if( dir ==  1 ) { if( ++ step == 5 ) step = 1 ; position ++ ; }
    if( dir == -1 ) { if( -- step == 0 ) step = 4 ; position -- ; }

    #define step( a,b,c,d ) digitalWrite( TT1, a); digitalWrite( TT2, b); digitalWrite( TT3, c); digitalWrite( TT4, d);
        if( dir ==  0 ) { step( 0, 0, 0 ,0 ) ; } 
    else switch( step )
    {
        case 1 : step( 1, 0, 0 ,0 ) ; break ;
        case 2 : step( 0, 1, 0 ,0 ) ; break ;
        case 3 : step( 0, 0, 1 ,0 ) ; break ;
        case 4 : step( 0, 0, 0 ,1 ) ; break ;
        #undef step
    }
}

void moveMotor()
{
    REPEAT_US( 50 )
    {
        if( stepperMode ==  cruisingCW 
        ||  stepperMode == cruisingCCW )
        {
            if( speed > MAX_SPEED ) speed -- ;
        }
        else if( stepperMode == breaking )
        {
            if( speed  < MIN_SPEED ) speed ++ ;
            if( speed == MIN_SPEED ) stepperMode = IDLE ;
        }
    } END_REPEAT

    if( stepperMode == IDLE ) setStep(  0 ) ;
    else
    {
        REPEAT_US( speed )
        {
            if(      direction ==  cruisingCW ) setStep(  1 ) ;
            else if( direction == cruisingCCW ) setStep( -1 ) ;  

        } END_REPEAT     
    }  
}

void moveServo()
{
    if( servoMode == IDLE ) return ;

    REPEAT_MS( 8 )
    {
        if( servoMode ==  cruisingCW && servoPos < MAX_SERVO ) servoPos ++ ;
        if( servoMode == cruisingCCW && servoPos > MIN_SERVO ) servoPos -- ;

        servo.writeMicroseconds( servoPos ) ;
    } END_REPEAT
}




void setOutput( uint8_t Address, uint8_t functions )
{
    if( Address != 5 ) return ;
    
    UINT8 index = 0 ;
    if( functions & F5_F8 )
    {
        index = 1 ;
        functions <<= 4 ;
    }

    for( int i = 0 ; i < 8 ; i ++ )
    {
        bool currentBit  = functions          & (1 << i) ;
        bool prevBit     = prevStepper[index] & (1 << i) ;
        if( currentBit != prevBit )
        {
            if( currentBit == true ) prevStepper[index] |= functions ;
            else                     prevStepper[index] &= functions ;

            switch( i+1 )
            {
                // case 1: stepperMode = setPoint += 10 ; break ;
                // case 3: stepperMode = setPoint -= 10 ; break ; 
                case 1: stepperMode = cruisingCW ; direction = cruisingCW ;     break ;
                case 2: stepperMode = breaking ;                                break ; 
                case 3: stepperMode = cruisingCCW ; direction = cruisingCCW ;   break ;

                case 4: servoMode = cruisingCW ; direction = cruisingCW ;       break ;
                case 5: servoMode = IDLE ;                                      break ; 
                case 6: servoMode = cruisingCCW ; direction = cruisingCCW ;     break ; 
            }
            return ;
        }
    }
}


void notifyXNetLocoFunc1( uint16_t Address, uint8_t Func1 ) { setOutput( Address, Func1 | F1_F4 ) ; } // called from Xnet library
void notifyXNetLocoFunc2( uint16_t Address, uint8_t Func2 ) { setOutput( Address, Func2 | F5_F8 ) ; }

void notifyXNetLocoFunc3( uint16_t Address, uint8_t Func )
{
    if( Address != 5 ) return ;
    static uint8_t prevFunc = 0xFF ;

    //if( (Func & 0b0100) != (prevFunc & 0b0100) ) { adjustServo( F11 ) ; }
    //if( (Func & 0b1000) != (prevFunc & 0b1000) ) { adjustServo( F12 ) ; }

    prevFunc = Func ;
}


void loop()
{
    moveMotor() ;
    moveServo() ;

    Xnet.update() ;
}