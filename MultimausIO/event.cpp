#include <EEPROM.h>
#include "shuttle.h"

typedef struct 				// 8 bytes per event
{
	uint8 	data1 ;
	uint16 	data2 ;
	uint8	data3 ;
	uint32  time2nextEvent ;
} Event ;

enum eventModes
{
    idle,
    playing,
    recording,
    finishing,
} ;

Event   event ;

const int baseEEaddress = 0x14 ;
uint16  eeAddress ;
uint32  prevTime ;
uint16  newSensor ;
uint8   recordingDevice = idle ;
bool    playingAllowed ;

void startRecoring() 
{
    if( recordingDevice == idle )
    {
        eeAddress = 0 ;                     // set EEPROM adres to 0
        recordingDevice = recording ;       
        prevTime = millis() ;               // record starting time
        recordEvent( START ) ;
    }
}

void stopRecording() 
{
    if( recordingDevice == recording )
    {
        recordingDevice = idle ;
        recordEvent( STOP ) ;
    }
}
void startPlaying() 
{
    if( recordingDevice == idle )
    {
        eeAddress = 0 ;
        event.time2nextEvent = 10 ;
        prevTime = millis() ;
        recordingDevice = playing ;
        playingAllowed = true ;
    }
}
void stopPlaying() 
{
    if( recordingDevice == playing )
    {
        recordingDevice = finishing ;
    }
}

void storeEvent( uint8 _data1, uint16 _data2, uint8 _data3 )
{
    if( recordingDevice != recording ) return ;

    Event     localEvent ;
    uint32    currTime = millis() ;

    localEvent.data1 = _data1 ;
    localEvent.data2 = _data2 ;
    localEvent.data3 = _data3 ;

    if( type == 0 ) { localEvent.time2nextEvent = 0 ; }
    else            { localEvent.time2nextEvent = currTime - prevTime ; }

    prevTime = millis() ;

    EEPROM.put( eeAddress, localEvent ) ;

    eeAddress += sizeof( localEvent ) ;            // increase EEPROM address for next event ;
}

Event getEvent()
{
    Event localEvent ;

    EEPROM.get( eeAddress, localEvent ) ;

    eeAddress += sizeof( localEvent ) ;            // increase EEPROM address for next event ;

    return localEvent ;
}


void sendFeedback( uint16 number )
{
    newSensor = number ;
}

void eventHandler()
{
    uint32 currTime = millis() ;

    if( recordingDevice == playing && (currTime - prevTime) >= event.time2nextEvent )
    {
        if( event.time2nextEvent == 0 ) // if interval is 0, we are waiting on a sensor or feedback thing to continu.
        {
            if( newSensor == event.data2 ) event.time2nextEvent = 1 ;
            return ;
        }
                           //    8bit         16bit        8bit       // for here and now, data1, is type, data2 is address and data 3 just data.
        if( Event ) Event( event.data1, event.data2, event.data3 ) ;

        prevTime = currTime ;
        event = getEvent() ;     

        newSensor = 0 ;
    }
}