# Termination Module

**The termination/end module** includes status LEDs to check the power busses and the link status of the chain. Two of them are controlled by the uC and are user programmable. The two additional RF signals, REF and AUX are terminated on the module with 50 ohms.

The output is implemented as a female SMA receptacle.

The prototype carries its own 3.3V LDO due to the critical role of the embedded processor. This last link in the chain reorganizes all data received from preceding modules and transmits them to the control computer. This individual power supply could have offered additional debugging and troubleshooting information but was deemed unnecessary in early test and was therefore omitted from later designs.

Further development could include an automated power supply check: A passive resistor network of voltage dividers and pullups should be enough to generate an unambiguous digital pattern that would enable the uC to read the status of the connected supplies.


[Bild 1]: images/bottom_termination.PNG

![Alt-Text][Bild 1]