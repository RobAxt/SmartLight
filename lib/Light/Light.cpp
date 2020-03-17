#include "Light.hpp"

Light::Light(int swt, int rly, bool NO) : Switch(swt), Relay(rly, NO) {
}

void
Light::onChangeAction(void) {
	Relay::toggle();
	//Serial.println("Inside onChangeAction");
}