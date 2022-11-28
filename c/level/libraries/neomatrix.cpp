#include "neomatrix.h"

NeoMatrix::NeoMatrix(uint8_t width, uint8_t height){
    //Initializing the array (no delete later since it runs in an infinite loop but I would add that in future)
    pixelArray = new uint32_t[width*height];
    
    //Clearing the memory to make sure all LEDs start off
    clear_pixels();

    //Updating class variables
    this->width = width;
    this->height = height;
}

bool NeoMatrix::init(void){
    //Initializing the pio and matrix
    pioNM = pio0;
    int sm = 0;
    uint offset = pio_add_program(pioNM, &ws2812_program);
    ws2812_program_init(pioNM, sm, offset, WS2812_PIN, 800000, false);

    //Pull pin high to enable the LEDs (CHECK LATER MIGHT BE 22)
    gpio_init(10);
    gpio_set_dir(10, GPIO_OUT);
    gpio_put(10, 1);

    return true;
}

void NeoMatrix::set_pixel(uint8_t row, uint8_t col, uint32_t color){
    pixelArray[(row * height) + col] = color;
}

void NeoMatrix::clear_pixels(void){
    //Iterating through the array setting all the pixels to 0 (off)
    for(int i = 0; i < width*height; i++){
        pixelArray[i] = 0x00000000;
    }
}

void NeoMatrix::write(void){
    //Iterating through the pixel array pushing each color into the pio buffer
    for(int i = 0; i < width*height; i++){
        pio_sm_put_blocking(pioNM, 0, pixelArray[i]);
    }
}