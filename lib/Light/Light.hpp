#ifndef Light_h
#define Light_h

#include "Arduino.h"
#include "Switch.hpp"
#include "Relay.hpp"

class Light : public Switch, public Relay {

	public:
		Light(int swt=D2, int rly=D1, bool NO=false);
	protected:
		virtual void onChangeAction(void) override;
};

#endif
