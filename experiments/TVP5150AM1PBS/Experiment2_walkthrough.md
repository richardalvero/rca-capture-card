Experiment 2: Communicating with the TVP5150AM1 over I2C

Steps:
  1. Connected the RP2040 Raspberry Pi Pico to the SDA and SCL lines on the TVP5150AM1
  2. Attempted to write to the chip's registers over I2C, but received no response
  3. Grounded the pico
  4. Connected the logic analyzer to the Y (luminance) and HSYNC outputs
  5. Wrote to registers 03 and 0D to enable VSync, HSync, clock, and YCbCr outputs
  6. Received an output, but it was not dependent on the input from the camera
  7. Attempted changing autoswitch masking (04) and input source (00), with no change in output

Results: I2C communication was successful, but we were unable to determine where its output is 
  originating or how to read from the camera input.

Code used for Pico can be found under c/level
