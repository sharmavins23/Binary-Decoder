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

## Clock Divider Circuit

The 7-Segment LED controller uses a clock divider to determine which segment
should be on at any given time. Given this fact, the Clock Divider circuit is
utilized to control the clock output.

The clock divider module has an input parameter (listed in module definition)
which can be explicitly formed to program the period of the clock cycle output
with the following equation:

![eqn](https://latex.codecogs.com/gif.latex?T%3D%5Cfrac%7BN%7D%7B100%20MHz%7D)

In this equation, N is the parameter representing the number of clock cycles
from the onboard CMOS oscillator before a circuit clock cycle occurs. Setting it
below 1 or to a non-integer value will cause the module to malfunction.

This parameter can instead be wired to another input in order to modulate and
control the cycle speed.

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
-   [Revised Mimas A7 Docs](https://sharmavins23.github.io/Mimas-A7-Artix-7-Documentation/):
    A revised version of the official documentation with more information,
    created during the implementation of this project.

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
