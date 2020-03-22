#include <Homie.h>
#include <LightNode.hpp>

#define FW_NAME "smart-light"
#define FW_VERSION "1.1.1"

/* Magic sequence for Autodetectable Binary Upload */
const char *__FLAGGED_FW_NAME = "\xbf\x84\xe4\x13\x54" FW_NAME "\x93\x44\x6b\xa7\x75";
const char *__FLAGGED_FW_VERSION = "\x6a\x3f\x3e\x0e\xe1" FW_VERSION "\xb0\x30\x48\xd4\x1a";
/* End of magic sequence for Autodetectable Binary Upload */

LightNode light("light", "Smart Light", "switch");

void setup() {
  Serial.begin(74880);
  Serial << endl << endl;
  Serial << F("Build Date and Time: ") << __DATE__ << " & " << __TIME__ << endl;
  
  Homie_setFirmware(FW_NAME, FW_VERSION); // The underscore is not a typo! See Magic bytes

  //Homie.setSetupFunction([](){});
  //Homie.setLoopFunction([](){});
  //Homie.setBroadcastHandler([](const String& level, const String& value){});
  //Homie.onEvent([](HomieEvent& event){});
  Homie.setup();
}

void loop() {
  Homie.loop();  
}
