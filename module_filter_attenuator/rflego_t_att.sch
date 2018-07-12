EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:rflego_t_att-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "rf-module:t-attenuator"
Date "2018-06-11"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32-48PIN U1
U 1 1 5B02CE31
P 6000 3025
F 0 "U1" H 5400 4775 60  0000 C CNN
F 1 "STM32-48PIN" H 5350 1275 60  0000 L CNN
F 2 "uC:LQFP-48_7x7mm_Pitch0.5mm" H 6400 3025 60  0001 C CNN
F 3 "" H 6400 3025 60  0000 C CNN
	1    6000 3025
	1    0    0    -1  
$EndComp
$Comp
L PCIx136p J12
U 1 1 5B02CF1F
P 9775 2975
F 0 "J12" H 9775 3875 50  0000 C CNN
F 1 "PCIx136p Slot" H 9775 1825 50  0000 C CNN
F 2 "Connector_PCIx1:PCI-EXPRESS-SLOT" H 9775 2975 50  0001 C CNN
F 3 "" H 9775 2975 50  0001 C CNN
	1    9775 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	9975 2175 9975 3175
Connection ~ 9975 2275
Connection ~ 9975 2375
Connection ~ 9975 2475
Connection ~ 9975 2575
Connection ~ 9975 2675
Connection ~ 9975 2775
Connection ~ 9975 2875
Connection ~ 9975 3075
Wire Wire Line
	9975 3075 9975 2975
Connection ~ 9975 2975
Wire Wire Line
	9975 3275 9975 3875
Connection ~ 9975 3375
Connection ~ 9975 3475
Connection ~ 9975 3575
Connection ~ 9975 3675
Connection ~ 9975 3775
$Comp
L GND #PWR01
U 1 1 5B02D517
P 10100 2475
F 0 "#PWR01" H 10100 2225 50  0001 C CNN
F 1 "GND" H 10100 2325 50  0000 C CNN
F 2 "" H 10100 2475 50  0001 C CNN
F 3 "" H 10100 2475 50  0001 C CNN
	1    10100 2475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10100 2475 9975 2475
Text Label 10175 3275 0    60   ~ 0
RF-GND
Wire Wire Line
	9975 3275 10175 3275
Text Label 9075 2475 2    60   ~ 0
3,3V
Wire Wire Line
	9075 2475 9575 2475
Text Label 9075 2575 2    60   ~ 0
+5V
Text Label 9075 2675 2    60   ~ 0
-5V
Wire Wire Line
	9075 2675 9575 2675
Wire Wire Line
	9575 2575 9075 2575
Wire Wire Line
	9575 2975 9325 2975
Wire Wire Line
	9325 2975 9325 2875
Wire Wire Line
	9075 2875 9575 2875
Connection ~ 9325 2875
Wire Wire Line
	9575 3175 9325 3175
Wire Wire Line
	9325 3175 9325 3075
Wire Wire Line
	9075 3075 9575 3075
Connection ~ 9325 3075
Wire Wire Line
	9575 3475 9075 3475
Wire Wire Line
	9575 3575 9075 3575
Wire Wire Line
	9575 3675 9075 3675
Wire Wire Line
	9575 3775 9075 3775
Wire Wire Line
	9575 3875 9075 3875
Wire Wire Line
	9575 3375 9075 3375
Wire Wire Line
	9575 3275 9075 3275
Wire Wire Line
	9575 2375 9175 2375
Wire Wire Line
	9575 2175 9175 2175
Wire Wire Line
	9575 2275 9000 2275
Text Label 9075 3275 2    60   ~ 0
RF-GND
Text Label 9075 3475 2    60   ~ 0
RF-GND
Text Label 9075 3575 2    60   ~ 0
RF-GND
Text Label 9075 3775 2    60   ~ 0
RF-GND
Text Label 9075 3675 2    60   ~ 0
REF
Text Label 9075 3875 2    60   ~ 0
AUX
Text Label 9075 3375 2    60   ~ 0
RF-OUT
Text Label 9075 2875 2    60   ~ 0
+12V
Text Label 9075 3075 2    60   ~ 0
-12V
Wire Wire Line
	7000 1625 7375 1625
Wire Wire Line
	7000 1725 7375 1725
Text Label 7375 1725 0    60   ~ 0
RX
Text Label 7375 1625 0    60   ~ 0
TX
Text Label 9000 2275 2    60   ~ 0
TX
Text Label 9175 2175 2    60   ~ 0
RX-PC
$Comp
L GND #PWR02
U 1 1 5B02DB50
P 9175 2375
F 0 "#PWR02" H 9175 2125 50  0001 C CNN
F 1 "GND" H 9175 2225 50  0000 C CNN
F 2 "" H 9175 2375 50  0001 C CNN
F 3 "" H 9175 2375 50  0001 C CNN
	1    9175 2375
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5B02DB92
P 9325 2775
F 0 "#PWR03" H 9325 2525 50  0001 C CNN
F 1 "GND" H 9325 2625 50  0000 C CNN
F 2 "" H 9325 2775 50  0001 C CNN
F 3 "" H 9325 2775 50  0001 C CNN
	1    9325 2775
	0    1    1    0   
$EndComp
Wire Wire Line
	9325 2775 9575 2775
$Comp
L PCIx136p J1
U 1 1 5B02DD7E
P 2400 3150
F 0 "J1" H 2400 4050 50  0000 C CNN
F 1 "PCIx136p" H 2400 2000 50  0000 C CNN
F 2 "Connectors:PCI-EXPRESS" H 2400 3150 50  0001 C CNN
F 3 "" H 2400 3150 50  0001 C CNN
	1    2400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2350 2600 3350
Connection ~ 2600 2450
Connection ~ 2600 2550
Connection ~ 2600 2650
Connection ~ 2600 2750
Connection ~ 2600 2850
Connection ~ 2600 2950
Connection ~ 2600 3050
Connection ~ 2600 3250
Wire Wire Line
	2600 3250 2600 3150
Connection ~ 2600 3150
Wire Wire Line
	2600 3450 2600 4050
Connection ~ 2600 3550
Connection ~ 2600 3650
Connection ~ 2600 3750
Connection ~ 2600 3850
Connection ~ 2600 3950
$Comp
L GND #PWR04
U 1 1 5B02DD95
P 2725 2650
F 0 "#PWR04" H 2725 2400 50  0001 C CNN
F 1 "GND" H 2725 2500 50  0000 C CNN
F 2 "" H 2725 2650 50  0001 C CNN
F 3 "" H 2725 2650 50  0001 C CNN
	1    2725 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2725 2650 2600 2650
Text Label 2800 3450 0    60   ~ 0
RF-GND
Wire Wire Line
	2600 3450 2800 3450
Text Label 1700 2650 2    60   ~ 0
3,3V
Wire Wire Line
	1700 2650 2200 2650
Text Label 1700 2750 2    60   ~ 0
+5V
Text Label 1700 2850 2    60   ~ 0
-5V
Wire Wire Line
	1700 2850 2200 2850
Wire Wire Line
	2200 2750 1700 2750
Wire Wire Line
	2200 3150 1950 3150
Wire Wire Line
	1950 3150 1950 3050
Wire Wire Line
	1700 3050 2200 3050
Connection ~ 1950 3050
Wire Wire Line
	2200 3350 1950 3350
Wire Wire Line
	1950 3350 1950 3250
Wire Wire Line
	1700 3250 2200 3250
Connection ~ 1950 3250
Wire Wire Line
	2200 3650 1700 3650
Wire Wire Line
	2200 3750 1700 3750
Wire Wire Line
	2200 3850 1700 3850
Wire Wire Line
	2200 3950 1700 3950
Wire Wire Line
	2200 4050 1700 4050
Wire Wire Line
	2200 3550 1700 3550
Wire Wire Line
	2200 3450 1700 3450
Wire Wire Line
	2200 2550 1800 2550
Wire Wire Line
	2200 2350 1800 2350
Wire Wire Line
	2200 2450 1625 2450
Text Label 1700 3450 2    60   ~ 0
RF-GND
Text Label 1700 3650 2    60   ~ 0
RF-GND
Text Label 1700 3750 2    60   ~ 0
RF-GND
Text Label 1700 3950 2    60   ~ 0
RF-GND
Text Label 1700 3850 2    60   ~ 0
REF
Text Label 1700 4050 2    60   ~ 0
AUX
Text Label 1700 3550 2    60   ~ 0
RF-IN
Text Label 1700 3050 2    60   ~ 0
+12V
Text Label 1700 3250 2    60   ~ 0
-12V
Text Label 1625 2450 2    60   ~ 0
RX
Text Label 1800 2350 2    60   ~ 0
RX-PC
$Comp
L GND #PWR05
U 1 1 5B02DDC1
P 1800 2550
F 0 "#PWR05" H 1800 2300 50  0001 C CNN
F 1 "GND" H 1800 2400 50  0000 C CNN
F 2 "" H 1800 2550 50  0001 C CNN
F 3 "" H 1800 2550 50  0001 C CNN
	1    1800 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 5B02DDC7
P 1950 2950
F 0 "#PWR06" H 1950 2700 50  0001 C CNN
F 1 "GND" H 1950 2800 50  0000 C CNN
F 2 "" H 1950 2950 50  0001 C CNN
F 3 "" H 1950 2950 50  0001 C CNN
	1    1950 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 2950 2200 2950
Wire Wire Line
	3750 1425 5050 1425
Wire Wire Line
	5050 4325 4875 4325
Wire Wire Line
	4875 4325 4875 4825
Wire Wire Line
	4875 4425 5050 4425
Wire Wire Line
	4875 4525 5050 4525
Connection ~ 4875 4425
Wire Wire Line
	4875 4625 5050 4625
Connection ~ 4875 4525
$Comp
L GND #PWR07
U 1 1 5B02E24C
P 4875 4825
F 0 "#PWR07" H 4875 4575 50  0001 C CNN
F 1 "GND" H 4875 4675 50  0000 C CNN
F 2 "" H 4875 4825 50  0001 C CNN
F 3 "" H 4875 4825 50  0001 C CNN
	1    4875 4825
	1    0    0    -1  
$EndComp
Connection ~ 4875 4625
Wire Wire Line
	4725 3925 5050 3925
Wire Wire Line
	4725 4125 5050 4125
Text Label 7375 2325 0    60   ~ 0
SWDIO
Text Label 7375 2425 0    60   ~ 0
SWCLK
$Comp
L Conn_01x01 J6
U 1 1 5B02E7B0
P 4025 2950
F 0 "J6" H 4025 3050 50  0000 C CNN
F 1 "Conn_01x01" H 4025 2850 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4025 2950 50  0001 C CNN
F 3 "" H 4025 2950 50  0001 C CNN
	1    4025 2950
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J5
U 1 1 5B02E7B6
P 4025 2750
F 0 "J5" H 4025 2850 50  0000 C CNN
F 1 "Conn_01x01" H 4025 2650 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4025 2750 50  0001 C CNN
F 3 "" H 4025 2750 50  0001 C CNN
	1    4025 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4225 2950 4550 2950
Wire Wire Line
	4225 2750 4550 2750
$Comp
L Conn_01x01 J3
U 1 1 5B02E84E
P 4025 2350
F 0 "J3" H 4025 2450 50  0000 C CNN
F 1 "Conn_01x01" H 4025 2250 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4025 2350 50  0001 C CNN
F 3 "" H 4025 2350 50  0001 C CNN
	1    4025 2350
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J4
U 1 1 5B02E854
P 4025 2550
F 0 "J4" H 4025 2650 50  0000 C CNN
F 1 "Conn_01x01" H 4025 2450 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4025 2550 50  0001 C CNN
F 3 "" H 4025 2550 50  0001 C CNN
	1    4025 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4225 2350 4550 2350
Wire Wire Line
	4225 2550 4550 2550
$Comp
L GND #PWR08
U 1 1 5B02E879
P 4550 2750
F 0 "#PWR08" H 4550 2500 50  0001 C CNN
F 1 "GND" H 4550 2600 50  0000 C CNN
F 2 "" H 4550 2750 50  0001 C CNN
F 3 "" H 4550 2750 50  0001 C CNN
	1    4550 2750
	0    -1   -1   0   
$EndComp
Text Label 3750 1425 2    60   ~ 0
VDD
Text Label 4550 2950 0    60   ~ 0
VDD
$Comp
L Conn_01x01 J2
U 1 1 5B02E92F
P 3725 2950
F 0 "J2" H 3725 3050 50  0000 C CNN
F 1 "Conn_01x01" H 3725 2850 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 3725 2950 50  0001 C CNN
F 3 "" H 3725 2950 50  0001 C CNN
	1    3725 2950
	1    0    0    -1  
$EndComp
Text Label 3525 2950 2    60   ~ 0
3,3V
Text Label 4550 2350 0    60   ~ 0
SWDIO
Text Label 4550 2550 0    60   ~ 0
SWCLK
$Comp
L C_Small C1
U 1 1 5B097648
P 3800 1525
F 0 "C1" V 3800 1675 50  0000 L CNN
F 1 "100nF" V 3725 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3800 1525 50  0001 C CNN
F 3 "" H 3800 1525 50  0001 C CNN
	1    3800 1525
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5B09772B
P 3975 1525
F 0 "C2" V 3975 1675 50  0000 L CNN
F 1 "100nF" V 3900 1275 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3975 1525 50  0001 C CNN
F 3 "" H 3975 1525 50  0001 C CNN
	1    3975 1525
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5B09783A
P 4150 1525
F 0 "C3" V 4150 1675 50  0000 L CNN
F 1 "100nF" V 4050 1275 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4150 1525 50  0001 C CNN
F 3 "" H 4150 1525 50  0001 C CNN
	1    4150 1525
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 5B097890
P 4400 1525
F 0 "C4" V 4400 1675 50  0000 L CNN
F 1 "100nF" V 4325 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4400 1525 50  0001 C CNN
F 3 "" H 4400 1525 50  0001 C CNN
	1    4400 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1625 3800 1825
Wire Wire Line
	3500 1825 4400 1825
Wire Wire Line
	3975 1825 3975 1625
Wire Wire Line
	4150 1825 4150 1625
Connection ~ 3975 1825
Wire Wire Line
	4400 1825 4400 1625
Connection ~ 4150 1825
Connection ~ 3800 1825
Text Label 4725 3925 2    60   ~ 0
VDD
$Comp
L GND #PWR010
U 1 1 5B09960C
P 7150 3125
F 0 "#PWR010" H 7150 2875 50  0001 C CNN
F 1 "GND" H 7150 2975 50  0000 C CNN
F 2 "" H 7150 3125 50  0001 C CNN
F 3 "" H 7150 3125 50  0001 C CNN
	1    7150 3125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 3125 7000 3125
$Comp
L GND #PWR011
U 1 1 5B09B023
P 3500 1825
F 0 "#PWR011" H 3500 1575 50  0001 C CNN
F 1 "GND" H 3500 1675 50  0000 C CNN
F 2 "" H 3500 1825 50  0001 C CNN
F 3 "" H 3500 1825 50  0001 C CNN
	1    3500 1825
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 5B09B8A8
P 4725 4125
F 0 "#PWR012" H 4725 3875 50  0001 C CNN
F 1 "GND" H 4725 3975 50  0000 C CNN
F 2 "" H 4725 4125 50  0001 C CNN
F 3 "" H 4725 4125 50  0001 C CNN
	1    4725 4125
	1    0    0    -1  
$EndComp
Connection ~ 4400 1425
Connection ~ 4150 1425
Connection ~ 3975 1425
Connection ~ 3800 1425
Wire Wire Line
	5050 1425 5050 1725
Connection ~ 5050 1625
Connection ~ 5050 1525
$Comp
L GND #PWR013
U 1 1 5B0A73B6
P 1900 6925
F 0 "#PWR013" H 1900 6675 50  0001 C CNN
F 1 "GND" H 1900 6775 50  0000 C CNN
F 2 "" H 1900 6925 50  0001 C CNN
F 3 "" H 1900 6925 50  0001 C CNN
	1    1900 6925
	1    0    0    -1  
$EndComp
Text Label 1900 6650 0    60   ~ 0
RF-GND
$Comp
L R_Small R1
U 1 1 5B0A7455
P 2125 6800
F 0 "R1" H 2155 6820 50  0000 L CNN
F 1 "0" H 2155 6760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2125 6800 50  0001 C CNN
F 3 "" H 2125 6800 50  0001 C CNN
	1    2125 6800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5B0A74C1
P 2500 6800
F 0 "R2" H 2530 6820 50  0000 L CNN
F 1 "0" H 2530 6760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2500 6800 50  0001 C CNN
F 3 "" H 2500 6800 50  0001 C CNN
	1    2500 6800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 5B0A753D
P 2900 6800
F 0 "R3" H 2930 6820 50  0000 L CNN
F 1 "0" H 2930 6760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2900 6800 50  0001 C CNN
F 3 "" H 2900 6800 50  0001 C CNN
	1    2900 6800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 5B0A75F1
P 3325 6800
F 0 "R4" H 3355 6820 50  0000 L CNN
F 1 "0" H 3355 6760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3325 6800 50  0001 C CNN
F 3 "" H 3325 6800 50  0001 C CNN
	1    3325 6800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 5B0A76CD
P 3850 6800
F 0 "R5" H 3880 6820 50  0000 L CNN
F 1 "0" H 3880 6760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3850 6800 50  0001 C CNN
F 3 "" H 3850 6800 50  0001 C CNN
	1    3850 6800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 5B0A76D3
P 4275 6800
F 0 "R6" H 4305 6820 50  0000 L CNN
F 1 "0" H 4305 6760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4275 6800 50  0001 C CNN
F 3 "" H 4275 6800 50  0001 C CNN
	1    4275 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6925 1900 6900
Wire Wire Line
	1900 6900 4275 6900
Connection ~ 2125 6900
Connection ~ 2500 6900
Connection ~ 2900 6900
Connection ~ 3325 6900
Connection ~ 3850 6900
Connection ~ 3850 6700
Connection ~ 3325 6700
Connection ~ 2900 6700
Connection ~ 2500 6700
Connection ~ 2125 6700
Wire Wire Line
	1900 6700 4275 6700
Wire Wire Line
	1900 6700 1900 6650
$Comp
L R_Small R7
U 1 1 5B0A9007
P 3850 5525
F 0 "R7" H 3880 5545 50  0000 L CNN
F 1 "?" H 3880 5485 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3850 5525 50  0001 C CNN
F 3 "" H 3850 5525 50  0001 C CNN
	1    3850 5525
	0    1    1    0   
$EndComp
$Comp
L R_Small R9
U 1 1 5B0A90A5
P 4775 5525
F 0 "R9" H 4805 5545 50  0000 L CNN
F 1 "?" H 4805 5485 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4775 5525 50  0001 C CNN
F 3 "" H 4775 5525 50  0001 C CNN
	1    4775 5525
	0    1    1    0   
$EndComp
$Comp
L R_Small R8
U 1 1 5B0A913E
P 4300 5925
F 0 "R8" H 4330 5945 50  0000 L CNN
F 1 "?" H 4330 5885 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4300 5925 50  0001 C CNN
F 3 "" H 4300 5925 50  0001 C CNN
	1    4300 5925
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5525 4675 5525
Wire Wire Line
	4300 5825 4300 5525
Connection ~ 4300 5525
Wire Wire Line
	3750 5525 3450 5525
Wire Wire Line
	4875 5525 5200 5525
Wire Wire Line
	4300 6025 4300 6250
Text Label 4300 6250 0    60   ~ 0
RF-GND
Text Label 3450 5525 0    60   ~ 0
RF-IN
Text Label 5200 5525 2    60   ~ 0
RF-OUT
Wire Wire Line
	7000 2625 7375 2625
Wire Wire Line
	7375 2625 7375 2425
Wire Wire Line
	7000 2525 7225 2525
Wire Wire Line
	7225 2525 7225 2325
Wire Wire Line
	7225 2325 7375 2325
$EndSCHEMATC
