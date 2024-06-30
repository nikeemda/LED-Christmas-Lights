# LED Christmas Lights

## Overview
This project aimed to create a LED Christmas lights pattern display using a DE1-SoC FPGA board and VHDL. The goal was successfully implemented allowing users to select 8 unique patterns that could be controlled by switches on the board, as well as adjustable speed settings.

## Key Features
- 8 different unique LED patterns, including:
    - Lights moving from right to left
    - Alternating lights
    - Lights moving towards the center and back
    - Double-lit lights moving across the LED strip
    - And more
- 4 selectable speed settings to control the rate at which the patterns are displayed
- Reset functionality to turn off all LEDs

## Hardware and Software
DE1-SoC FPGA board
ModelSim for VHDL simulation
Quartus Prime for FPGA synthesis and programming

## Design Approach
- The project was divided into three main modules:
    1. Clock Divider: This module takes the 50 MHz clock from the DE1-SoC board and generates four different clock frequencies based on the selected speed setting (2-bit input).
    2. LED Control: This module contains the logic for each of the 8 unique LED patterns. It uses a pattern control counter to cycle through the different LED states for each pattern.
    3. Top Level: This module integrates the Clock Divider and LED Control modules, allowing the user to select the pattern and speed using switches, and driving the 10-bit LED output.

- The key components of the design are:
    - Clock divider circuit to generate multiple clock frequencies
    - Pattern control counter to cycle through the LED states for each pattern
    - Multiplexing logic to select the appropriate LED pattern based on the user input
