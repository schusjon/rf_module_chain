# Filter Attenuator Modules

**The filter/attenuator modules** come in two topologies, PI and T. Solder pads (0603 in metric system) allow for custom filters and attenuators. Identical except for the filter configuration, both modules pass REF and AUX unaltered. The processor can be programmed with information about the implemented filter, making its properties computer-readable. While it does not provide any control functionality at this moment, it is conceivable to utilize RF switches to select different attenuations or frequencies. (the SKY 13XXX range from Skyworks Solutions appears to be promising and cost effective)

The prototype PI-attenuator was equipped with 18 Ohms for R7 and R9 and 300 ohms for R8, selected from the E24 series.

The calculated values for 3dB attenuation would have been 17.6 ohms and 292 ohms respectively.

The T attenuator was implemented with 10dB of attenuation, with  the resistor values 27 and 36 ohms ( instead of the theoretical 26.0 and 35.1 ohms)

[Bild 1]: images/bottom-pi-att.PNG

![Alt-Text][Bild 1]