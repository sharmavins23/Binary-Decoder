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

Given this testing, we get data lines for the individual segments as follows:

![img](https://cdn.discordapp.com/attachments/601895458453061655/790457249947451462/unknown.png)

The corresponding data line number is shown in green.

Note 1: The bitstream implementation is located in the bitstreams folder as
`switchToLEDSegment.bit`. This bitstream file places the enable signal as
`0001`, which is inverted from the fact that they are active-LOW signals.

Note 2: On documentation, these signals are listed as an active-LOW for the
segment display inputs as well. However, the individual DIP switches are
unlisted as active-LOW or active-HIGH. The inputs could either be mislabelled on
documentation, or

# Helpful Links

-   [Creating your first FPGA design in Vivado](https://www.youtube.com/watch?v=BBtD4PCXqlE):
    A helpful video from
    [FPGA Therapy](https://www.youtube.com/channel/UCC6U6pSgQ4beDi7iDhOAtEQ) on
    creating and implementing projects in Vivado.
-   [Mimas A7 Documentation](https://numato.com/docs/mimas-artix-7-fpga-development-board-with-ddr-sdram-and-gigabit-ethernet/):
    The official (yet partially incomplete) documentation on the Mimas A7 from
    Numatolabs.
