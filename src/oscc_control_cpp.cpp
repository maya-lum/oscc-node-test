#include "oscc_control_cpp.hpp"
//these may or may not require extern function?
#include <iostream.h>
#include <cstdlib>
#include <linux/can.h>
#include <errno.h>
#include <stdbool.h>

#include "oscc.h"
#include "can_protocols/brake_can_protocol.h"
#include "can_protocols/steering_can_protocol.h"
#include "can_protocols/fault_can_protocol.h"
#include "can_protocols/throttle_can_protocol.h"

//copypasted directly from the c version. idk whether it needs to be changed for c++ so uhh fun
int outputValue = OSCC_ERROR;
bool is_brake_enabled = false;

int can_open(int channel){
	outputValue = OSCC_ERROR;
	outputValue = oscc_open(channel);
	return outputValue;
}

void can_close(int channel){
	oscc_close(channel);
}

int enable_brakes(){
	outputValue = OSCC_ERROR;
	outputValue = oscc_enable_brakes();
	return outputValue;
}

void disable_brakes(){
	outputValue = OSCC_ERROR;
	outputValue = oscc_disable_brakes();

}
