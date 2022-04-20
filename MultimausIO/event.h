#include <Arduino.h>
#include "src/macros.h"

enum defaultEvents
{
	FEEDBACK,
	START,
	STOP,
} ;

extern void startRecoring() ;
extern void stopRecording() ;
extern void startPlaying() ;
extern void stopPlaying() ;
extern void sendFeedback( uint16 number ) ;
extern void eventHandler() ;
extern void storeEvent( uint8, uint16, uint8 ) ;

// callback function
extern void Event( uint8, uint16, uint8 ) __attribute__ (( weak )) ;
