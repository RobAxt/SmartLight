#include "Relay.hpp"

Relay::Relay(int pin, bool isNormallyOpen) : _pin(pin),_state(false),_normallyOpen(isNormallyOpen) {
	pinMode(_pin, OUTPUT);
}

Relay::~Relay(void) {
}

bool
Relay::getState(void) {
	if (_normallyOpen) {
		return !_state;
	}
	else {
		return _state;
	}
}

int
Relay::getPin(void) {
	return _pin;
}

void
Relay::turnOn(void) {
	if (_normallyOpen){
		if (_state == !true) return;
		_state = !true;
	} else {
		if (_state == true) return;
		_state = true;
	}
	digitalWrite(_pin, _state);
}

void
Relay::turnOff(void) {
	if (_normallyOpen) {
		if (_state == !false) return;
		_state = !false;
	} else {
		if (_state == false) return;
		_state = false;
	}
	digitalWrite(_pin, _state);
}

void
Relay::toggle(void) {
	if(!getState())
		turnOn();
	else
		turnOff();
}