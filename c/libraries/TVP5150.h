#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <iostream>
#include "pico/stdlib.h"
#include "pico/binary_info.h"
#include "hardware/i2c.h"
#pragma once


class TVP5150 {
    const int TVP5150_ADDRESS = 0xBA;
    const uint8_t MISC_CTRL_REG = 0x03;     //Write to 0b00001101
//    const uint8_t TEMP_CFG_REG = 0xC0;
//    const uint8_t SHARED_PINS_REG = 0x0F;   //Write to 0b00001000

public:
    const uint8_t MSB_DEV_ID_REG = 0x80;    //Default value of 0x51
    //Class constructor. Used to instantiate an object. 
    TVP5150(void); 
    
    //Initializes the accelerometer, returning true on success or false on failure. 
    int init(void); 
    
    //Set a register on the TVP5150 to the given value. 
    int set_reg(uint8_t reg, uint8_t val); 
    
    //Reads and returns the byte at address reg on the accelerometer.
    uint8_t read_reg(uint8_t reg); 
};