#include "Switch.hpp"

Switch::Switch(int pin) : _pin(pin),_lastDebounceTime(0),_debounceDelay(DEBOUNCE_TIMEOUT) {
	pinMode(_pin, INPUT_PULLUP);
	attachInterrupt(_pin, std::bind(&Switch::onChangeInterrupt,this), CHANGE); 
}

Switch::~Switch(void) {
	detachInterrupt(_pin);
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
	if(_stateChanged){
		_stateChanged = false;
		return true;
	}
	return false;		
}

void 
Switch::onChangeAction(void) {
}

void
Switch::onChangeInterrupt(void) {	
	if(millis()  > (unsigned long)(_debounceDelay - _lastDebounceTime)){
		_state = digitalRead(_pin);
		onChangeAction();
		_stateChanged = true;
	}	
	_lastDebounceTime = millis();
}
