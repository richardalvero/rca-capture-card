Structure:
    level.cpp consists of initialization functions followed by an infinite while loop which reads accelerometer data and updates the corresponding LEDs

    LIS3DH.cpp contains the function definitions for initializing the accelerometer, reading and writing to registers on it, and updating the class-level float variables, x, y, and z. It also has a deprecated function to read a specific axis' data.
    LIS3DH.h is the header file for LIS3DH.cpp

    neomatrix.cpp contains the function definitions for initializing the neomatrix, setting specific pixels, clearing all pixels, and updating the matrix. It manages the pixel data using a dynamically allocated aray (Dynamic in both size and memory allocation) and keeps track of the size using class-level variables.
    neomatrix.h is the header file for neomatrix.cpp

    neopixel.pio.h contains the assembly functions that write to the neomatrix's data buffers. This file is copied from the pico-sdk repository.

Building & Loading:
    1) Clone the pico-sdk repository into your directory of choice.
    2) Store the "level" directory (which contains this file) so it is siblings with the pico-sdk repository.
    3) While within the "level" directory, make a directory called "build" using "mkdir build" and enter it using "cd build".
    4) Use "export PICO_SDK_PATH=../../pico-sdk" to set the PICO_SDK_PATH variable to the correct directory. This is why "level" should be siblings with "pico-sdk".
    5) Use "cmake -DPICO_BOARD=adafruit_feather_rp2040 .." from within the "build" directory to run CMakeLists.txt and generate a makefile.
    6) Use "make" to run the makefile and generate level.uf2.
    7) Connect the device to your computer while holding the BOOTSEL button to load it as a mass storage device.
    8) Drop the generated "level.uf2" file into the mass storage device, and you should see the LEDs start to function as a level.