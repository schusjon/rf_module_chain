# Start Module

**The input/start module** additionally features input connectivity for power and signals:

Standard 2.54mm pin headers serve as power inputs, thus allowing for easy assembly of custom breakout cables. The same holds true for the RX and TX signals, enabling the user to use his favorite UART converter or control the chain with a single board computer. Additional ground pins might be added in following revisions to facilitate interfacing.

The RF signal has a female SMA receptacle, the two additional signals (REF and AUX) terminate to solder pads that allow connection of coax cables or pin headers.

The input module also hosts a 3.3V regulator that supplies the whole chain. Solder pads are prepared for different types of SOT 23-5 LDOs with their respective circuitry.

At the moment, the installed processor does not add any exclusive functionality and is simply another link in the daisy chain. A possible future implementation would be the detection of input signals or power supply voltages to help troubleshoot larger experimental setups. Conversely, this component could be cut entirely for cost optimization. Especially with suitable detectors like the AD 8307 being in the 10€ price range.


[Bild 1]: images/start_description.PNG

![Alt-Text][Bild 1]