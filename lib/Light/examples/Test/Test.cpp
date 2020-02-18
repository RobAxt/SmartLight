#include "Arduino.h"
#include "Light.h"

Light light;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Serial.print(F("Switch Pin Configured: "));
  Serial.println(light.Switch::getPin());
  Serial.print(F("Relay Pin Configured: "));
  Serial.println(light.Relay::getPin());
}

void loop() {
  // put your main code here, to run repeatedly:
  if(light.stateChanged()){
    Serial.println (F("Light Change State"));
    Serial.print (F("Time: "));
    Serial.println (millis());
    Serial.print (F("Switch Pin State: "));
    Serial.println (light.Switch::getState());
    Serial.print (F("Relay Pin State: "));
    Serial.println (light.Relay::getState());
    Serial.println (F("...................."));
  }     
}