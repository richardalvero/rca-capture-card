https://www.digikey.com/en/products/detail/texas-instruments/TVP5150AM1PBS/1910120

Steps:
1. We replicated the sample layout from section 6 of the datasheet from above. 
2. We connected a camera that outputs ntsc data to channel 1 of the chip.
3. We initially did not tie reset and PDN (power down) high (1.8V in this case) (Layout1), but tried that once our initial test did not work and we realized they are active low (Layout2).
4. We connected the cb and cr to a logic analyzer and got no output from our chip. 