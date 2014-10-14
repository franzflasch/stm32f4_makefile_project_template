# STM32F1 Discovery Makefile Template Project

This Makefile project is set up for the STM32F1 Discovery Board. It was set up as a consequence of the latest GNU ARM eclipse plugin, which does not fit my needs anymore. It is a modified version of https://github.com/halherta/iotogglem0_wspl.

## Prerequisites

Working GNU ARM GCC (https://launchpad.net/gcc-arm-embedded)

Texane stlink to flash the STM32F1 Discovery Board (https://github.com/texane/stlink)

## Usage

On command line:

make all = Create project

make clean = Clean project files.

make flash_stlink = build project files and flash the microcontroller via st-flash (https://github.com/texane/stlink.git)

To rebuild project do "make clean" and "make all".

## Makefile structure

The project is structured in a common directory structure. It consists of a master makefile "Makefile" and a second *.mk Makefile.
The file makefile_std_lib.mk defines the sources and compiler options for building the STM32F1 Standard Peripheral Library. Further 
external libraries should also be splitted in their own *.mk files to achieve a well strucured mcu project. All further *.mk files 
have to be included in the master Makefile.

Please see makefile_std_lib.mk to get an idea of how to setup an own *.mk Makefile.
