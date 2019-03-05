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
LIBS:rev2badge-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED_ARGB D1
U 1 1 5AC25B8E
P 6450 5650
F 0 "D1" H 6450 6020 50  0000 C CNN
F 1 "LED_ARGB" H 6450 5300 50  0000 C CNN
F 2 "disobeyparts:ARGB-0606" H 6450 5600 50  0001 C CNN
F 3 "" H 6450 5600 50  0001 C CNN
	1    6450 5650
	1    0    0    -1  
$EndComp
$Comp
L LED_ARGB D3
U 1 1 5AC25C77
P 7000 5650
F 0 "D3" H 7000 6020 50  0000 C CNN
F 1 "LED_ARGB" H 7000 5300 50  0000 C CNN
F 2 "disobeyparts:ARGB-0606" H 7000 5600 50  0001 C CNN
F 3 "" H 7000 5600 50  0001 C CNN
	1    7000 5650
	1    0    0    -1  
$EndComp
$Comp
L LED_ARGB D4
U 1 1 5AC25CC7
P 7500 5650
F 0 "D4" H 7500 6020 50  0000 C CNN
F 1 "LED_ARGB" H 7500 5300 50  0000 C CNN
F 2 "disobeyparts:ARGB-0606" H 7500 5600 50  0001 C CNN
F 3 "" H 7500 5600 50  0001 C CNN
	1    7500 5650
	1    0    0    -1  
$EndComp
$Comp
L LED_ARGB D5
U 1 1 5AC25D09
P 8000 5650
F 0 "D5" H 8000 6020 50  0000 C CNN
F 1 "LED_ARGB" H 8000 5300 50  0000 C CNN
F 2 "disobeyparts:ARGB-0606" H 8000 5600 50  0001 C CNN
F 3 "" H 8000 5600 50  0001 C CNN
	1    8000 5650
	1    0    0    -1  
$EndComp
$Comp
L LED_ARGB D6
U 1 1 5AC25D2E
P 8500 5650
F 0 "D6" H 8500 6020 50  0000 C CNN
F 1 "LED_ARGB" H 8500 5300 50  0000 C CNN
F 2 "disobeyparts:ARGB-0606" H 8500 5600 50  0001 C CNN
F 3 "" H 8500 5600 50  0001 C CNN
	1    8500 5650
	1    0    0    -1  
$EndComp
$Comp
L LED_ARGB D7
U 1 1 5AC25D58
P 9050 5650
F 0 "D7" H 9050 6020 50  0000 C CNN
F 1 "LED_ARGB" H 9050 5300 50  0000 C CNN
F 2 "disobeyparts:ARGB-0606" H 9050 5600 50  0001 C CNN
F 3 "" H 9050 5600 50  0001 C CNN
	1    9050 5650
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG J1
U 1 1 5AC25DAC
P 8750 1950
F 0 "J1" H 8550 2400 50  0000 L CNN
F 1 "USB_OTG" H 8550 2300 50  0000 L CNN
F 2 "rpparts:MICROUSB" H 8900 1900 50  0001 C CNN
F 3 "" H 8900 1900 50  0001 C CNN
	1    8750 1950
	-1   0    0    -1  
$EndComp
$Comp
L AZ1117-3.3 U3
U 1 1 5AC261B6
P 7850 1750
F 0 "U3" H 7700 1875 50  0000 C CNN
F 1 "AZ1117-3.3" H 7850 1875 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 7850 2000 50  0001 C CIN
F 3 "" H 7850 1750 50  0001 C CNN
	1    7850 1750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5AC262B6
P 7850 2050
F 0 "#PWR01" H 7850 1800 50  0001 C CNN
F 1 "GND" H 7850 1900 50  0000 C CNN
F 2 "" H 7850 2050 50  0001 C CNN
F 3 "" H 7850 2050 50  0001 C CNN
	1    7850 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5AC262DC
P 8750 2350
F 0 "#PWR02" H 8750 2100 50  0001 C CNN
F 1 "GND" H 8750 2200 50  0000 C CNN
F 2 "" H 8750 2350 50  0001 C CNN
F 3 "" H 8750 2350 50  0001 C CNN
	1    8750 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5AC26302
P 8850 2350
F 0 "#PWR03" H 8850 2100 50  0001 C CNN
F 1 "GND" H 8850 2200 50  0000 C CNN
F 2 "" H 8850 2350 50  0001 C CNN
F 3 "" H 8850 2350 50  0001 C CNN
	1    8850 2350
	1    0    0    -1  
$EndComp
$Comp
L ESP32-WROOM U1
U 1 1 5AC265D3
P 2550 5400
F 0 "U1" H 1850 6650 60  0000 C CNN
F 1 "ESP32-WROOM" H 3050 6650 60  0000 C CNN
F 2 "ESP32-footprints-Lib:ESP32-WROOM" H 2900 6750 60  0001 C CNN
F 3 "" H 2100 5850 60  0001 C CNN
	1    2550 5400
	1    0    0    -1  
$EndComp
$Comp
L LED_Small_ALT D2
U 1 1 5AC356E8
P 4400 6250
F 0 "D2" H 4350 6375 50  0000 L CNN
F 1 "LED_Small_ALT" H 4225 6150 50  0000 L CNN
F 2 "LEDs:LED_1206_HandSoldering" V 4400 6250 50  0001 C CNN
F 3 "" V 4400 6250 50  0001 C CNN
	1    4400 6250
	0    -1   -1   0   
$EndComp
$Comp
L Speaker_Crystal LS1
U 1 1 5AC35837
P 4400 6900
F 0 "LS1" H 4425 7125 50  0000 R CNN
F 1 "Speaker_Crystal" H 4425 7050 50  0000 R CNN
F 2 "disobeyparts:Piezo-PS1240P02BT" H 4365 6850 50  0001 C CNN
F 3 "" H 4365 6850 50  0001 C CNN
	1    4400 6900
	1    0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 5AC35A21
P 9400 2650
F 0 "BT1" H 9500 2750 50  0000 L CNN
F 1 "Battery" H 9500 2650 50  0000 L CNN
F 2 "disobeyparts:AAAx2holder" V 9400 2710 50  0001 C CNN
F 3 "" V 9400 2710 50  0001 C CNN
	1    9400 2650
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x30 J2
U 1 1 5AC38255
P 10250 4450
F 0 "J2" H 10250 5950 50  0000 C CNN
F 1 "Conn_01x30" H 10250 2850 50  0000 C CNN
F 2 "disobeyparts:ER-CON30HB-1" H 10250 4450 50  0001 C CNN
F 3 "" H 10250 4450 50  0001 C CNN
	1    10250 4450
	1    0    0    -1  
$EndComp
NoConn ~ 10050 3050
NoConn ~ 10050 3150
NoConn ~ 10050 3250
NoConn ~ 10050 3350
NoConn ~ 10050 3450
NoConn ~ 10050 5950
NoConn ~ 10050 5850
NoConn ~ 10050 5750
NoConn ~ 10050 5650
NoConn ~ 10050 5550
$Comp
L GND #PWR04
U 1 1 5AC39651
P 9900 4850
F 0 "#PWR04" H 9900 4600 50  0001 C CNN
F 1 "GND" H 9900 4700 50  0000 C CNN
F 2 "" H 9900 4850 50  0001 C CNN
F 3 "" H 9900 4850 50  0001 C CNN
	1    9900 4850
	1    0    0    -1  
$EndComp
Text GLabel 9750 5350 0    60   Input ~ 0
SCL
Text GLabel 9750 5450 0    60   Input ~ 0
SDA
Text GLabel 9750 4350 0    60   Input ~ 0
LCDRST
$Comp
L GND #PWR05
U 1 1 5AC39976
P 10450 4450
F 0 "#PWR05" H 10450 4200 50  0001 C CNN
F 1 "GND" H 10450 4300 50  0000 C CNN
F 2 "" H 10450 4450 50  0001 C CNN
F 3 "" H 10450 4450 50  0001 C CNN
	1    10450 4450
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5AC39A04
P 9900 3400
F 0 "R4" V 9980 3400 50  0000 C CNN
F 1 "2k" V 9900 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9830 3400 50  0001 C CNN
F 3 "" H 9900 3400 50  0001 C CNN
	1    9900 3400
	1    0    0    -1  
$EndComp
Text GLabel 9750 3250 0    60   Input ~ 0
BACKLIGHT
Text GLabel 9650 3850 0    60   Input ~ 0
VDD
$Comp
L C C5
U 1 1 5AC39B68
P 9700 4000
F 0 "C5" H 9725 4100 50  0000 L CNN
F 1 "10u" H 9725 3900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9738 3850 50  0001 C CNN
F 3 "" H 9700 4000 50  0001 C CNN
	1    9700 4000
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5AC39BA1
P 9900 4000
F 0 "C6" H 9925 4100 50  0000 L CNN
F 1 "10u" H 9925 3900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9938 3850 50  0001 C CNN
F 3 "" H 9900 4000 50  0001 C CNN
	1    9900 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5AC39BDA
P 9800 4150
F 0 "#PWR06" H 9800 3900 50  0001 C CNN
F 1 "GND" H 9800 4000 50  0000 C CNN
F 2 "" H 9800 4150 50  0001 C CNN
F 3 "" H 9800 4150 50  0001 C CNN
	1    9800 4150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 5AC39C8C
P 9800 3850
F 0 "#PWR07" H 9800 3700 50  0001 C CNN
F 1 "+3.3V" H 9800 3990 50  0000 C CNN
F 2 "" H 9800 3850 50  0001 C CNN
F 3 "" H 9800 3850 50  0001 C CNN
	1    9800 3850
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J3
U 1 1 5AC3A1B6
P 6550 1100
F 0 "J3" H 6550 1370 50  0000 C CNN
F 1 "TEST_1P" H 6550 1300 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 6750 1100 50  0001 C CNN
F 3 "" H 6750 1100 50  0001 C CNN
	1    6550 1100
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J4
U 1 1 5AC3A22B
P 6550 1200
F 0 "J4" H 6550 1470 50  0000 C CNN
F 1 "TEST_1P" H 6550 1400 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 6750 1200 50  0001 C CNN
F 3 "" H 6750 1200 50  0001 C CNN
	1    6550 1200
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J5
U 1 1 5AC3A340
P 6550 1300
F 0 "J5" H 6550 1570 50  0000 C CNN
F 1 "TEST_1P" H 6550 1500 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 6750 1300 50  0001 C CNN
F 3 "" H 6750 1300 50  0001 C CNN
	1    6550 1300
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J6
U 1 1 5AC3A39D
P 6550 1400
F 0 "J6" H 6550 1670 50  0000 C CNN
F 1 "TEST_1P" H 6550 1600 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 6750 1400 50  0001 C CNN
F 3 "" H 6750 1400 50  0001 C CNN
	1    6550 1400
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J7
U 1 1 5AC3A3F3
P 6550 1500
F 0 "J7" H 6550 1770 50  0000 C CNN
F 1 "TEST_1P" H 6550 1700 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 6750 1500 50  0001 C CNN
F 3 "" H 6750 1500 50  0001 C CNN
	1    6550 1500
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J8
U 1 1 5AC3A450
P 6550 1600
F 0 "J8" H 6550 1870 50  0000 C CNN
F 1 "TEST_1P" H 6550 1800 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 6750 1600 50  0001 C CNN
F 3 "" H 6750 1600 50  0001 C CNN
	1    6550 1600
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 5AC3AE98
P 2250 2000
F 0 "C4" H 2275 2100 50  0000 L CNN
F 1 "10u" H 2275 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2288 1850 50  0001 C CNN
F 3 "" H 2250 2000 50  0001 C CNN
	1    2250 2000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5AC3AF42
P 2000 2000
F 0 "C3" H 2025 2100 50  0000 L CNN
F 1 "10u" H 2025 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2038 1850 50  0001 C CNN
F 3 "" H 2000 2000 50  0001 C CNN
	1    2000 2000
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5AC3AFAC
P 1750 2000
F 0 "C2" H 1775 2100 50  0000 L CNN
F 1 "10u" H 1775 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1788 1850 50  0001 C CNN
F 3 "" H 1750 2000 50  0001 C CNN
	1    1750 2000
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5AC3B017
P 1250 2000
F 0 "C1" H 1275 2100 50  0000 L CNN
F 1 "10u" H 1275 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1288 1850 50  0001 C CNN
F 3 "" H 1250 2000 50  0001 C CNN
	1    1250 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5AC3B0CC
P 1500 2150
F 0 "#PWR08" H 1500 1900 50  0001 C CNN
F 1 "GND" H 1500 2000 50  0000 C CNN
F 2 "" H 1500 2150 50  0001 C CNN
F 3 "" H 1500 2150 50  0001 C CNN
	1    1500 2150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 5AC3B2F3
P 1250 1650
F 0 "#PWR09" H 1250 1500 50  0001 C CNN
F 1 "+3.3V" H 1250 1790 50  0000 C CNN
F 2 "" H 1250 1650 50  0001 C CNN
F 3 "" H 1250 1650 50  0001 C CNN
	1    1250 1650
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5AC3C76A
P 6100 5850
F 0 "R3" V 6180 5850 50  0000 C CNN
F 1 "330R" V 6100 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6030 5850 50  0001 C CNN
F 3 "" H 6100 5850 50  0001 C CNN
	1    6100 5850
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5AC3C7E9
P 6100 5650
F 0 "R2" V 6180 5650 50  0000 C CNN
F 1 "330R" V 6100 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6030 5650 50  0001 C CNN
F 3 "" H 6100 5650 50  0001 C CNN
	1    6100 5650
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5AC3C864
P 6100 5450
F 0 "R1" V 6180 5450 50  0000 C CNN
F 1 "330R" V 6100 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6030 5450 50  0001 C CNN
F 3 "" H 6100 5450 50  0001 C CNN
	1    6100 5450
	0    1    1    0   
$EndComp
$Comp
L SAMD20G15A-MU U2
U 1 1 5AC47982
P 4400 2350
F 0 "U2" H 2750 4000 50  0000 C CNN
F 1 "SAMD21G15A-MU" H 5850 700 50  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-48-1EP_7x7mm_Pitch0.5mm" H 4400 1200 50  0001 C CIN
F 3 "" H 4400 2600 50  0001 C CNN
	1    4400 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5ADA2233
P 4300 4250
F 0 "#PWR010" H 4300 4000 50  0001 C CNN
F 1 "GND" H 4300 4100 50  0000 C CNN
F 2 "" H 4300 4250 50  0001 C CNN
F 3 "" H 4300 4250 50  0001 C CNN
	1    4300 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5ADA2740
P 3450 6150
F 0 "#PWR011" H 3450 5900 50  0001 C CNN
F 1 "GND" H 3450 6000 50  0000 C CNN
F 2 "" H 3450 6150 50  0001 C CNN
F 3 "" H 3450 6150 50  0001 C CNN
	1    3450 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5ADA2814
P 2100 6500
F 0 "#PWR012" H 2100 6250 50  0001 C CNN
F 1 "GND" H 2100 6350 50  0000 C CNN
F 2 "" H 2100 6500 50  0001 C CNN
F 3 "" H 2100 6500 50  0001 C CNN
	1    2100 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5ADA2D33
P 4700 6450
F 0 "#PWR013" H 4700 6200 50  0001 C CNN
F 1 "GND" H 4700 6300 50  0000 C CNN
F 2 "" H 4700 6450 50  0001 C CNN
F 3 "" H 4700 6450 50  0001 C CNN
	1    4700 6450
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5ADA2EF5
P 4400 6000
F 0 "R5" V 4480 6000 50  0000 C CNN
F 1 "1k" V 4400 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4330 6000 50  0001 C CNN
F 3 "" H 4400 6000 50  0001 C CNN
	1    4400 6000
	-1   0    0    1   
$EndComp
Text GLabel 7400 1750 0    60   Input ~ 0
3v3
$Comp
L +3.3V #PWR014
U 1 1 5ADA3B8D
P 1600 4600
F 0 "#PWR014" H 1600 4450 50  0001 C CNN
F 1 "+3.3V" H 1600 4740 50  0000 C CNN
F 2 "" H 1600 4600 50  0001 C CNN
F 3 "" H 1600 4600 50  0001 C CNN
	1    1600 4600
	1    0    0    -1  
$EndComp
Text GLabel 6400 1700 2    60   Input ~ 0
SDA
Text GLabel 6400 1800 2    60   Input ~ 0
SCL
Text GLabel 6400 1900 2    60   Input ~ 0
LCDRST
$Comp
L +3.3V #PWR015
U 1 1 5ADA6F7C
P 7500 1750
F 0 "#PWR015" H 7500 1600 50  0001 C CNN
F 1 "+3.3V" H 7500 1890 50  0000 C CNN
F 2 "" H 7500 1750 50  0001 C CNN
F 3 "" H 7500 1750 50  0001 C CNN
	1    7500 1750
	1    0    0    -1  
$EndComp
Text GLabel 6350 1000 2    60   Input ~ 0
TXD
Text GLabel 6350 900  2    60   Input ~ 0
RXD
Text GLabel 3550 4850 2    60   Input ~ 0
TXD
Text GLabel 3550 4950 2    60   Input ~ 0
RXD
Text GLabel 6400 3500 2    60   Input ~ 0
ESPRST
Text GLabel 1350 4900 0    60   Input ~ 0
ESPRST
Text GLabel 6400 3600 2    60   Input ~ 0
ESPBL
Text GLabel 3650 5850 2    60   Input ~ 0
ESPBL
$Comp
L GND #PWR016
U 1 1 5ADAEBEB
P 9400 2850
F 0 "#PWR016" H 9400 2600 50  0001 C CNN
F 1 "GND" H 9400 2700 50  0000 C CNN
F 2 "" H 9400 2850 50  0001 C CNN
F 3 "" H 9400 2850 50  0001 C CNN
	1    9400 2850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR017
U 1 1 5ADAEF3B
P 4050 6650
F 0 "#PWR017" H 4050 6500 50  0001 C CNN
F 1 "+3.3V" H 4050 6790 50  0000 C CNN
F 2 "" H 4050 6650 50  0001 C CNN
F 3 "" H 4050 6650 50  0001 C CNN
	1    4050 6650
	1    0    0    -1  
$EndComp
Text GLabel 3550 4750 2    60   Input ~ 0
SCL
Text GLabel 3550 4650 2    60   Input ~ 0
SDA
Text GLabel 3850 6900 0    60   Input ~ 0
SPEAKER
$Comp
L GND #PWR018
U 1 1 5ADB0497
P 4200 7000
F 0 "#PWR018" H 4200 6750 50  0001 C CNN
F 1 "GND" H 4200 6850 50  0000 C CNN
F 2 "" H 4200 7000 50  0001 C CNN
F 3 "" H 4200 7000 50  0001 C CNN
	1    4200 7000
	1    0    0    -1  
$EndComp
Text GLabel 4400 5850 1    60   Input ~ 0
IRLED
Text GLabel 5150 6050 1    60   Input ~ 0
PHOTO
$Comp
L AAT1217ICA-3.3-T1 U5
U 1 1 5ADB4531
P 10100 1950
F 0 "U5" H 10100 2200 60  0000 C CNN
F 1 "AAT1217ICA-3.3-T1" H 10150 1600 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23-6" H 10100 1950 60  0001 C CNN
F 3 "" H 10100 1950 60  0001 C CNN
	1    10100 1950
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 5ADB464F
P 9800 1450
F 0 "L1" V 9750 1450 50  0000 C CNN
F 1 "L" V 9875 1450 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 9800 1450 50  0001 C CNN
F 3 "" H 9800 1450 50  0001 C CNN
	1    9800 1450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR019
U 1 1 5ADB4889
P 9550 1950
F 0 "#PWR019" H 9550 1700 50  0001 C CNN
F 1 "GND" H 9550 1800 50  0000 C CNN
F 2 "" H 9550 1950 50  0001 C CNN
F 3 "" H 9550 1950 50  0001 C CNN
	1    9550 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR020
U 1 1 5ADB49D0
P 10950 1950
F 0 "#PWR020" H 10950 1800 50  0001 C CNN
F 1 "+3.3V" H 10950 2090 50  0000 C CNN
F 2 "" H 10950 1950 50  0001 C CNN
F 3 "" H 10950 1950 50  0001 C CNN
	1    10950 1950
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5ADB4B3F
P 10800 1950
F 0 "R9" V 10880 1950 50  0000 C CNN
F 1 "4.7k" V 10800 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10730 1950 50  0001 C CNN
F 3 "" H 10800 1950 50  0001 C CNN
	1    10800 1950
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5ADB4DC9
P 10950 2100
F 0 "C9" H 10975 2200 50  0000 L CNN
F 1 "10u" H 10975 2000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10988 1950 50  0001 C CNN
F 3 "" H 10950 2100 50  0001 C CNN
	1    10950 2100
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5ADB4E4A
P 9550 1800
F 0 "C8" H 9575 1900 50  0000 L CNN
F 1 "10u" H 9575 1700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9588 1650 50  0001 C CNN
F 3 "" H 9550 1800 50  0001 C CNN
	1    9550 1800
	1    0    0    -1  
$EndComp
NoConn ~ 9650 2100
$Comp
L Conn_01x06 J10
U 1 1 5ADC423A
P 800 6050
F 0 "J10" H 800 6350 50  0000 C CNN
F 1 "Conn_01x06" H 800 5650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 800 6050 50  0001 C CNN
F 3 "" H 800 6050 50  0001 C CNN
	1    800  6050
	-1   0    0    -1  
$EndComp
$Comp
L Conn_02x02_Counter_Clockwise J9
U 1 1 5ADC53D8
P 10750 5000
F 0 "J9" H 10800 5100 50  0000 C CNN
F 1 "Conn_02x02_Counter_Clockwise" H 10800 4800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 10750 5000 50  0001 C CNN
F 3 "" H 10750 5000 50  0001 C CNN
	1    10750 5000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR021
U 1 1 5ADF8D5D
P 10950 2300
F 0 "#PWR021" H 10950 2050 50  0001 C CNN
F 1 "GND" H 10950 2150 50  0000 C CNN
F 2 "" H 10950 2300 50  0001 C CNN
F 3 "" H 10950 2300 50  0001 C CNN
	1    10950 2300
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x05 J11
U 1 1 5AE08B10
P 6350 4400
F 0 "J11" H 6350 4700 50  0000 C CNN
F 1 "Conn_01x05" H 6350 4100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 6350 4400 50  0001 C CNN
F 3 "" H 6350 4400 50  0001 C CNN
	1    6350 4400
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR022
U 1 1 5AE0927B
P 6550 4150
F 0 "#PWR022" H 6550 4000 50  0001 C CNN
F 1 "+3V3" H 6550 4290 50  0000 C CNN
F 2 "" H 6550 4150 50  0001 C CNN
F 3 "" H 6550 4150 50  0001 C CNN
	1    6550 4150
	1    0    0    -1  
$EndComp
Text GLabel 5750 4200 0    60   Input ~ 0
MCURST
Text GLabel 2550 900  0    60   Input ~ 0
MCURST
Text GLabel 9600 4950 0    60   Input ~ 0
VDD
$Comp
L R R8
U 1 1 5BABA150
P 9650 5100
F 0 "R8" V 9730 5100 50  0000 C CNN
F 1 "4.7k" V 9650 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9580 5100 50  0001 C CNN
F 3 "" H 9650 5100 50  0001 C CNN
	1    9650 5100
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5BABA1D1
P 9800 5100
F 0 "R10" V 9880 5100 50  0000 C CNN
F 1 "4.7k" V 9800 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9730 5100 50  0001 C CNN
F 3 "" H 9800 5100 50  0001 C CNN
	1    9800 5100
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5BABB343
P 3900 6750
F 0 "R6" V 3980 6750 50  0000 C CNN
F 1 "100k" V 3900 6750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3830 6750 50  0001 C CNN
F 3 "" H 3900 6750 50  0001 C CNN
	1    3900 6750
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5BABB3C4
P 3950 7050
F 0 "R7" V 4030 7050 50  0000 C CNN
F 1 "100k" V 3950 7050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3880 7050 50  0001 C CNN
F 3 "" H 3950 7050 50  0001 C CNN
	1    3950 7050
	1    0    0    -1  
$EndComp
$Comp
L TSMP58000 U4
U 1 1 5BABD5F7
P 5450 7050
F 0 "U4" H 5050 7350 50  0000 L CNN
F 1 "TSMP58000" H 5050 6750 50  0000 L CNN
F 2 "Opto-Devices:IRReceiver_Vishay_MINICAST-3pin" H 5400 6675 50  0001 C CNN
F 3 "" H 6100 7350 50  0001 C CNN
	1    5450 7050
	0    -1   -1   0   
$EndComp
Text GLabel 4950 6050 1    60   Input ~ 0
PHOTOPOW
$Comp
L SW_Push SW2
U 1 1 5BABF78B
P 6700 2400
F 0 "SW2" H 6750 2500 50  0000 L CNN
F 1 "SW_Push" H 6700 2340 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_FSMSM" H 6700 2600 50  0001 C CNN
F 3 "" H 6700 2600 50  0001 C CNN
	1    6700 2400
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5BABF8EA
P 5650 4400
F 0 "SW1" H 5700 4500 50  0000 L CNN
F 1 "SW_Push" H 5650 4340 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_FSMSM" H 5650 4600 50  0001 C CNN
F 3 "" H 5650 4600 50  0001 C CNN
	1    5650 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5BAC073A
P 7000 2400
F 0 "#PWR023" H 7000 2150 50  0001 C CNN
F 1 "GND" H 7000 2250 50  0000 C CNN
F 2 "" H 7000 2400 50  0001 C CNN
F 3 "" H 7000 2400 50  0001 C CNN
	1    7000 2400
	0    -1   -1   0   
$EndComp
NoConn ~ 8450 2150
NoConn ~ 2550 1600
NoConn ~ 1600 5000
NoConn ~ 1600 5100
NoConn ~ 1600 5200
NoConn ~ 1600 5400
NoConn ~ 1600 5300
NoConn ~ 3450 5750
NoConn ~ 3450 5650
NoConn ~ 3450 5150
NoConn ~ 2200 6450
NoConn ~ 2300 6450
NoConn ~ 2400 6450
NoConn ~ 2500 6450
NoConn ~ 2600 6450
NoConn ~ 2700 6450
NoConn ~ 2800 6450
NoConn ~ 2900 6450
NoConn ~ 3000 6450
$Comp
L R R12
U 1 1 5BB78238
P 900 850
F 0 "R12" V 980 850 50  0000 C CNN
F 1 "100k" V 900 850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 830 850 50  0001 C CNN
F 3 "" H 900 850 50  0001 C CNN
	1    900  850 
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5BB782B3
P 900 1150
F 0 "R13" V 980 1150 50  0000 C CNN
F 1 "100k" V 900 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 830 1150 50  0001 C CNN
F 3 "" H 900 1150 50  0001 C CNN
	1    900  1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5BB783C7
P 900 1300
F 0 "#PWR024" H 900 1050 50  0001 C CNN
F 1 "GND" H 900 1150 50  0000 C CNN
F 2 "" H 900 1300 50  0001 C CNN
F 3 "" H 900 1300 50  0001 C CNN
	1    900  1300
	1    0    0    -1  
$EndComp
Text GLabel 9250 1350 0    60   Input ~ 0
BAT+
Text GLabel 800  700  0    60   Input ~ 0
BAT+
NoConn ~ 1600 5500
$Comp
L MCP6001 U6
U 1 1 5BC21A42
P 1450 3000
F 0 "U6" H 1450 3200 50  0000 L CNN
F 1 "MCP6001" H 1450 2800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 1450 3000 50  0001 C CNN
F 3 "" H 1450 3200 50  0001 C CNN
	1    1450 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5BC21B8A
P 1400 3300
F 0 "#PWR025" H 1400 3050 50  0001 C CNN
F 1 "GND" H 1400 3150 50  0000 C CNN
F 2 "" H 1400 3300 50  0001 C CNN
F 3 "" H 1400 3300 50  0001 C CNN
	1    1400 3300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR026
U 1 1 5BC21C2F
P 1400 2700
F 0 "#PWR026" H 1400 2550 50  0001 C CNN
F 1 "+3.3V" H 1400 2840 50  0000 C CNN
F 2 "" H 1400 2700 50  0001 C CNN
F 3 "" H 1400 2700 50  0001 C CNN
	1    1400 2700
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5BC221D4
P 1250 3600
F 0 "R16" V 1330 3600 50  0000 C CNN
F 1 "2k" V 1250 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1180 3600 50  0001 C CNN
F 3 "" H 1250 3600 50  0001 C CNN
	1    1250 3600
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 5BC22273
P 1000 3450
F 0 "R14" V 1080 3450 50  0000 C CNN
F 1 "330R" V 1000 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 930 3450 50  0001 C CNN
F 3 "" H 1000 3450 50  0001 C CNN
	1    1000 3450
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5BC22322
P 1200 3300
F 0 "R15" V 1280 3300 50  0000 C CNN
F 1 "100k" V 1200 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1130 3300 50  0001 C CNN
F 3 "" H 1200 3300 50  0001 C CNN
	1    1200 3300
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5BC223A9
P 800 3300
F 0 "R11" V 880 3300 50  0000 C CNN
F 1 "100k" V 800 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 730 3300 50  0001 C CNN
F 3 "" H 800 3300 50  0001 C CNN
	1    800  3300
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR027
U 1 1 5BC2245F
P 600 3300
F 0 "#PWR027" H 600 3150 50  0001 C CNN
F 1 "+3.3V" H 600 3440 50  0000 C CNN
F 2 "" H 600 3300 50  0001 C CNN
F 3 "" H 600 3300 50  0001 C CNN
	1    600  3300
	1    0    0    -1  
$EndComp
Text GLabel 1050 2900 0    60   Input ~ 0
SPEAKER
Text GLabel 1850 3000 2    60   Input ~ 0
SPEAKER-AMP
Text GLabel 2100 1500 1    60   Input ~ 0
SPEAKER
Text GLabel 1350 5600 0    60   Input ~ 0
INT
Text GLabel 2450 1750 3    60   Input ~ 0
INT
NoConn ~ 3450 5950
$Comp
L C C7
U 1 1 5BC36603
P 8150 1950
F 0 "C7" H 8175 2050 50  0000 L CNN
F 1 "10u" H 8175 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8188 1800 50  0001 C CNN
F 3 "" H 8150 1950 50  0001 C CNN
	1    8150 1950
	1    0    0    -1  
$EndComp
NoConn ~ 3450 5550
NoConn ~ 3450 5450
Text GLabel 3550 5250 2    60   Input ~ 0
IRLED
Text GLabel 3550 5050 2    60   Input ~ 0
PHOTOPOW
Text GLabel 3550 5350 2    60   Input ~ 0
PHOTO
Wire Wire Line
	8450 1750 8150 1750
Wire Wire Line
	10050 4450 10050 5250
Connection ~ 10050 4550
Connection ~ 10050 4650
Connection ~ 10050 4750
Connection ~ 10050 4850
Connection ~ 10050 4950
Connection ~ 10050 5050
Connection ~ 10050 5150
Wire Wire Line
	9900 4850 10050 4850
Wire Wire Line
	10450 4250 10050 4250
Wire Wire Line
	10450 3650 10450 4450
Wire Wire Line
	10050 4450 10650 4450
Connection ~ 10050 4450
Connection ~ 10050 4050
Wire Wire Line
	10050 3950 10050 4050
Wire Wire Line
	10050 4050 10450 4050
Connection ~ 10450 4250
Wire Wire Line
	10050 3650 10450 3650
Connection ~ 10450 4050
Wire Wire Line
	10050 3750 10450 3750
Connection ~ 10450 3750
Wire Wire Line
	9750 5350 10750 5350
Wire Wire Line
	10050 4350 9750 4350
Connection ~ 10450 4450
Wire Wire Line
	10050 3550 9900 3550
Wire Wire Line
	9900 3250 9750 3250
Wire Wire Line
	9650 3850 10050 3850
Wire Wire Line
	10000 4150 10750 4150
Wire Wire Line
	10000 4150 10000 3850
Connection ~ 10000 3850
Wire Wire Line
	9700 4150 9900 4150
Connection ~ 9800 4150
Connection ~ 9700 3850
Connection ~ 9800 3850
Connection ~ 9900 3850
Wire Wire Line
	6250 1100 6550 1100
Wire Wire Line
	6250 1200 6550 1200
Wire Wire Line
	6250 1300 6550 1300
Wire Wire Line
	6250 1400 6550 1400
Wire Wire Line
	6250 1500 6550 1500
Wire Wire Line
	6250 1600 6550 1600
Wire Wire Line
	1250 2150 2250 2150
Connection ~ 1750 2150
Connection ~ 2000 2150
Connection ~ 1500 2150
Wire Wire Line
	1750 600  1750 1850
Wire Wire Line
	2250 1650 2250 1850
Wire Wire Line
	1250 1650 2250 1650
Connection ~ 1750 1650
Wire Wire Line
	1250 1650 1250 1850
Connection ~ 1250 1650
Connection ~ 2250 1850
Wire Wire Line
	6250 5850 8850 5850
Wire Wire Line
	8850 5750 8850 5650
Wire Wire Line
	6250 5750 8850 5750
Wire Wire Line
	6250 5750 6250 5650
Wire Wire Line
	6800 5650 6800 5750
Connection ~ 6800 5750
Connection ~ 6800 5850
Connection ~ 7300 5850
Connection ~ 7800 5850
Connection ~ 8300 5850
Wire Wire Line
	8300 5650 8300 5750
Connection ~ 8300 5750
Wire Wire Line
	7800 5650 7800 5750
Connection ~ 7800 5750
Wire Wire Line
	7300 5650 7300 5750
Connection ~ 7300 5750
Wire Wire Line
	6250 5450 8850 5450
Connection ~ 6800 5450
Connection ~ 7300 5450
Connection ~ 7800 5450
Connection ~ 8300 5450
Wire Wire Line
	3800 600  1750 600 
Wire Wire Line
	3800 600  3800 500 
Wire Wire Line
	3800 500  4650 500 
Wire Wire Line
	4650 500  4650 600 
Wire Wire Line
	4200 600  4200 500 
Connection ~ 4200 500 
Wire Wire Line
	4300 600  4300 500 
Connection ~ 4300 500 
Connection ~ 3800 600 
Wire Wire Line
	2000 1850 2000 550 
Wire Wire Line
	2000 550  4000 550 
Wire Wire Line
	4000 550  4000 600 
Wire Wire Line
	4650 4100 4650 4400
Wire Wire Line
	4100 4250 4650 4250
Wire Wire Line
	4100 4250 4100 4100
Connection ~ 4300 4250
Wire Wire Line
	4200 4100 4200 4250
Connection ~ 4200 4250
Wire Wire Line
	4300 4100 4300 4250
Wire Wire Line
	3450 6050 3450 6150
Wire Wire Line
	2100 6500 2100 6450
Wire Wire Line
	2100 6450 1600 6450
Wire Wire Line
	1600 6450 1600 6100
Connection ~ 2100 6450
Wire Wire Line
	4400 6450 5650 6450
Wire Wire Line
	4400 6450 4400 6350
Connection ~ 4700 6450
Wire Wire Line
	7400 1750 7550 1750
Wire Wire Line
	1600 4800 1600 4600
Wire Wire Line
	6250 3300 8350 3300
Wire Wire Line
	8350 3300 8350 2050
Wire Wire Line
	8350 2050 8450 2050
Wire Wire Line
	8450 1950 8250 1950
Wire Wire Line
	8250 1950 8250 3400
Wire Wire Line
	8250 3400 6250 3400
Wire Wire Line
	6250 1700 6400 1700
Wire Wire Line
	6400 1800 6250 1800
Wire Wire Line
	6400 1900 6250 1900
Wire Wire Line
	6250 2000 7500 2000
Wire Wire Line
	7500 2000 7500 3150
Wire Wire Line
	7500 3150 9900 3150
Wire Wire Line
	9900 3150 9900 3250
Connection ~ 9900 3250
Connection ~ 7500 1750
Wire Wire Line
	6250 900  6350 900 
Wire Wire Line
	6350 1000 6250 1000
Wire Wire Line
	3450 4950 3550 4950
Wire Wire Line
	3450 4850 3550 4850
Wire Wire Line
	3450 5850 3650 5850
Wire Wire Line
	1350 4900 1600 4900
Wire Wire Line
	6400 3500 6250 3500
Wire Wire Line
	6400 3600 6250 3600
Wire Wire Line
	6250 3200 6750 3200
Wire Wire Line
	6750 3200 6750 5200
Wire Wire Line
	6750 5200 7200 5200
Wire Wire Line
	7200 5200 7200 5650
Wire Wire Line
	6250 3100 6850 3100
Wire Wire Line
	6850 3100 6850 5100
Wire Wire Line
	6850 5100 8700 5100
Wire Wire Line
	8700 5100 8700 5650
Wire Wire Line
	7700 5650 7700 5000
Wire Wire Line
	7700 5000 6900 5000
Wire Wire Line
	6900 5000 6900 3000
Wire Wire Line
	6900 3000 6250 3000
Wire Wire Line
	6250 2900 6950 2900
Wire Wire Line
	6950 2900 6950 4900
Wire Wire Line
	6950 4900 8200 4900
Wire Wire Line
	8200 4900 8200 5650
Wire Wire Line
	6250 2800 7000 2800
Wire Wire Line
	7000 2800 7000 4800
Wire Wire Line
	7000 4800 9250 4800
Wire Wire Line
	9250 4800 9250 5650
Wire Wire Line
	6650 5650 6650 2700
Wire Wire Line
	6650 2700 6250 2700
Connection ~ 6250 5650
Wire Wire Line
	5950 5450 5950 4650
Wire Wire Line
	5950 4650 7100 4650
Wire Wire Line
	7100 4650 7100 2600
Wire Wire Line
	7100 2600 6250 2600
Wire Wire Line
	5950 5650 5900 5650
Wire Wire Line
	5900 5650 5900 4600
Wire Wire Line
	5900 4600 7150 4600
Wire Wire Line
	7150 4600 7150 2500
Wire Wire Line
	7150 2500 6250 2500
Wire Wire Line
	7200 2100 7200 4550
Wire Wire Line
	7200 4550 5850 4550
Wire Wire Line
	5850 4550 5850 5850
Wire Wire Line
	5850 5850 5950 5850
Wire Wire Line
	3550 4650 3450 4650
Wire Wire Line
	3550 4750 3450 4750
Wire Wire Line
	2100 1500 2550 1500
Wire Wire Line
	9650 1800 9650 1450
Wire Wire Line
	9950 1450 10650 1450
Wire Wire Line
	10650 1450 10650 1800
Wire Wire Line
	9650 1950 9550 1950
Wire Wire Line
	10950 1950 10650 1950
Wire Wire Line
	10650 1800 10800 1800
Wire Wire Line
	10800 2100 10650 2100
Connection ~ 9550 1950
Wire Wire Line
	9550 1650 9550 1350
Wire Wire Line
	9250 1350 10050 1350
Wire Wire Line
	10050 1350 10050 1450
Connection ~ 10050 1450
Wire Wire Line
	9400 1350 9400 2450
Connection ~ 9550 1350
Wire Wire Line
	1000 5850 1000 4800
Wire Wire Line
	1000 4800 1600 4800
Wire Wire Line
	1000 6350 1600 6350
Connection ~ 1600 6350
Wire Wire Line
	1600 5800 1450 5800
Wire Wire Line
	1450 5800 1450 6250
Wire Wire Line
	1450 6250 1000 6250
Wire Wire Line
	1000 6150 1400 6150
Wire Wire Line
	1400 6150 1400 5700
Wire Wire Line
	1400 5700 1600 5700
Wire Wire Line
	1350 6050 1000 6050
Wire Wire Line
	1000 5950 1300 5950
Wire Wire Line
	10750 4150 10750 4800
Connection ~ 10050 4150
Wire Wire Line
	10650 4450 10650 4800
Connection ~ 10050 5450
Connection ~ 10050 5350
Wire Wire Line
	10750 5350 10750 5300
Wire Wire Line
	9750 5450 10650 5450
Wire Wire Line
	10650 5450 10650 5300
Connection ~ 10650 1800
Connection ~ 10950 1950
Wire Wire Line
	10950 2300 10950 2250
Wire Wire Line
	6250 2100 7200 2100
Wire Wire Line
	6250 3800 6250 4200
Wire Wire Line
	6350 4200 6350 3700
Wire Wire Line
	6350 3700 6250 3700
Wire Wire Line
	6450 4200 6450 4100
Wire Wire Line
	6450 4100 4650 4100
Connection ~ 4650 4100
Wire Wire Line
	6550 4150 6550 4200
Wire Wire Line
	5750 4200 6150 4200
Wire Wire Line
	9600 4950 9800 4950
Connection ~ 9650 4950
Wire Wire Line
	9800 5250 9950 5250
Wire Wire Line
	9950 5250 9950 5450
Connection ~ 9950 5450
Wire Wire Line
	9650 5250 9750 5250
Wire Wire Line
	9750 5250 9750 5300
Wire Wire Line
	9750 5300 9850 5300
Wire Wire Line
	9850 5300 9850 5350
Connection ~ 9850 5350
Wire Wire Line
	3900 6600 4000 6600
Wire Wire Line
	4000 6600 4000 6650
Wire Wire Line
	4000 6650 4050 6650
Wire Wire Line
	3850 6900 4200 6900
Connection ~ 3900 6900
Connection ~ 3950 6900
Wire Wire Line
	4200 7000 4100 7000
Wire Wire Line
	4100 7000 4100 7200
Wire Wire Line
	4100 7200 3950 7200
Wire Wire Line
	2550 1400 2350 1400
Wire Wire Line
	5650 6450 5650 6650
Wire Wire Line
	5450 6650 5450 6050
Wire Wire Line
	5450 6050 5150 6050
Wire Wire Line
	4950 6050 4950 6200
Wire Wire Line
	4950 6200 5250 6200
Wire Wire Line
	5250 6200 5250 6650
Wire Wire Line
	6250 2400 6500 2400
Wire Wire Line
	5850 4400 5850 4200
Connection ~ 5850 4200
Wire Wire Line
	4650 4400 5450 4400
Connection ~ 4650 4250
Wire Wire Line
	7000 2400 6900 2400
Connection ~ 9400 1350
Wire Wire Line
	800  700  900  700 
Wire Wire Line
	900  1000 2350 1000
Wire Wire Line
	2350 1000 2350 1300
Wire Wire Line
	2350 1300 2550 1300
Connection ~ 4200 7000
Wire Wire Line
	1300 5950 1300 5900
Wire Wire Line
	1300 5900 1600 5900
Wire Wire Line
	1600 6000 1350 6000
Wire Wire Line
	1350 6000 1350 6050
Wire Wire Line
	1400 2700 1350 2700
Wire Wire Line
	1400 3300 1350 3300
Wire Wire Line
	1750 2350 1750 3600
Wire Wire Line
	1750 3600 1400 3600
Wire Wire Line
	600  3300 650  3300
Wire Wire Line
	950  3300 1050 3300
Connection ~ 1000 3300
Connection ~ 1350 3300
Wire Wire Line
	850  3600 1100 3600
Wire Wire Line
	850  2150 850  3600
Wire Wire Line
	850  3100 1150 3100
Connection ~ 1000 3600
Wire Wire Line
	1750 3000 1850 3000
Wire Wire Line
	1150 2900 1050 2900
Wire Wire Line
	2350 1400 2350 2600
Wire Wire Line
	2350 2600 2050 2600
Connection ~ 1750 3000
Wire Wire Line
	1100 2500 2050 2500
Wire Wire Line
	1100 2500 1100 2900
Connection ~ 1100 2900
Wire Wire Line
	1350 5600 1600 5600
Wire Wire Line
	2550 1700 2450 1700
Wire Wire Line
	2450 1700 2450 1750
Wire Wire Line
	7850 2050 8050 2050
Wire Wire Line
	8050 2050 8050 2100
Wire Wire Line
	8050 2100 8150 2100
Wire Wire Line
	8150 1750 8150 1800
Connection ~ 8150 1750
Connection ~ 7850 2050
Connection ~ 1600 4800
Wire Wire Line
	3450 5050 3550 5050
Wire Wire Line
	3550 5350 3450 5350
Wire Wire Line
	3550 5250 3450 5250
Wire Wire Line
	2550 1200 1050 1200
Wire Wire Line
	1050 1200 1050 2150
Wire Wire Line
	1050 2150 850  2150
Connection ~ 850  3100
Wire Wire Line
	2050 2500 2050 2600
Wire Wire Line
	1750 2350 1150 2350
Wire Wire Line
	1150 2350 1150 1100
Wire Wire Line
	1150 1100 2550 1100
$EndSCHEMATC
