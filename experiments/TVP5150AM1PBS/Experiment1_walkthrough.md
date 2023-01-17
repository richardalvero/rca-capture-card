Experiment 1: First attempt at reading YCbCr output from the TVP5150AM1

Steps:
1. We replicated the sample layout from section 6 of the datasheet from above (exact setup can be seen in Experiment1_Schematic). 
2. We connected a camera that outputs ntsc data to channel 1 of the chip. 
3. We initially did not tie reset and PDN (power down) high (1.8V in this case) (Layout1), but tried that once our initial test did not work and we realized they are active low (Layout2).
4. We connected the cb and cr to a logic analyzer.

Result: No output. Rereading the manual found that registers would need to be configured over I2C first.

https://www.digikey.com/en/products/detail/texas-instruments/TVP5150AM1PBS/1910120
