#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <iostream>
#include "pico/stdlib.h"
#include "pico/binary_info.h"
#include "hardware/i2c.h"
#pragma once


class LIS3DH {
    const int ACCEL_ADDRESS = 0x18;
    const uint8_t CTRL_REG_1 = 0x20;
    const uint8_t CTRL_REG_4 = 0x23;
    const uint8_t TEMP_CFG_REG = 0xC0;

public:
    //Class members representing the three acceleration values in units of g (Earth’s gravitational acceleration). 
    float x = 0.0;
    float y = 0.0;
    float z = 0.0;

    //Class constructor. Used to instantiate an object. 
    LIS3DH(void); 
    
    //Initializes the accelerometer, returning true on success or false on failure. 
    bool init(void); 
    
    //Set a register on the LIS3DH to the given value. 
    void set_reg(uint8_t reg, uint8_t val); 
    
    //Reads and returns the byte at address reg on the accelerometer. 
    uint8_t read_reg(uint8_t reg); 
    
    //Reads and returns data for the specified axis
    uint16_t read_accel_data(char axis);

    //Updates the class members x, y, and z with the current acceleration values.
    void update(void); 
};