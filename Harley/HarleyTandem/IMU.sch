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
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 9300 1200 0    300  ~ 60
IMU
Text GLabel 9200 5050 0    60   Input ~ 0
IMU_TX0
Text GLabel 9200 5150 0    60   Input ~ 0
IMU_RX0
$Comp
L uIMU-2 U14
U 1 1 575B4F78
P 8550 2500
F 0 "U14" H 8150 3450 60  0000 C CNN
F 1 "uIMU-2" H 8250 1900 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFP-22_0.5mmPitch_125x155mm" H 8600 2500 60  0001 C CNN
F 3 "https://inertialsense.com/download/uins-2-datasheet/" H 8600 2500 60  0001 C CNN
F 4 "InertialSense" H 8550 2500 60  0001 C CNN "MFN"
F 5 "uIMU-2" H 8550 2500 60  0001 C CNN "MFP"
F 6 "digikey" H 8550 2500 60  0001 C CNN "D1"
F 7 "mouser" H 8550 2500 60  0001 C CNN "D2"
F 8 "DNP" H 8550 2500 60  0001 C CNN "D1PN"
F 9 "DNP" H 8550 2500 60  0001 C CNN "D1PL"
F 10 "_" H 8550 2500 60  0001 C CNN "D2PN"
F 11 "_" H 8550 2500 60  0001 C CNN "D2PL"
F 12 "_" H 8550 2500 60  0001 C CNN "Package"
F 13 "_" H 8550 2500 60  0000 C CNN "Description"
F 14 "_" H 8550 2500 60  0001 C CNN "Voltage"
F 15 "_" H 8550 2500 60  0001 C CNN "Power"
F 16 "_" H 8550 2500 60  0001 C CNN "Tolerance"
F 17 "_" H 8550 2500 60  0001 C CNN "Temperature"
F 18 "_" H 8550 2500 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 8550 2500 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 8550 2500 60  0001 C CNN "Cont.Current"
F 21 "_" H 8550 2500 60  0001 C CNN "Frequency"
F 22 "_" H 8550 2500 60  0001 C CNN "ResonnanceFreq"
	1    8550 2500
	1    0    0    -1  
$EndComp
NoConn ~ 8550 1550
NoConn ~ 8650 1550
NoConn ~ 8750 1550
NoConn ~ 8850 1550
NoConn ~ 8950 1550
NoConn ~ 9050 1550
NoConn ~ 9150 1550
$Comp
L GND #PWR010
U 1 1 575B518E
P 8600 3350
F 0 "#PWR010" H 8600 3100 50  0001 C CNN
F 1 "GND" H 8605 3177 50  0000 C CNN
F 2 "" H 8600 3350 50  0000 C CNN
F 3 "" H 8600 3350 50  0000 C CNN
	1    8600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3350 8650 3350
Wire Wire Line
	8550 3350 8550 3200
Wire Wire Line
	8650 3350 8650 3200
Connection ~ 8600 3350
Text GLabel 9750 2700 2    60   Input ~ 0
IMU_RX0
Text GLabel 9750 2600 2    60   Input ~ 0
IMU_TX0
NoConn ~ 7900 2100
NoConn ~ 7900 2200
NoConn ~ 7900 2300
NoConn ~ 7900 2600
NoConn ~ 7900 2700
NoConn ~ 9750 2500
$Comp
L C C112
U 1 1 575B5F6E
P 7200 2100
F 0 "C112" H 7315 2146 50  0000 L CNN
F 1 "100n" H 7315 2055 50  0000 L CNN
F 2 "Dipoles_SMD:C_0603" H 7238 1950 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_highreliability_general_en.pdf" H 7200 2100 50  0001 C CNN
F 4 "TDK" H 7200 2100 60  0001 C CNN "MFN"
F 5 "_CGJ3E2X7R1C104K080AA" H 7200 2100 60  0001 C CNN "MFP"
F 6 "digikey" H 7200 2100 60  0001 C CNN "D1"
F 7 "mouser" H 7200 2100 60  0001 C CNN "D2"
F 8 "445-8136" H 7200 2100 60  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/tdk-corporation/CGJ3E2X7R1C104K080AA/445-8136-1-ND/2812154" H 7200 2100 60  0001 C CNN "D1PL"
F 10 "_" H 7200 2100 60  0001 C CNN "D2PN"
F 11 "_" H 7200 2100 60  0001 C CNN "D2PL"
F 12 "0603" H 7200 2100 60  0001 C CNN "Package"
F 13 "_" H 7200 2100 60  0000 C CNN "Description"
F 14 "16" H 7200 2100 60  0001 C CNN "Voltage"
F 15 "_" H 7200 2100 60  0001 C CNN "Power"
F 16 "10%" H 7200 2100 60  0001 C CNN "Tolerance"
F 17 "X7R" H 7200 2100 60  0001 C CNN "Temperature"
F 18 "_" H 7200 2100 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 7200 2100 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 7200 2100 60  0001 C CNN "Cont.Current"
F 21 "_" H 7200 2100 60  0001 C CNN "Frequency"
F 22 "_" H 7200 2100 60  0001 C CNN "ResonnanceFreq"
	1    7200 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 575F3F33
P 8800 5250
F 0 "#PWR011" H 8800 5000 50  0001 C CNN
F 1 "GND" V 8805 5122 50  0000 R CNN
F 2 "" H 8800 5250 50  0000 C CNN
F 3 "" H 8800 5250 50  0000 C CNN
	1    8800 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 5250 9200 5250
Text GLabel 7900 2400 0    60   Input ~ 0
IMU_RX1
Text GLabel 7900 2500 0    60   Input ~ 0
IMU_TX1
Wire Wire Line
	7800 1700 7800 1950
Connection ~ 7800 1850
Connection ~ 7800 1950
Wire Wire Line
	6850 1850 7900 1850
Wire Wire Line
	7200 1950 7900 1950
Wire Wire Line
	6850 2150 6850 2250
Wire Wire Line
	6850 2250 7200 2250
$Comp
L GND #PWR012
U 1 1 5761FF48
P 7000 2250
F 0 "#PWR012" H 7000 2000 50  0001 C CNN
F 1 "GND" H 7005 2077 50  0000 C CNN
F 2 "" H 7000 2250 50  0000 C CNN
F 3 "" H 7000 2250 50  0000 C CNN
	1    7000 2250
	1    0    0    -1  
$EndComp
Connection ~ 7000 2250
$Comp
L C C111
U 1 1 5763515D
P 6850 2000
F 0 "C111" H 6965 2046 50  0000 L CNN
F 1 "100n" H 6965 1955 50  0000 L CNN
F 2 "Dipoles_SMD:C_0603" H 6888 1850 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_highreliability_general_en.pdf" H 6850 2000 50  0001 C CNN
F 4 "TDK" H 6850 2000 60  0001 C CNN "MFN"
F 5 "_CGJ3E2X7R1C104K080AA" H 6850 2000 60  0001 C CNN "MFP"
F 6 "digikey" H 6850 2000 60  0001 C CNN "D1"
F 7 "mouser" H 6850 2000 60  0001 C CNN "D2"
F 8 "445-8136" H 6850 2000 60  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/tdk-corporation/CGJ3E2X7R1C104K080AA/445-8136-1-ND/2812154" H 6850 2000 60  0001 C CNN "D1PL"
F 10 "_" H 6850 2000 60  0001 C CNN "D2PN"
F 11 "_" H 6850 2000 60  0001 C CNN "D2PL"
F 12 "0603" H 6850 2000 60  0001 C CNN "Package"
F 13 "_" H 6850 2000 60  0000 C CNN "Description"
F 14 "16" H 6850 2000 60  0001 C CNN "Voltage"
F 15 "_" H 6850 2000 60  0001 C CNN "Power"
F 16 "10%" H 6850 2000 60  0001 C CNN "Tolerance"
F 17 "X7R" H 6850 2000 60  0001 C CNN "Temperature"
F 18 "_" H 6850 2000 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 6850 2000 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 6850 2000 60  0001 C CNN "Cont.Current"
F 21 "_" H 6850 2000 60  0001 C CNN "Frequency"
F 22 "_" H 6850 2000 60  0001 C CNN "ResonnanceFreq"
	1    6850 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 57C4D95C
P 9400 5150
F 0 "P1" H 9477 5289 50  0000 L CNN
F 1 "CONN_01X03" H 9477 5198 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 9477 5107 50  0000 L CNN
F 3 "" H 9400 5150 50  0000 C CNN
F 4 "_" H 9400 5150 60  0001 C CNN "MFN"
F 5 "_" H 9400 5150 60  0001 C CNN "MFP"
F 6 "digikey" H 9400 5150 60  0001 C CNN "D1"
F 7 "mouser" H 9400 5150 60  0001 C CNN "D2"
F 8 "_" H 9400 5150 60  0001 C CNN "D1PN"
F 9 "_" H 9400 5150 60  0001 C CNN "D1PL"
F 10 "_" H 9400 5150 60  0001 C CNN "D2PN"
F 11 "_" H 9400 5150 60  0001 C CNN "D2PL"
F 12 "_" H 9400 5150 60  0001 C CNN "Package"
F 13 "_" H 9477 5008 60  0000 L CNN "Description"
F 14 "_" H 9400 5150 60  0001 C CNN "Voltage"
F 15 "_" H 9400 5150 60  0001 C CNN "Power"
F 16 "_" H 9400 5150 60  0001 C CNN "Tolerance"
F 17 "_" H 9400 5150 60  0001 C CNN "Temperature"
F 18 "_" H 9400 5150 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 9400 5150 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 9400 5150 60  0001 C CNN "Cont.Current"
F 21 "_" H 9400 5150 60  0001 C CNN "Frequency"
F 22 "_" H 9400 5150 60  0001 C CNN "ResonnanceFreq"
	1    9400 5150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR013
U 1 1 57CC82E6
P 7800 1700
F 0 "#PWR013" H 7800 1550 50  0001 C CNN
F 1 "+3V3" H 7815 1873 50  0000 C CNN
F 2 "" H 7800 1700 50  0000 C CNN
F 3 "" H 7800 1700 50  0000 C CNN
	1    7800 1700
	1    0    0    -1  
$EndComp
NoConn ~ 7900 2800
$EndSCHEMATC
