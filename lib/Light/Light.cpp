#include "Light.hpp"

Light::Light(int swt, int rly, bool NO) : Switch(swt), Relay(rly, NO) {
}

bool
Light::localChange(void) {
    update();
    if(stateChanged()) {
        toggle();
        return true;
    }
    return false;
}