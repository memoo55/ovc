EESchema Schematic File Version 2
LIBS:isolators
LIBS:DCDC_Converters
LIBS:voltage_translators
LIBS:conn
LIBS:device
LIBS:connectors
LIBS:cameras
LIBS:IMU
LIBS:power
LIBS:transistors
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
LIBS:HarleyTandem-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L 74AVCH8T245-1EP U1
U 1 1 572C1CFF
P 3600 2500
F 0 "U1" H 3350 3500 60  0000 C CNN
F 1 "74AVCH8T245-1EP" H 4150 1700 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-24-1EP-Pitch0.5-nonSquare" H 3600 2500 60  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/74AVCH8T245.pdf" H 3575 3587 60  0001 C CNN
F 4 "NXP" H 3600 2500 60  0001 C CNN "MFN"
F 5 "74AVCH8T245BQ" H 3600 2500 60  0001 C CNN "MFP"
F 6 "digikey" H 3600 2500 60  0001 C CNN "D1"
F 7 "mouser" H 3600 2500 60  0001 C CNN "D2"
F 8 "568-5418" H 3600 2500 60  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/74AVCH8T245BQ%2C118/568-5418-1-ND/2530896?WT.z_cid=ref_octopart_dkc_buynow&site=us" H 3600 2500 60  0001 C CNN "D1PL"
F 10 "_" H 3600 2500 60  0001 C CNN "D2PN"
F 11 "_" H 3600 2500 60  0001 C CNN "D2PL"
F 12 "_" H 3600 2500 60  0001 C CNN "Package"
F 13 "_" H 3575 3481 60  0000 C CNN "Description"
F 14 "_" H 3600 2500 60  0001 C CNN "Voltage"
F 15 "_" H 3600 2500 60  0001 C CNN "Power"
F 16 "_" H 3600 2500 60  0001 C CNN "Tolerance"
F 17 "_" H 3600 2500 60  0001 C CNN "Temperature"
F 18 "_" H 3600 2500 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 3600 2500 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 3600 2500 60  0001 C CNN "Cont.Current"
F 21 "_" H 3600 2500 60  0001 C CNN "Frequency"
F 22 "_" H 3600 2500 60  0001 C CNN "ResonnanceFreq"
	1    3600 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR056
U 1 1 572C1D06
P 3600 3500
F 0 "#PWR056" H 3600 3250 50  0001 C CNN
F 1 "GND" H 3605 3327 50  0000 C CNN
F 2 "" H 3600 3500 50  0000 C CNN
F 3 "" H 3600 3500 50  0000 C CNN
	1    3600 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3400 3500 3500
Wire Wire Line
	3600 3500 3600 3400
Wire Wire Line
	3700 3500 3700 3400
Connection ~ 3600 3500
$Comp
L +2V5 #PWR057
U 1 1 572C1D11
P 4300 1700
F 0 "#PWR057" H 4300 1550 50  0001 C CNN
F 1 "+2V5" H 4315 1873 50  0000 C CNN
F 2 "" H 4300 1700 50  0000 C CNN
F 3 "" H 4300 1700 50  0000 C CNN
	1    4300 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2250 1700 3100 1700
Text GLabel 5150 2700 2    60   Input ~ 0
Python1_CS#
Text GLabel 5150 2500 2    60   Input ~ 0
Python2_CS#
Text GLabel 5150 2600 2    60   Input ~ 0
Python3_CS#
Text GLabel 4050 2900 2    60   Input ~ 0
Python_RST#
Text GLabel 4050 2800 2    60   Input ~ 0
Python_Trigger
Text GLabel 5150 2300 2    60   Input ~ 0
SPI_MOSI
Text GLabel 5150 2400 2    60   Input ~ 0
SPI_SCK
Text GLabel 2400 2700 0    60   Input ~ 0
Python1_CS#_3V3
Text GLabel 2400 2500 0    60   Input ~ 0
Python2_CS#_3V3
Text GLabel 2400 2600 0    60   Input ~ 0
Python3_CS#_3V3
Text GLabel 3100 2900 0    60   Input ~ 0
Python_RST#_3V3
Text GLabel 2400 2800 0    60   Input ~ 0
Python_Trigger_3V3
Text GLabel 2400 2300 0    60   Input ~ 0
SPI_MOSI_3V3
Text GLabel 2400 2400 0    60   Input ~ 0
SPI_SCK_3V3
Text Notes 3250 1350 0    60   ~ 12
Outbound (FPGA-> Sensors)
Wire Wire Line
	4050 1700 5650 1700
$Comp
L GND #PWR058
U 1 1 572C1D3D
P 5650 2000
F 0 "#PWR058" H 5650 1750 50  0001 C CNN
F 1 "GND" H 5655 1827 50  0000 C CNN
F 2 "" H 5650 2000 50  0000 C CNN
F 3 "" H 5650 2000 50  0000 C CNN
	1    5650 2000
	-1   0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 572C1D56
P 5650 1850
F 0 "C24" H 5675 1950 50  0000 L CNN
F 1 "100n" H 5675 1750 50  0000 L CNN
F 2 "Dipoles_SMD:C_0402" H 5688 1700 50  0001 C CNN
F 3 "http://product.tdk.com/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 5650 1850 50  0001 C CNN
F 4 "TDK" H 5650 1850 50  0001 C CNN "MFN"
F 5 "C1005X5R0J104K050BA" H 5650 1850 50  0001 C CNN "MFP"
F 6 "digikey" H 5650 1850 50  0001 C CNN "D1"
F 7 "mouser" H 5650 1850 50  0001 C CNN "D2"
F 8 "445-1266" H 5650 1850 50  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/C1005X5R0J104K050BA/445-1266-1-ND/567731" H 5650 1850 50  0001 C CNN "D1PL"
F 10 "_" H 5650 1850 50  0001 C CNN "D2PN"
F 11 "_" H 5650 1850 50  0001 C CNN "D2PL"
F 12 "0402" H 5650 1850 50  0001 C CNN "Package"
F 13 "_" H 5650 1850 50  0000 C CNN "Description"
F 14 "6.3" H 5650 1850 50  0001 C CNN "Voltage"
F 15 "_" H 5650 1850 50  0001 C CNN "Power"
F 16 "10%" H 5650 1850 50  0001 C CNN "Tolerance"
F 17 "X5R" H 5650 1850 50  0001 C CNN "Temperature"
F 18 "_" H 5650 1850 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 5650 1850 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 5650 1850 50  0001 C CNN "Cont.Current"
F 21 "_" H 5650 1850 50  0001 C CNN "Frequency"
F 22 "_" H 5650 1850 50  0001 C CNN "ResonnanceFreq"
	1    5650 1850
	-1   0    0    -1  
$EndComp
Connection ~ 4300 1700
$Comp
L C C11
U 1 1 572C1D71
P 2250 1850
F 0 "C11" H 2275 1950 50  0000 L CNN
F 1 "100n" H 2275 1750 50  0000 L CNN
F 2 "Dipoles_SMD:C_0402" H 2288 1700 50  0001 C CNN
F 3 "http://product.tdk.com/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 2250 1850 50  0001 C CNN
F 4 "TDK" H 2250 1850 50  0001 C CNN "MFN"
F 5 "C1005X5R0J104K050BA" H 2250 1850 50  0001 C CNN "MFP"
F 6 "digikey" H 2250 1850 50  0001 C CNN "D1"
F 7 "mouser" H 2250 1850 50  0001 C CNN "D2"
F 8 "445-1266" H 2250 1850 50  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/C1005X5R0J104K050BA/445-1266-1-ND/567731" H 2250 1850 50  0001 C CNN "D1PL"
F 10 "_" H 2250 1850 50  0001 C CNN "D2PN"
F 11 "_" H 2250 1850 50  0001 C CNN "D2PL"
F 12 "0402" H 2250 1850 50  0001 C CNN "Package"
F 13 "_" H 2250 1850 50  0000 C CNN "Description"
F 14 "6.3" H 2250 1850 50  0001 C CNN "Voltage"
F 15 "_" H 2250 1850 50  0001 C CNN "Power"
F 16 "10%" H 2250 1850 50  0001 C CNN "Tolerance"
F 17 "X5R" H 2250 1850 50  0001 C CNN "Temperature"
F 18 "_" H 2250 1850 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 2250 1850 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 2250 1850 50  0001 C CNN "Cont.Current"
F 21 "_" H 2250 1850 50  0001 C CNN "Frequency"
F 22 "_" H 2250 1850 50  0001 C CNN "ResonnanceFreq"
	1    2250 1850
	-1   0    0    -1  
$EndComp
Connection ~ 2950 1700
Text Notes 7400 1350 0    60   ~ 12
Inbound (Sensors -> FPGA)
Text GLabel 9250 2100 2    60   Input ~ 0
SPI_MISO
Text GLabel 7950 2100 0    60   Input ~ 0
SPI_MISO_3V3
$Comp
L +2V5 #PWR059
U 1 1 572C1DA4
P 9800 2000
F 0 "#PWR059" H 9800 1850 50  0001 C CNN
F 1 "+2V5" H 9815 2173 50  0000 C CNN
F 2 "" H 9800 2000 50  0000 C CNN
F 3 "" H 9800 2000 50  0000 C CNN
	1    9800 2000
	1    0    0    -1  
$EndComp
$Comp
L C C50
U 1 1 572C1DDE
P 9800 2250
F 0 "C50" H 9825 2350 50  0000 L CNN
F 1 "100n" H 9825 2150 50  0000 L CNN
F 2 "Dipoles_SMD:C_0402" H 9838 2100 50  0001 C CNN
F 3 "http://product.tdk.com/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 9800 2250 50  0001 C CNN
F 4 "TDK" H 9800 2250 50  0001 C CNN "MFN"
F 5 "C1005X5R0J104K050BA" H 9800 2250 50  0001 C CNN "MFP"
F 6 "digikey" H 9800 2250 50  0001 C CNN "D1"
F 7 "mouser" H 9800 2250 50  0001 C CNN "D2"
F 8 "445-1266" H 9800 2250 50  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/C1005X5R0J104K050BA/445-1266-1-ND/567731" H 9800 2250 50  0001 C CNN "D1PL"
F 10 "_" H 9800 2250 50  0001 C CNN "D2PN"
F 11 "_" H 9800 2250 50  0001 C CNN "D2PL"
F 12 "0402" H 9800 2250 50  0001 C CNN "Package"
F 13 "_" H 9800 2250 50  0000 C CNN "Description"
F 14 "6.3" H 9800 2250 50  0001 C CNN "Voltage"
F 15 "_" H 9800 2250 50  0001 C CNN "Power"
F 16 "10%" H 9800 2250 50  0001 C CNN "Tolerance"
F 17 "X5R" H 9800 2250 50  0001 C CNN "Temperature"
F 18 "_" H 9800 2250 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 9800 2250 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 9800 2250 50  0001 C CNN "Cont.Current"
F 21 "_" H 9800 2250 50  0001 C CNN "Frequency"
F 22 "_" H 9800 2250 50  0001 C CNN "ResonnanceFreq"
	1    9800 2250
	-1   0    0    -1  
$EndComp
$Comp
L C C42
U 1 1 572C1DF8
P 7100 2150
F 0 "C42" H 7125 2250 50  0000 L CNN
F 1 "100n" H 7125 2050 50  0000 L CNN
F 2 "Dipoles_SMD:C_0402" H 7138 2000 50  0001 C CNN
F 3 "http://product.tdk.com/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 7100 2150 50  0001 C CNN
F 4 "TDK" H 7100 2150 50  0001 C CNN "MFN"
F 5 "C1005X5R0J104K050BA" H 7100 2150 50  0001 C CNN "MFP"
F 6 "digikey" H 7100 2150 50  0001 C CNN "D1"
F 7 "mouser" H 7100 2150 50  0001 C CNN "D2"
F 8 "445-1266" H 7100 2150 50  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/C1005X5R0J104K050BA/445-1266-1-ND/567731" H 7100 2150 50  0001 C CNN "D1PL"
F 10 "_" H 7100 2150 50  0001 C CNN "D2PN"
F 11 "_" H 7100 2150 50  0001 C CNN "D2PL"
F 12 "0402" H 7100 2150 50  0001 C CNN "Package"
F 13 "_" H 7100 2150 50  0000 C CNN "Description"
F 14 "6.3" H 7100 2150 50  0001 C CNN "Voltage"
F 15 "_" H 7100 2150 50  0001 C CNN "Power"
F 16 "10%" H 7100 2150 50  0001 C CNN "Tolerance"
F 17 "X5R" H 7100 2150 50  0001 C CNN "Temperature"
F 18 "_" H 7100 2150 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 7100 2150 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 7100 2150 50  0001 C CNN "Cont.Current"
F 21 "_" H 7100 2150 50  0001 C CNN "Frequency"
F 22 "_" H 7100 2150 50  0001 C CNN "ResonnanceFreq"
	1    7100 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 3500 3700 3500
Wire Wire Line
	3400 3400 3400 3500
Connection ~ 3500 3500
Wire Wire Line
	4050 1800 4300 1800
Wire Wire Line
	4300 1800 4300 1700
Wire Wire Line
	4050 2000 5650 2000
Wire Wire Line
	2250 2000 3100 2000
$Comp
L GND #PWR060
U 1 1 5734EF0C
P 2250 2000
F 0 "#PWR060" H 2250 1750 50  0001 C CNN
F 1 "GND" H 2255 1827 50  0000 C CNN
F 2 "" H 2250 2000 50  0000 C CNN
F 3 "" H 2250 2000 50  0000 C CNN
	1    2250 2000
	1    0    0    -1  
$EndComp
Text GLabel 2400 2200 0    60   Input ~ 0
IMU_RX1
Text GLabel 7950 2200 0    60   Input ~ 0
IMU_TX1
Text GLabel 4700 2200 2    60   Input ~ 0
IMU_RX1_2V5
Text GLabel 9350 2200 2    60   Input ~ 0
IMU_TX1_2V5
$Comp
L R R10
U 1 1 57C5133F
P 2950 2300
F 0 "R10" V 2900 2150 50  0000 C CNN
F 1 "50" V 2900 2450 50  0000 C CNN
F 2 "Dipoles_SMD:R_0402" V 2880 2300 30  0001 C CNN
F 3 "" H 2950 2300 30  0001 C CNN
F 4 "_" H 2950 2300 50  0001 C CNN "MFN"
F 5 "_" H 2950 2300 50  0001 C CNN "MFP"
F 6 "digikey" H 2950 2300 50  0001 C CNN "D1"
F 7 "mouser" H 2950 2300 50  0001 C CNN "D2"
F 8 "_" H 2950 2300 50  0001 C CNN "D1PN"
F 9 "_" H 2950 2300 50  0001 C CNN "D1PL"
F 10 "_" H 2950 2300 50  0001 C CNN "D2PN"
F 11 "_" H 2950 2300 50  0001 C CNN "D2PL"
F 12 "0402" H 2950 2300 50  0001 C CNN "Package"
F 13 "_" V 2835 2300 50  0000 C CNN "Description"
F 14 "_" H 2950 2300 50  0001 C CNN "Voltage"
F 15 "_" H 2950 2300 50  0001 C CNN "Power"
F 16 "_" H 2950 2300 50  0001 C CNN "Tolerance"
F 17 "_" H 2950 2300 50  0001 C CNN "Temperature"
F 18 "_" H 2950 2300 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 2950 2300 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 2950 2300 50  0001 C CNN "Cont.Current"
F 21 "_" H 2950 2300 50  0001 C CNN "Frequency"
F 22 "_" H 2950 2300 50  0001 C CNN "ResonnanceFreq"
	1    2950 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2400 5150 2400
$Comp
L R R12
U 1 1 57C5BAF3
P 2950 2400
F 0 "R12" V 2900 2250 50  0000 C CNN
F 1 "50" V 2900 2550 50  0000 C CNN
F 2 "Dipoles_SMD:R_0402" V 2880 2400 30  0001 C CNN
F 3 "" H 2950 2400 30  0001 C CNN
F 4 "_" H 2950 2400 50  0001 C CNN "MFN"
F 5 "_" H 2950 2400 50  0001 C CNN "MFP"
F 6 "digikey" H 2950 2400 50  0001 C CNN "D1"
F 7 "mouser" H 2950 2400 50  0001 C CNN "D2"
F 8 "_" H 2950 2400 50  0001 C CNN "D1PN"
F 9 "_" H 2950 2400 50  0001 C CNN "D1PL"
F 10 "_" H 2950 2400 50  0001 C CNN "D2PN"
F 11 "_" H 2950 2400 50  0001 C CNN "D2PL"
F 12 "0402" H 2950 2400 50  0001 C CNN "Package"
F 13 "_" V 2835 2400 50  0000 C CNN "Description"
F 14 "_" H 2950 2400 50  0001 C CNN "Voltage"
F 15 "_" H 2950 2400 50  0001 C CNN "Power"
F 16 "_" H 2950 2400 50  0001 C CNN "Tolerance"
F 17 "_" H 2950 2400 50  0001 C CNN "Temperature"
F 18 "_" H 2950 2400 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 2950 2400 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 2950 2400 50  0001 C CNN "Cont.Current"
F 21 "_" H 2950 2400 50  0001 C CNN "Frequency"
F 22 "_" H 2950 2400 50  0001 C CNN "ResonnanceFreq"
	1    2950 2400
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 57C5BB41
P 2950 2500
F 0 "R13" V 2900 2350 50  0000 C CNN
F 1 "50" V 2900 2650 50  0000 C CNN
F 2 "Dipoles_SMD:R_0402" V 2880 2500 30  0001 C CNN
F 3 "" H 2950 2500 30  0001 C CNN
F 4 "_" H 2950 2500 50  0001 C CNN "MFN"
F 5 "_" H 2950 2500 50  0001 C CNN "MFP"
F 6 "digikey" H 2950 2500 50  0001 C CNN "D1"
F 7 "mouser" H 2950 2500 50  0001 C CNN "D2"
F 8 "_" H 2950 2500 50  0001 C CNN "D1PN"
F 9 "_" H 2950 2500 50  0001 C CNN "D1PL"
F 10 "_" H 2950 2500 50  0001 C CNN "D2PN"
F 11 "_" H 2950 2500 50  0001 C CNN "D2PL"
F 12 "0402" H 2950 2500 50  0001 C CNN "Package"
F 13 "_" V 2835 2500 50  0000 C CNN "Description"
F 14 "_" H 2950 2500 50  0001 C CNN "Voltage"
F 15 "_" H 2950 2500 50  0001 C CNN "Power"
F 16 "_" H 2950 2500 50  0001 C CNN "Tolerance"
F 17 "_" H 2950 2500 50  0001 C CNN "Temperature"
F 18 "_" H 2950 2500 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 2950 2500 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 2950 2500 50  0001 C CNN "Cont.Current"
F 21 "_" H 2950 2500 50  0001 C CNN "Frequency"
F 22 "_" H 2950 2500 50  0001 C CNN "ResonnanceFreq"
	1    2950 2500
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 57C5BB96
P 2950 2600
F 0 "R14" V 2900 2450 50  0000 C CNN
F 1 "50" V 2900 2750 50  0000 C CNN
F 2 "Dipoles_SMD:R_0402" V 2880 2600 30  0001 C CNN
F 3 "" H 2950 2600 30  0001 C CNN
F 4 "_" H 2950 2600 50  0001 C CNN "MFN"
F 5 "_" H 2950 2600 50  0001 C CNN "MFP"
F 6 "digikey" H 2950 2600 50  0001 C CNN "D1"
F 7 "mouser" H 2950 2600 50  0001 C CNN "D2"
F 8 "_" H 2950 2600 50  0001 C CNN "D1PN"
F 9 "_" H 2950 2600 50  0001 C CNN "D1PL"
F 10 "_" H 2950 2600 50  0001 C CNN "D2PN"
F 11 "_" H 2950 2600 50  0001 C CNN "D2PL"
F 12 "0402" H 2950 2600 50  0001 C CNN "Package"
F 13 "_" V 2835 2600 50  0000 C CNN "Description"
F 14 "_" H 2950 2600 50  0001 C CNN "Voltage"
F 15 "_" H 2950 2600 50  0001 C CNN "Power"
F 16 "_" H 2950 2600 50  0001 C CNN "Tolerance"
F 17 "_" H 2950 2600 50  0001 C CNN "Temperature"
F 18 "_" H 2950 2600 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 2950 2600 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 2950 2600 50  0001 C CNN "Cont.Current"
F 21 "_" H 2950 2600 50  0001 C CNN "Frequency"
F 22 "_" H 2950 2600 50  0001 C CNN "ResonnanceFreq"
	1    2950 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2500 5150 2500
Wire Wire Line
	4050 2600 5150 2600
Wire Wire Line
	4050 2700 5150 2700
$Comp
L R R7
U 1 1 57C5C073
P 2950 2200
F 0 "R7" V 2900 2050 50  0000 C CNN
F 1 "50" V 2900 2350 50  0000 C CNN
F 2 "Dipoles_SMD:R_0402" V 2880 2200 30  0001 C CNN
F 3 "" H 2950 2200 30  0001 C CNN
F 4 "_" H 2950 2200 50  0001 C CNN "MFN"
F 5 "_" H 2950 2200 50  0001 C CNN "MFP"
F 6 "digikey" H 2950 2200 50  0001 C CNN "D1"
F 7 "mouser" H 2950 2200 50  0001 C CNN "D2"
F 8 "_" H 2950 2200 50  0001 C CNN "D1PN"
F 9 "_" H 2950 2200 50  0001 C CNN "D1PL"
F 10 "_" H 2950 2200 50  0001 C CNN "D2PN"
F 11 "_" H 2950 2200 50  0001 C CNN "D2PL"
F 12 "0402" H 2950 2200 50  0001 C CNN "Package"
F 13 "_" V 2835 2200 50  0000 C CNN "Description"
F 14 "_" H 2950 2200 50  0001 C CNN "Voltage"
F 15 "_" H 2950 2200 50  0001 C CNN "Power"
F 16 "_" H 2950 2200 50  0001 C CNN "Tolerance"
F 17 "_" H 2950 2200 50  0001 C CNN "Temperature"
F 18 "_" H 2950 2200 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 2950 2200 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 2950 2200 50  0001 C CNN "Cont.Current"
F 21 "_" H 2950 2200 50  0001 C CNN "Frequency"
F 22 "_" H 2950 2200 50  0001 C CNN "ResonnanceFreq"
	1    2950 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2300 5150 2300
Wire Wire Line
	2950 1550 2950 1700
Wire Wire Line
	4050 2200 4700 2200
Wire Wire Line
	4500 2200 4500 2100
Wire Wire Line
	4500 2100 4700 2100
Connection ~ 4500 2200
Text GLabel 4700 2100 2    60   Input ~ 0
Python2_Monitor
$Comp
L SN74AVC2T244 U9
U 1 1 57C95D0A
P 8400 2200
F 0 "U9" H 8400 2600 60  0000 C CNN
F 1 "SN74AVC2T244" H 8400 1900 60  0000 C CNN
F 2 "Housings_WSON:SON-N8-145x105" H 8400 2200 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74avc2t244.pdf" H 8400 2200 60  0001 C CNN
F 4 "_" H 8400 2200 60  0001 C CNN "MFN"
F 5 "_" H 8400 2200 60  0001 C CNN "MFP"
F 6 "digikey" H 8400 2200 60  0001 C CNN "D1"
F 7 "mouser" H 8400 2200 60  0001 C CNN "D2"
F 8 "_" H 8400 2200 60  0001 C CNN "D1PN"
F 9 "_" H 8400 2200 60  0001 C CNN "D1PL"
F 10 "_" H 8400 2200 60  0001 C CNN "D2PN"
F 11 "_" H 8400 2200 60  0001 C CNN "D2PL"
F 12 "_" H 8400 2200 60  0001 C CNN "Package"
F 13 "_" H 8400 2200 60  0000 C CNN "Description"
F 14 "_" H 8400 2200 60  0001 C CNN "Voltage"
F 15 "_" H 8400 2200 60  0001 C CNN "Power"
F 16 "_" H 8400 2200 60  0001 C CNN "Tolerance"
F 17 "_" H 8400 2200 60  0001 C CNN "Temperature"
F 18 "_" H 8400 2200 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 8400 2200 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 8400 2200 60  0001 C CNN "Cont.Current"
F 21 "_" H 8400 2200 60  0001 C CNN "Frequency"
F 22 "_" H 8400 2200 60  0001 C CNN "ResonnanceFreq"
	1    8400 2200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR061
U 1 1 57C96152
P 7700 1850
F 0 "#PWR061" H 7700 1700 50  0001 C CNN
F 1 "+3V3" H 7715 2023 50  0000 C CNN
F 2 "" H 7700 1850 50  0000 C CNN
F 3 "" H 7700 1850 50  0000 C CNN
	1    7700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1850 7700 2000
Wire Wire Line
	7100 2000 7950 2000
Connection ~ 7700 2000
$Comp
L GND #PWR062
U 1 1 57C9632F
P 7500 2450
F 0 "#PWR062" H 7500 2200 50  0001 C CNN
F 1 "GND" H 7505 2277 50  0000 C CNN
F 2 "" H 7500 2450 50  0000 C CNN
F 3 "" H 7500 2450 50  0000 C CNN
	1    7500 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR063
U 1 1 57C9668A
P 9400 2500
F 0 "#PWR063" H 9400 2250 50  0001 C CNN
F 1 "GND" H 9405 2327 50  0000 C CNN
F 2 "" H 9400 2500 50  0000 C CNN
F 3 "" H 9400 2500 50  0000 C CNN
	1    9400 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2400 9800 2400
Wire Wire Line
	8950 2400 8950 2300
Wire Wire Line
	8950 2300 8850 2300
Wire Wire Line
	9800 2000 8850 2000
Wire Wire Line
	9800 2100 9800 2000
Wire Wire Line
	9400 2500 9400 2400
Connection ~ 9400 2400
Wire Wire Line
	7100 2300 7950 2300
Wire Wire Line
	7500 2300 7500 2450
Connection ~ 7500 2300
$Comp
L +3V3 #PWR064
U 1 1 57CC870F
P 2950 1550
F 0 "#PWR064" H 2950 1400 50  0001 C CNN
F 1 "+3V3" H 2965 1723 50  0000 C CNN
F 2 "" H 2950 1550 50  0000 C CNN
F 3 "" H 2950 1550 50  0000 C CNN
	1    2950 1550
	1    0    0    -1  
$EndComp
Text GLabel 9250 2750 2    60   Input ~ 0
Python3_Monitor
Wire Wire Line
	9150 2200 9350 2200
Wire Wire Line
	8950 1550 9000 1550
Connection ~ 9250 2200
Wire Wire Line
	9250 2200 9250 2750
$Comp
L R R15
U 1 1 57CF6B9D
P 2950 2700
F 0 "R15" V 2900 2550 50  0000 C CNN
F 1 "50" V 2900 2850 50  0000 C CNN
F 2 "Dipoles_SMD:R_0402" V 2880 2700 30  0001 C CNN
F 3 "" H 2950 2700 30  0001 C CNN
F 4 "_" H 2950 2700 50  0001 C CNN "MFN"
F 5 "_" H 2950 2700 50  0001 C CNN "MFP"
F 6 "digikey" H 2950 2700 50  0001 C CNN "D1"
F 7 "mouser" H 2950 2700 50  0001 C CNN "D2"
F 8 "_" H 2950 2700 50  0001 C CNN "D1PN"
F 9 "_" H 2950 2700 50  0001 C CNN "D1PL"
F 10 "_" H 2950 2700 50  0001 C CNN "D2PN"
F 11 "_" H 2950 2700 50  0001 C CNN "D2PL"
F 12 "0402" H 2950 2700 50  0001 C CNN "Package"
F 13 "_" V 2835 2700 50  0000 C CNN "Description"
F 14 "_" H 2950 2700 50  0001 C CNN "Voltage"
F 15 "_" H 2950 2700 50  0001 C CNN "Power"
F 16 "_" H 2950 2700 50  0001 C CNN "Tolerance"
F 17 "_" H 2950 2700 50  0001 C CNN "Temperature"
F 18 "_" H 2950 2700 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 2950 2700 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 2950 2700 50  0001 C CNN "Cont.Current"
F 21 "_" H 2950 2700 50  0001 C CNN "Frequency"
F 22 "_" H 2950 2700 50  0001 C CNN "ResonnanceFreq"
	1    2950 2700
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 57CF6C04
P 2950 2800
F 0 "R18" V 2900 2650 50  0000 C CNN
F 1 "50" V 2900 2950 50  0000 C CNN
F 2 "Dipoles_SMD:R_0402" V 2880 2800 30  0001 C CNN
F 3 "" H 2950 2800 30  0001 C CNN
F 4 "_" H 2950 2800 50  0001 C CNN "MFN"
F 5 "_" H 2950 2800 50  0001 C CNN "MFP"
F 6 "digikey" H 2950 2800 50  0001 C CNN "D1"
F 7 "mouser" H 2950 2800 50  0001 C CNN "D2"
F 8 "_" H 2950 2800 50  0001 C CNN "D1PN"
F 9 "_" H 2950 2800 50  0001 C CNN "D1PL"
F 10 "_" H 2950 2800 50  0001 C CNN "D2PN"
F 11 "_" H 2950 2800 50  0001 C CNN "D2PL"
F 12 "0402" H 2950 2800 50  0001 C CNN "Package"
F 13 "_" V 2835 2800 50  0000 C CNN "Description"
F 14 "_" H 2950 2800 50  0001 C CNN "Voltage"
F 15 "_" H 2950 2800 50  0001 C CNN "Power"
F 16 "_" H 2950 2800 50  0001 C CNN "Tolerance"
F 17 "_" H 2950 2800 50  0001 C CNN "Temperature"
F 18 "_" H 2950 2800 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 2950 2800 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 2950 2800 50  0001 C CNN "Cont.Current"
F 21 "_" H 2950 2800 50  0001 C CNN "Frequency"
F 22 "_" H 2950 2800 50  0001 C CNN "ResonnanceFreq"
	1    2950 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 2200 2800 2200
Wire Wire Line
	2400 2300 2800 2300
Wire Wire Line
	2400 2400 2800 2400
Wire Wire Line
	2400 2500 2800 2500
Wire Wire Line
	2400 2600 2800 2600
Wire Wire Line
	2400 2700 2800 2700
Wire Wire Line
	2400 2800 2800 2800
$Comp
L R R19
U 1 1 57CF7614
P 9000 2100
F 0 "R19" V 8950 1950 50  0000 C CNN
F 1 "50" V 8950 2250 50  0000 C CNN
F 2 "Dipoles_SMD:R_0402" V 8930 2100 30  0001 C CNN
F 3 "" H 9000 2100 30  0001 C CNN
F 4 "_" H 9000 2100 50  0001 C CNN "MFN"
F 5 "_" H 9000 2100 50  0001 C CNN "MFP"
F 6 "digikey" H 9000 2100 50  0001 C CNN "D1"
F 7 "mouser" H 9000 2100 50  0001 C CNN "D2"
F 8 "_" H 9000 2100 50  0001 C CNN "D1PN"
F 9 "_" H 9000 2100 50  0001 C CNN "D1PL"
F 10 "_" H 9000 2100 50  0001 C CNN "D2PN"
F 11 "_" H 9000 2100 50  0001 C CNN "D2PL"
F 12 "0402" H 9000 2100 50  0001 C CNN "Package"
F 13 "_" V 8885 2100 50  0000 C CNN "Description"
F 14 "_" H 9000 2100 50  0001 C CNN "Voltage"
F 15 "_" H 9000 2100 50  0001 C CNN "Power"
F 16 "_" H 9000 2100 50  0001 C CNN "Tolerance"
F 17 "_" H 9000 2100 50  0001 C CNN "Temperature"
F 18 "_" H 9000 2100 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 9000 2100 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 9000 2100 50  0001 C CNN "Cont.Current"
F 21 "_" H 9000 2100 50  0001 C CNN "Frequency"
F 22 "_" H 9000 2100 50  0001 C CNN "ResonnanceFreq"
	1    9000 2100
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 57CF762D
P 9000 2200
F 0 "R20" V 8950 2050 50  0000 C CNN
F 1 "50" V 8950 2350 50  0000 C CNN
F 2 "Dipoles_SMD:R_0402" V 8930 2200 30  0001 C CNN
F 3 "" H 9000 2200 30  0001 C CNN
F 4 "_" H 9000 2200 50  0001 C CNN "MFN"
F 5 "_" H 9000 2200 50  0001 C CNN "MFP"
F 6 "digikey" H 9000 2200 50  0001 C CNN "D1"
F 7 "mouser" H 9000 2200 50  0001 C CNN "D2"
F 8 "_" H 9000 2200 50  0001 C CNN "D1PN"
F 9 "_" H 9000 2200 50  0001 C CNN "D1PL"
F 10 "_" H 9000 2200 50  0001 C CNN "D2PN"
F 11 "_" H 9000 2200 50  0001 C CNN "D2PL"
F 12 "0402" H 9000 2200 50  0001 C CNN "Package"
F 13 "_" V 8885 2200 50  0000 C CNN "Description"
F 14 "_" H 9000 2200 50  0001 C CNN "Voltage"
F 15 "_" H 9000 2200 50  0001 C CNN "Power"
F 16 "_" H 9000 2200 50  0001 C CNN "Tolerance"
F 17 "_" H 9000 2200 50  0001 C CNN "Temperature"
F 18 "_" H 9000 2200 50  0001 C CNN "ReverseVoltage"
F 19 "_" H 9000 2200 50  0001 C CNN "ForwardVoltage"
F 20 "_" H 9000 2200 50  0001 C CNN "Cont.Current"
F 21 "_" H 9000 2200 50  0001 C CNN "Frequency"
F 22 "_" H 9000 2200 50  0001 C CNN "ResonnanceFreq"
	1    9000 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 2100 9150 2100
$EndSCHEMATC
