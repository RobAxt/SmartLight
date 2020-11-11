#include "Switch.hpp"

Switch::Switch(int pin) : _pin(pin) {
	attach( _pin, INPUT_PULLUP ); 
	interval(50); 
	setPressedState(LOW); 
}

Switch::~Switch(void) {
}

bool
Switch::getState(void) {
	return _state;
}

int
Switch::getPin(void) {
	return _pin;
}

bool
Switch::stateChanged(void) {
	if(pressed()){
		_state = LOW;
		return true;
	}
	if(released()){
		_state = HIGH;
		return true;
	}
	return false;		
}