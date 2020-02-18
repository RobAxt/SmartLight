#ifndef lightNode_hpp
#define lightNode_hpp

#include <Homie.hpp>
#include "Light.hpp"

class LightNode : public HomieNode {
    public:
        LightNode(const char* id, const char* name, const char* type);

    protected:
        virtual void setup() override;
        virtual void loop() override;
        virtual void onReadyToOperate() override;
        virtual bool handleInput(const HomieRange& range, const String& property, const String& value);

   private:
        Light _light;
        bool lightOnHandler(const bool on);
};
#endif //lightNode_hpp