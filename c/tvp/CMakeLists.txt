cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(level C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(i2c
    src/i2c.cpp
    libraries/TVP5150.h
    libraries/TVP5150.cpp
)

target_link_libraries(i2c pico_stdlib hardware_i2c)
pico_enable_stdio_usb(i2c 1)
pico_enable_stdio_uart(i2c 0)

pico_add_extra_outputs(i2c)