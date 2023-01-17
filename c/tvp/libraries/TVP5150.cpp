#include "TVP5150.h"
using namespace std;

TVP5150::TVP5150(void){

}

int TVP5150::init(void){
    //Initialize the pins and i2c module
    i2c_init(i2c1, 400 * 1000);
    gpio_set_function(2, GPIO_FUNC_I2C);
    gpio_set_function(3, GPIO_FUNC_I2C);
    //gpio_pull_up(2);
    //gpio_pull_up(3);
    
    // Turn normal mode and 1.344kHz data rate on
    printf("1");
    int temp = set_reg(MISC_CTRL_REG, 0x0D);
    printf("4");
    
    return temp;
}

int TVP5150::set_reg(uint8_t reg, uint8_t val){
    //Create a buffer and load it with data to write (register and data)
    printf("2");
    uint8_t buf[2];
    buf[0] = reg;
    buf[1] = val;
    printf("3");

    //Write the data
    return i2c_write_blocking(i2c1, TVP5150_ADDRESS, buf, 2, false);
}

uint8_t TVP5150::read_reg(uint8_t reg){
    //Create a variable to store the data
    uint8_t data;

    printf("2");
    //Specify the register to read from, then read the data into the variable 
    i2c_write_blocking(i2c1, TVP5150_ADDRESS, &reg, 1, true);
    printf("3");
    i2c_read_blocking(i2c1, TVP5150_ADDRESS, &data, 1, false);
    printf("4");
    //Return the result
    return data;
}