#ifndef RELAY_h
#define RELAY_h

#include "Arduino.h"
#include "pins_arduino.h"	

class Relay
{
	public:
		Relay(int pin=D1, bool isNormallyOpen=true);
		~Relay(void);
		int getPin(void);
		bool getState(void);
		void turnOn(void);
		void turnOff(void);
		void toggle(void);
	
	 private:
		int _pin;
		bool _state;
		bool _normallyOpen;
};

#endif
