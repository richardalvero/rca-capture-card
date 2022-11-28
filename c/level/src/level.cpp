#include "../libraries/LIS3DH.h"
#include "../libraries/neomatrix.h"
#include "pico/stdlib.h"
#include <stdio.h>

int main() {
    //Instantiating objecs for the neomatrix and accelerometer
    LIS3DH lis3dh = LIS3DH();
    NeoMatrix neomatrix = NeoMatrix(8, 8);

    //Initializing the standard io, accelerometer, and neomatrix
    stdio_init_all();
    sleep_ms(2500);
    lis3dh.init();


    uint8_t id = lis3dh.read_reg(0x80);
    uint8_t misc = lis3dh.read_reg(0x03);
    uint8_t dataType = lis3dh.read_reg(0x0D);
    uint8_t inputSelect = lis3dh.read_reg(0x00);

    while(1){
        printf("High Byte ID: %d | MISC_REG: %d | DATA_TYPE_REG: %d | INPUT_SEL_REG: %d\n", id, misc, dataType, inputSelect);
    }

    while(1);

    // neomatrix.init();

    // //Main while loop the level runs in
    // while(1) {
    //     //Updates the accelerometer data
    //     lis3dh.update();

    //     if(lis3dh.x < 0.1 && lis3dh.x > -0.1 && lis3dh.y < 0.1 && lis3dh.y > -0.1){
    //         //Overriding the middle pixels to be green if the data is close enough
    //         neomatrix.set_pixel(3, 3, 0xFF000000);
    //         neomatrix.set_pixel(3, 4, 0xFF000000);
    //         neomatrix.set_pixel(4, 3, 0xFF000000);
    //         neomatrix.set_pixel(4, 4, 0xFF000000);
    //     }
    //     else {
    //         //Variables to store the respective row and column in
    //         int row = 0;
    //         int col = 0;

    //         //Setting the column based on scaled x data
    //         if(lis3dh.x > 0.75) {
    //             col = 0;
    //         }
    //         else if(lis3dh.x > 0.5) {
    //             col = 1;
    //         }
    //         else if(lis3dh.x > 0.25) {
    //             col = 2;
    //         }
    //         else if(lis3dh.x > 0) {
    //             col = 3;
    //         }
    //         else if(lis3dh.x > -0.25) {
    //             col = 4;
    //         }
    //         else if(lis3dh.x > -0.5) {
    //             col = 5;
    //         }
    //         else if(lis3dh.x > -0.75) {
    //             col = 6;
    //         }
    //         else if(lis3dh.x > -1) {
    //             col = 7;
    //         }

    //         //Setting the row based on scaled y data
    //         if(lis3dh.y > 0.75) {
    //             row = 0;
    //         }
    //         else if(lis3dh.y > 0.5) {
    //             row = 1;
    //         }
    //         else if(lis3dh.y > 0.25) {
    //             row = 2;
    //         }
    //         else if(lis3dh.y > 0) {
    //             row = 3;
    //         }
    //         else if(lis3dh.y > -0.25) {
    //             row = 4;
    //         }
    //         else if(lis3dh.y > -0.5) {
    //             row = 5;
    //         }
    //         else if(lis3dh.y > -0.75) {
    //             row = 6;
    //         }
    //         else if(lis3dh.y > -1) {
    //             row = 7;
    //         }

    //         //Setting the specified pixel based on the x and y accelerometer data
    //         neomatrix.set_pixel(row, col, 0x00FF0000);
    //     }

    //     //Writing the pixel data to the neomatrix and clearing the array for the next iteration of the loop
    //     neomatrix.write();
    //     neomatrix.clear_pixels();

    //     //Sleeping to prevent flashing (or duty cycle if it's fast enough) from it updating too fast
    //     sleep_ms(100);
    // }

    return 0;
}