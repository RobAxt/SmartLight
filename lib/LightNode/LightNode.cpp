#include "LightNode.hpp"

LightNode::LightNode(const char* id, const char* name, const char* type) : HomieNode(id,name,type), _light() {
}

void
LightNode::setup() {
    Homie.getLogger() << F("  ☑ Switch Pin Configured: ") << _light.Switch::getPin() << endl;
    Homie.getLogger() << F("  ☑ Relay Pin Configured:  ") << _light.Relay::getPin() << endl;
    setRunLoopDisconnected(true);
    advertise("on").setName("On")
                   .setDatatype("boolean")
                   .setFormat("true,false")
                   .settable([this](const HomieRange& range, const String& value) {
                              return lightOnHandler(value == "true");
                             });
}

void
LightNode::loop() {
    if(_light.stateChanged()){
        Homie.getLogger() << F("  ◦ Local State Changed to ") << (_light.Switch::getState()? "on" : "off") << endl;
        if (Homie.isConnected())
            setProperty("on").overwriteSetter(false).send(_light.Relay::getState()? "true" : "false");
  }
}

void
LightNode::onReadyToOperate() { 
    Homie.getLogger() << F("  ◦ Ready To Operate: ") << getName() << endl;
    Homie.getLogger() << F("  └━━► Relay State: ") << (_light.Relay::getState()? "on" : "off") << endl;
    setProperty("on").overwriteSetter(false).send(_light.Relay::getState()? "true" : "false");
}

bool 
LightNode::handleInput(const HomieRange& range, const String& property, const String& value) {
    if (property != "on" && value != "true" && value != "false") {
        Homie.getLogger() << F("  ◦ Error: property not handle or wrong value") << endl;
        return true;
    }
    return false;
}

bool 
LightNode::lightOnHandler(const bool on) {
    if(on)
        lightOnAction([this](){_light.Relay::turnOn();}, "true");
    else
        lightOnAction([this](){_light.Relay::turnOff();}, "false");
    return true;
}

void
LightNode::lightOnAction(ActionFunction action, const char* state) {
    action();
    setProperty("on").overwriteSetter(false).send(state);
    Homie.getLogger() << F("  ◦ Light On is ") << state << endl;
}