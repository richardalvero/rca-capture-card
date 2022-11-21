#include "../libraries/TVP5150.h"
#include "pico/stdlib.h"
#include <stdio.h>

int main() {
    //Instantiating objecs for the neomatrix and accelerometer
    TVP5150 tvp = TVP5150();

    //Initializing the standard io, accelerometer, and neomatrix
    stdio_init_all();
    //sleep_ms(10000);
    uint8_t temp = tvp.read_reg(0x80);
//    int temp = tvp.init();
    printf("temp = %d", temp);

//    uint8_t temp = tvp.read_reg(0x80);


    if (temp) {
        const uint LED_PIN = 13;
        gpio_init(LED_PIN);
        gpio_set_dir(LED_PIN, GPIO_OUT);
        while (true) {
            gpio_put(LED_PIN, 1);
            sleep_ms(250);
            gpio_put(LED_PIN, 0);
            sleep_ms(250);
        }
    }


    return 0;
}