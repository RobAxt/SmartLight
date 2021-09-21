#ifndef Switch_h
#define Switch_h

#include <Arduino.h>
#include <Bounce2.h>
#include "pins_arduino.h"

// #define D2 4	// ESP8266 ESP12F GPIO4

class Switch : public Bounce2::Button {
	public:
		Switch(int pin=D2);
		~Switch(void);
		int getPin(void);
		bool getState(void);
		bool stateChanged(void);

	private:
		int _pin;
		int _state;
};

#endif
