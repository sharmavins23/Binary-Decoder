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

## Clock Divider

The 7-Segment LED controller uses a clock divider to determine which segment
should be on at any given time. Given this fact, the clock divider circuit is
utilized to control the clock output.

![eqn](https://latex2png.com/pngs/9e37525874b6347c29e439bbb3901a50.png)

In this equation, `N` is the width (in bits) of the counter bus which overflows
to flip the clock cycle.

In order to calculate the desired frequency to divide to, it's recommended to
first choose a multiplier value that evenly divides into the desired frequency,
invert the equation, and then calculate the `N` value.

This parameter can instead be wired to another input in order to modulate and
control the cycle speed.

## Eight Bit Split Inverter

The DIP switch input is active-LOW, so this module flips the bits before
splitting them into two nibbles. These nibbles correspond to the individual
hexadecimal characters.

## Seven Segment Controller

This controller has input nibbles as well as an internal multiplexer for the
input nibbles. In a four-output scenario, an internal 1-cold decoder is needed
to select the enable signal.

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
