cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(level C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(level
    src/level.cpp
    libraries/LIS3DH.h
    libraries/LIS3DH.cpp
    libraries/neomatrix.h
    libraries/neomatrix.cpp
)

pico_generate_pio_header(level ${CMAKE_CURRENT_LIST_DIR}/libraries/neopixel.pio OUTPUT_DIR ${CMAKE_CURRENT_LIST_DIR}/libraries/generated)

target_link_libraries(level pico_stdlib hardware_i2c hardware_pio)

pico_enable_stdio_usb(level 1)
pico_enable_stdio_uart(level 0)

pico_add_extra_outputs(level)