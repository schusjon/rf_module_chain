# Overview

The aim of the project is to develop a chain of RF-modules which can be connected in series. The most common connector for RF applications is the SMA connector. Because of the high purchase price, the idea to use another connector e.g. PCI Express has existed for quite some time. The main advantage over other connectors is the comparatively low price. Moreover, it can be used up to a frequency of about 500 MHz and the male connector can be easily included on the circuit board. 

[Bild 1]: images/chain.PNG
![Alt-Text][Bild 1]

A means of digital communication should be implemented throughout the chain, an expansion that distinguishes this project from previous, unfinished attempts. The high amount of contacts the PCI-E connector provides facilitates this endeavor.
The chain starts with a special start-module including pin headers for the power supply, as will be explained later.
We expect that the following voltages will cover most conceivable scenarios:

Voltage Rails

|  +5V | -5V  |  3.3V | +12V  | -12V  |
|---|---|---|---|---|


Again, the chosen PCI connector allows for all those different voltage rails and with a current handling of 1A per pin, distributing power to the chain can be done with the same connector.
To feed the chain with the RF-Signal, one SMA connector on the start-module is unavoidable. For further experiments it is useful to add two additional RF inputs. 
These can be used for a reference signal or any auxiliary signal. In this project we limit ourselves to designing only the traces and basic interfacing for these signals on the boards. 
To receive the signal from the chain, a further SMA connecter is used on the end module. 

## Signal Chain

The signal chain consists of different modules, all of which have a few components and properties in common:
All links within the chain are established with PCI-E 36 connectors, all modules bear either a straddle mount receptacle, card-edge fingers or both to interface with neighboring modules.
Each one is equipped with a STM32F0 microprocessor for data transmission and control purposes. 
They utilize their internal RC oscillator to help minimize cost and prevent clock spill into the RF signals.
A 4pin header is used to program these processors with a ST-Link USB adaptor. A fifth pin adjacent to the programming connector serves in conjunction with a jumper as a power switch for the processor on this module only. 
Connected during normal operation, the jumper can be removed to shut off the processor of a single module without cutting the power of the rest of the chain. (Due to the nature of the daisy chain, communication will be interrupted as well)
The modules incorporate separate ground planes for RF and data/power circuits. 
The RF ground is continuous on the back of the PCB to improve impedance control. Via stitching and a defined trace width and aura (1mm width, 0.15mm aura) of the RF signal traces on the 1.6mm FR4 PCBs yield an impedance close to 50 Ohms (with the properties of the laminate causing deviations). 
A series of solder pads on the modules allow linking those ground planes at virtually any point in the chain if the need arises.


[Bild 2]: images/bottom.PNG
![Alt-Text][Bild 2]