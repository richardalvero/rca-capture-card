#include "LIS3DH.h"
using namespace std;

LIS3DH::LIS3DH(void){

}

bool LIS3DH::init(void){
    //Initialize the pins and i2c module
    i2c_init(i2c1, 400 * 1000);
    gpio_set_function(2, GPIO_FUNC_I2C);
    gpio_set_function(3, GPIO_FUNC_I2C);
    gpio_pull_up(2);
    gpio_pull_up(3);
    
    // Misc Reg, enabling Vsync, hsync, and the clock output
    set_reg(0x03, 0x0D);

    //Enabling YcBcR output
    set_reg(0x0D, 0x60);

    //Selecting input 2
    set_reg(0x00, 0x02);

    //Unmasking NTSC4.43
    set_reg(0x04, 0xCF);

    return 0;
}

void LIS3DH::set_reg(uint8_t reg, uint8_t val){
    //Create a buffer and load it with data to write (register and data)
    uint8_t buf[2];
    buf[0] = reg;
    buf[1] = val;

    //Write the data
    i2c_write_blocking(i2c1, 0x5D, buf, 2, false);
}

uint8_t LIS3DH::read_reg(uint8_t reg){
    //Create a variable to store the data
    uint8_t data;

    //Specify the register to read from, then read the data into the variable 
    i2c_write_blocking(i2c1, 0x5D, &reg, 1, true);
    i2c_read_blocking(i2c1, 0x5D, &data, 1, false);

    //Return the result
    return data;
}

//No longer used bc I cut it while debugging and didn't get around to reimplementing it
uint16_t LIS3DH::read_accel_data(char axis){
    //Determines the register based on the specified axis
    uint8_t reg;
    if(axis == 'x') {
        reg = 0x28;
    }
    else if(axis == 'y') {
        reg = 0x2A;
    }
    else if(axis == 'z') {
        reg = 0x2C;
    }
    else {
        cout << "Invalid axis provided" << endl;
    }

    //Reads the lsb and MSB
    uint8_t lsb = read_reg(reg);
    reg |= 0x01;
    uint8_t msb = read_reg(reg);

    //Returns the properly concatanated result
    return (msb << 8) | lsb;
}

void LIS3DH::update(void){
    //Creates variables to store each byte of data
    uint8_t lsb;
    uint8_t msb;

    //Reads the lsb and msb data from each axis registers and concatanates it
    lsb = read_reg(0x28);
    msb = read_reg(0x29);
    uint16_t x_val = (msb << 8) | lsb;

    lsb = read_reg(0x2A);
    msb = read_reg(0x2B);
    uint16_t y_val = (msb << 8) | lsb;

    lsb = read_reg(0x2C);
    msb = read_reg(0x2D);
    uint16_t z_val = (msb << 8) | lsb;

    //Setting up the scaling for the accelerometer
    float sensitivity = 0.004f;
    float scaling = 64 / sensitivity;

    //DEPRECATED
    // uint16_t x_val = read_accel_data('x');
    // uint16_t y_val = read_accel_data('y');
    // uint16_t z_val = read_accel_data('z');
    
    //Updating the values to be scaled with respect to -1g to 1g
    x = (float) ((int16_t) x_val) / scaling;
    y = (float) ((int16_t) y_val) / scaling;
    z = (float) ((int16_t) z_val) / scaling;
}