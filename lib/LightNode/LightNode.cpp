#include "LightNode.hpp"

LightNode::LightNode(const char* id, const char* name, const char* type) : HomieNode(id,name,type), _light() {
    _light.Relay::turnOff();
}

void
LightNode::setup() {
    Homie.getLogger() << F("Calling Node On Setup...") << endl;
    Homie.getLogger() << F("☑ Switch Pin Configured: ") << _light.Switch::getPin() << endl;
    Homie.getLogger() << F("  ◦ Switch Pin State: ") << _light.Switch::getState() << endl;
    Homie.getLogger() << F("☑ Relay Pin Configured:  ") << _light.Relay::getPin() << endl;
    Homie.getLogger() << F("  ◦  Relay Pin State:  ") << _light.Relay::getState() << endl;

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
    if(_light.localChange()){
        Homie.getLogger() << F("Local State Changed... ") << endl;
        Homie.getLogger() << F("  ◦ Switch State: ") << (_light.Switch::getState()? "on" : "off") << endl;
        Homie.getLogger() << F("  ◦ Relay State: ") << (_light.Relay::getState()? "on" : "off") << endl;
        if (Homie.isConnected())
            setProperty("on").overwriteSetter(false).send(_light.Relay::getState()? "true" : "false");
  }
}

void
LightNode::onReadyToOperate() { 
    Homie.getLogger() << F("Calling Ready To Operate... ") << endl;
    Homie.getLogger() << F("  ◦ Node Name: ") << getName() << endl;
    Homie.getLogger() << F("  ◦ Relay State: ") << (_light.Relay::getState()? "on" : "off") << endl;
    
    setProperty("on").overwriteSetter(false).send(_light.Relay::getState()? "true" : "false");
}

bool 
LightNode::handleInput(const HomieRange& range, const String& property, const String& value) {
    Homie.getLogger() << F("Calling Node Handle Input...") << endl;
    if (property != "on" || (value != "true" && value != "false")) {
        Homie.getLogger() << F("  ◦ Error: property not handle or wrong value") << endl;
        return true;
    }
    Homie.getLogger() << F("  ◦ Receive Property/Value: ") << property  << F(" ━► ") << value << endl;
    return false;
}

bool 
LightNode::lightOnHandler(const bool on) {
    if(on == true)
        lightOnAction([this](){_light.Relay::turnOn();}, "true");
    else if(on == false)
        lightOnAction([this](){_light.Relay::turnOff();}, "false");
    else
        return false;
    return true;
}

void
LightNode::lightOnAction(ActionFunction action, const char* state) {
    action();
    setProperty("on").overwriteSetter(false).send(state);
    Homie.getLogger() << F("  ◦ Light On is ") << state << endl;
}