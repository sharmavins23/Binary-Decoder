# Binary Decoder

This project is the base implementation for an 8-bit binary encoder with a seven
segment display output on the Mimas A7 Artix 7 FPGA development board.

# LCD Display Documentation

The original documentation for the LCD output can be found
[here](https://numato.com/docs/mimas-artix-7-fpga-development-board-with-ddr-sdram-and-gigabit-ethernet/#7segment-led-display-4).

As seen, the original documentation is fairly incomplete, so the following
section shall be dedicated to documenting the LCD screen functionality of the
Mimas A7 Artix 7 FPGA. While not tested on revision 2 or previous versions of
the development board, it is assumed that the other versions of the board
function similarly to those listed in this documentation.

The seven segments were tested using a simple Verilog design file, with the
following RTL generated schematic:

![img](https://cdn.discordapp.com/attachments/601895458453061655/790452144741548032/unknown.png)
