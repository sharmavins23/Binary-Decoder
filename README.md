# Binary Decoder

This project is the base implementation for an 8-bit binary encoder with a seven
segment display output on the Mimas A7 Artix 7 FPGA development board.

## Overview

The project takes in a binary input, which is given by the 8-bit encoded DIP
switches, and displays both its output on the corresponding DIP switch lights as
well as the sum of the binary values in hexadecimal on screen.

The main focus of this project was on learning the basis of implementing designs
from Verilog onto a physical board. Having recently acquired the Mimas A7 Artix
A7 development board (part XC7A50T-1FGG484C), I wanted to implement some simple
projects before delving into deeper concepts. This is the first of a series of
said simpler project implementations on the FPGA.

Despite being a simpler implementation, this project serves as a starting point
for implementation on the FPGA as well as the core features in the design
process of FPGA design, and is an extremely basic yet featured guide for
starting out in FPGA development.

_It's also important to note that_ the documentation on Numatolabs (listed below
in the links section) is fairly incomplete, so the following documentation also
fills in the gaps for this documentation as necessary. All features are not
tested and implemented here, but the main portions tested are the seven segment
displays, eight DIP switches, and their corresponding LEDs.

## LCD Display Documentation

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

## Helpful Links

-   [Creating your first FPGA design in Vivado](https://www.youtube.com/watch?v=BBtD4PCXqlE):
    A helpful video from
    [FPGA Therapy](https://www.youtube.com/channel/UCC6U6pSgQ4beDi7iDhOAtEQ) on
    creating and implementing projects in Vivado.
-   [Mimas A7 Artix 7 Documentation](https://numato.com/docs/mimas-artix-7-fpga-development-board-with-ddr-sdram-and-gigabit-ethernet/):
    The official (yet partially incomplete) documentation on the Mimas A7 from
    Numatolabs.
-   [Tcler's Wiki](https://wiki.tcl-lang.org/): A basic wiki for the TCL
    language, the scripting language used to program `.xdc` Xilinx design
    constraint files.

# License TL;DR

This project is distributed under the MIT license. This is a paraphrasing of a
[short summary](https://tldrlegal.com/license/mit-license).

This license is a short, permissive software license. Basically, you can do
whatever you want with this software, as long as you include the original
copyright and license notice in any copy of this software/source.

## What you CAN do:

-   You may commercially use this project in any way, and profit off it or the
    code included in any way;
-   You may modify or make changes to this project in any way;
-   You may distribute this project, the compiled code, or its source in any
    way;
-   You may incorporate this work into something that has a more restrictive
    license in any way;
-   And you may use the work for private use.

## What you CANNOT do:

-   You may not hold me (the author) liable for anything that happens to this
    code as well as anything that this code accomplishes. The work is provided
    as-is.

## What you MUST do:

-   You must include the copyright notice in all copies or substantial uses of
    the work;
-   You must include the license notice in all copies or substantial uses of the
    work.

If you're feeling generous, give credit to me somewhere in your projects.
