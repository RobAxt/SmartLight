#include "Arduino.h"
#include "Switch.h"

Switch light(D2);

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Serial.print("Pin Configured: ");
  Serial.println(light.getPin());
}

void loop() {
  // put your main code here, to run repeatedly:
  
}