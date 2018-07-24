#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <linux/can.h>
#include <errno.h>
#include <stdbool.h>

#include "oscc.h"
#include "can_protocols/brake_can_protocol.h"
#include "can_protocols/steering_can_protocol.h"
#include "can_protocols/fault_can_protocol.h"
#include "can_protocols/throttle_can_protocol.h"

int outputValue = OSCC_ERROR;
bool is_brake_enabled = false;

int can_open(int channel){
	outputValue = OSCC_ERROR;
	outputValue = oscc_open(channel);
	return outputValue;
	printf("can_open function has run");
	printf("oscc_open should have been called by can_open");
}

void can_close(int channel){
	oscc_close(channel);
}

int enable_brakes(){
	outputValue = OSCC_ERROR;
	outputValue = oscc_enable_brakes();
	return outputValue;
	printf("enable_brakes has run");
}

void disable_brakes(){
	outputValue = OSCC_ERROR;
	outputValue = oscc_disable_brakes();
	printf("disable_brakes has run");

}

//static void brake_callback_statuscheck(oscc_brake_report_s * report)
//{
//	if(report->enabled_status == 0){

//	}
//	int brake_debug_key = (report->enabled_status);
//	if (brake_debug_key != 0){
//		is_brake_enabled = true;
//	}
//	else
//	{
//		is_brake_enabled = false;
//	}
//}


int main(int argc, char **argv){
	int channel;
	errno = 0;
	if (argc == 1 || (atoi(argv[0]), errno) == 0){
		channel = atoi(argv[0]);
	}
	outputValue = can_open(channel);
	printf("can_open should have been called by main");
	if (outputValue == OSCC_OK)
	{
		outputValue = OSCC_ERROR;
		outputValue = enable_brakes();
		return outputValue;
		printf("OSCC_OK");
	}
	else
	{
		disable_brakes();
		can_close(channel);

	}
	return 0;
}
