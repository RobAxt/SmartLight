#include "Relay.h"

Relay light(D1, true); // constructor receives (pin, isNormallyOpen) true = Normally Open, false = Normally Closed

void setup() {
 Serial.begin(115200);
}

void loop() {
 light.turnOff(); //turns relay off
 Serial.print("Turn OFF, Pin State: ");
 Serial.println(light.getState()?"TRUE":"FALSE");
 delay(2000);
 light.turnOn();  //turns relay on
 Serial.print("Turn ON, Pin State: ");
 Serial.println(light.getState()?"TRUE":"FALSE");
 delay(2000);
}