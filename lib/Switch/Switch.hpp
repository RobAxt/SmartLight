#ifndef Switch_h
#define Switch_h

#include <Ticker.h>
#include "Arduino.h"
#include "pins_arduino.h"	
#include "FunctionalInterrupt.h"

#define DEBOUNCE_TIMEOUT 1000
// #define D2 4	// ESP8266 ESP12F GPIO4

class Switch {
	public:
		Switch(int pin=D2);
		~Switch(void);
		int getPin(void);
		bool getState(void);
		bool stateChanged(void);

	private:
		int _pin;
		int _state;
		long _lastDebounceTime;
		int _debounceDelay;
		bool _stateChanged;
		void onChangeInterrupt(void);
        Ticker _timerInterrupt;

	protected:
		virtual void onChangeAction(void);
};

#endif
