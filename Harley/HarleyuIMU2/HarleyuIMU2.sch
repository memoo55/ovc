EESchema Schematic File Version 2
LIBS:DCDC_Converters
LIBS:isolators
LIBS:voltage_translators
LIBS:conn
LIBS:connectors
LIBS:IMU
LIBS:power
LIBS:device
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
L +2V5 #PWR01
U 1 1 5730CED7
P 1200 1650
F 0 "#PWR01" H 1200 1500 50  0001 C CNN
F 1 "+2V5" H 1215 1823 50  0000 C CNN
F 2 "" H 1200 1650 50  0000 C CNN
F 3 "" H 1200 1650 50  0000 C CNN
	1    1200 1650
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR02
U 1 1 5730CF08
P 1400 1650
F 0 "#PWR02" H 1400 1500 50  0001 C CNN
F 1 "+3V3" H 1415 1823 50  0000 C CNN
F 2 "" H 1400 1650 50  0000 C CNN
F 3 "" H 1400 1650 50  0000 C CNN
	1    1400 1650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5730CF39
P 1600 1650
F 0 "#PWR03" H 1600 1500 50  0001 C CNN
F 1 "+5V" H 1615 1823 50  0000 C CNN
F 2 "" H 1600 1650 50  0000 C CNN
F 3 "" H 1600 1650 50  0000 C CNN
	1    1600 1650
	1    0    0    -1  
$EndComp
Text Notes 9300 1200 0    300  ~ 60
IMU
Text Notes 700  1000 0    150  ~ 30
To HarleyTandem
Text Notes 4200 1000 0    150  ~ 30
Level shifting
Text GLabel 4550 2950 0    60   Input ~ 0
IMU_RST#_2V5
Text GLabel 4550 3050 0    60   Input ~ 0
IMU_RX0_2V5
Text GLabel 4550 3150 0    60   Input ~ 0
IMU_TX0_2V5
$Comp
L LED D1
U 1 1 5730DE99
P 9100 4350
F 0 "D1" H 9100 4450 50  0000 C CNN
F 1 "GREEN" H 9100 4250 50  0000 C CNN
F 2 "LEDs:LED_0603" H 9100 4350 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/APT1608CGCK.pdf" H 9100 4350 50  0001 C CNN
F 4 "Kingbright" H 9100 4350 60  0001 C CNN "MFN"
F 5 "APT1608CGCK" H 9100 4350 60  0001 C CNN "MFP"
F 6 "digikey" H 9100 4350 60  0001 C CNN "D1"
F 7 "mouser" H 9100 4350 60  0001 C CNN "D2"
F 8 "754-1116" H 9100 4350 60  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/APT1608CGCK/754-1116-1-ND/1747833" H 9100 4350 60  0001 C CNN "D1PL"
F 10 "_" H 9100 4350 60  0001 C CNN "D2PN"
F 11 "_" H 9100 4350 60  0001 C CNN "D2PL"
F 12 "_" H 9100 4350 60  0001 C CNN "Package"
F 13 "_" H 9100 4350 60  0000 C CNN "Description"
F 14 "_" H 9100 4350 60  0001 C CNN "Voltage"
F 15 "_" H 9100 4350 60  0001 C CNN "Power"
F 16 "_" H 9100 4350 60  0001 C CNN "Tolerance"
F 17 "_" H 9100 4350 60  0001 C CNN "Temperature"
F 18 "_" H 9100 4350 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 9100 4350 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 9100 4350 60  0001 C CNN "Cont.Current"
F 21 "_" H 9100 4350 60  0001 C CNN "Frequency"
F 22 "_" H 9100 4350 60  0001 C CNN "ResonnanceFreq"
	1    9100 4350
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 5730DEBD
P 9100 4700
F 0 "D2" H 9100 4800 50  0000 C CNN
F 1 "RED" H 9100 4550 50  0000 C CNN
F 2 "LEDs:LED_0603" H 9100 4700 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/APT1608SURCK.pdf" H 9100 4700 50  0001 C CNN
F 4 "Kingbright" H 9100 4700 60  0001 C CNN "MFN"
F 5 "APT1608SURCK" H 9100 4700 60  0001 C CNN "MFP"
F 6 "digikey" H 9100 4700 60  0001 C CNN "D1"
F 7 "mouser" H 9100 4700 60  0001 C CNN "D2"
F 8 "754-1123" H 9100 4700 60  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/APT1608SURCK/754-1123-1-ND/1747840" H 9100 4700 60  0001 C CNN "D1PL"
F 10 "_" H 9100 4700 60  0001 C CNN "D2PN"
F 11 "_" H 9100 4700 60  0001 C CNN "D2PL"
F 12 "_" H 9100 4700 60  0001 C CNN "Package"
F 13 "_" H 9100 4700 60  0000 C CNN "Description"
F 14 "_" H 9100 4700 60  0001 C CNN "Voltage"
F 15 "_" H 9100 4700 60  0001 C CNN "Power"
F 16 "_" H 9100 4700 60  0001 C CNN "Tolerance"
F 17 "_" H 9100 4700 60  0001 C CNN "Temperature"
F 18 "_" H 9100 4700 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 9100 4700 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 9100 4700 60  0001 C CNN "Cont.Current"
F 21 "_" H 9100 4700 60  0001 C CNN "Frequency"
F 22 "_" H 9100 4700 60  0001 C CNN "ResonnanceFreq"
	1    9100 4700
	1    0    0    -1  
$EndComp
Text GLabel 9200 5050 0    60   Input ~ 0
IMU_TX0
Text GLabel 9200 5150 0    60   Input ~ 0
IMU_RX0
$Comp
L +2V5 #PWR04
U 1 1 57310832
P 4400 2250
F 0 "#PWR04" H 4400 2100 50  0001 C CNN
F 1 "+2V5" H 4415 2423 50  0000 C CNN
F 2 "" H 4400 2250 50  0000 C CNN
F 3 "" H 4400 2250 50  0000 C CNN
	1    4400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2250 4550 2250
Wire Wire Line
	5650 2250 5500 2250
Text GLabel 5500 2950 2    60   Input ~ 0
IMU_RST#
Text GLabel 5500 3050 2    60   Input ~ 0
IMU_RX0
Text GLabel 5500 3150 2    60   Input ~ 0
IMU_TX0
$Comp
L GND #PWR05
U 1 1 57310C00
P 5150 4150
F 0 "#PWR05" H 5150 3900 50  0001 C CNN
F 1 "GND" H 5155 3977 50  0000 C CNN
F 2 "" H 5150 4150 50  0000 C CNN
F 3 "" H 5150 4150 50  0000 C CNN
	1    5150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3950 5150 4150
Text GLabel 1750 2500 0    60   Input ~ 0
IMU_RST#_2V5
Text GLabel 1750 2400 0    60   Input ~ 0
IMU_RX0_2V5
Text GLabel 1750 2300 0    60   Input ~ 0
IMU_TX0_2V5
Text GLabel 8900 4700 0    60   Input ~ 0
FPGA_Signal1
Text GLabel 8900 4350 0    60   Input ~ 0
FPGA_Signal2
$Comp
L R R1
U 1 1 573112D6
P 9450 4350
F 0 "R1" V 9350 4250 50  0000 C CNN
F 1 "200" V 9350 4500 50  0000 C CNN
F 2 "Dipoles_SMD:R_0603" H 9520 4358 50  0001 L CNN
F 3 "http://www.vishay.com/docs/20035/dcrcwe3.pdf" H 9520 4312 50  0001 L CNN
F 4 "Vishay" H 9450 4350 60  0001 C CNN "MFN"
F 5 "CRCW0603200RFKEAHP" H 9450 4350 60  0001 C CNN "MFP"
F 6 "digikey" H 9450 4350 60  0001 C CNN "D1"
F 7 "mouser" H 9450 4350 60  0001 C CNN "D2"
F 8 "541-200S" H 9450 4350 60  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/vishay-dale/CRCW0603200RFKEAHP/541-200SCT-ND/5326826" H 9450 4350 60  0001 C CNN "D1PL"
F 10 "_" H 9450 4350 60  0001 C CNN "D2PN"
F 11 "_" H 9450 4350 60  0001 C CNN "D2PL"
F 12 "0603" H 9450 4350 60  0001 C CNN "Package"
F 13 "_" V 9327 4350 60  0000 C CNN "Description"
F 14 "_" H 9450 4350 60  0001 C CNN "Voltage"
F 15 "1/4" H 9450 4350 60  0001 C CNN "Power"
F 16 "1%" H 9450 4350 60  0001 C CNN "Tolerance"
F 17 "_" H 9450 4350 60  0001 C CNN "Temperature"
F 18 "_" H 9450 4350 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 9450 4350 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 9450 4350 60  0001 C CNN "Cont.Current"
F 21 "_" H 9450 4350 60  0001 C CNN "Frequency"
F 22 "_" H 9450 4350 60  0001 C CNN "ResonnanceFreq"
	1    9450 4350
	0    1    1    0   
$EndComp
$Comp
L +2V5 #PWR06
U 1 1 573123AE
P 9800 4350
F 0 "#PWR06" H 9800 4200 50  0001 C CNN
F 1 "+2V5" H 9815 4523 50  0000 C CNN
F 2 "" H 9800 4350 50  0000 C CNN
F 3 "" H 9800 4350 50  0000 C CNN
	1    9800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4350 9600 4350
Wire Wire Line
	9800 4350 9800 4700
Wire Wire Line
	9800 4700 9600 4700
Wire Wire Line
	4550 2550 4400 2550
Wire Wire Line
	4400 2550 4400 2250
$Comp
L CONN_01X12 P1
U 1 1 5731597E
P 1950 2350
F 0 "P1" H 2028 2444 50  0000 L CNN
F 1 "CONN_01X12" H 2028 2353 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 2027 2307 50  0001 L CNN
F 3 "DNP" H 1950 2350 50  0000 C CNN
F 4 "DNP" H 1950 2350 60  0001 C CNN "MFN"
F 5 "DNP" H 1950 2350 60  0001 C CNN "MFP"
F 6 "digikey" H 1950 2350 60  0001 C CNN "D1"
F 7 "mouser" H 1950 2350 60  0001 C CNN "D2"
F 8 "DNP" H 1950 2350 60  0001 C CNN "D1PN"
F 9 "DNP" H 1950 2350 60  0001 C CNN "D1PL"
F 10 "_" H 1950 2350 60  0001 C CNN "D2PN"
F 11 "_" H 1950 2350 60  0001 C CNN "D2PL"
F 12 "_" H 1950 2350 60  0001 C CNN "Package"
F 13 "_" H 2028 2254 60  0000 L CNN "Description"
F 14 "_" H 1950 2350 60  0001 C CNN "Voltage"
F 15 "_" H 1950 2350 60  0001 C CNN "Power"
F 16 "_" H 1950 2350 60  0001 C CNN "Tolerance"
F 17 "_" H 1950 2350 60  0001 C CNN "Temperature"
F 18 "_" H 1950 2350 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 1950 2350 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 1950 2350 60  0001 C CNN "Cont.Current"
F 21 "_" H 1950 2350 60  0001 C CNN "Frequency"
F 22 "_" H 1950 2350 60  0001 C CNN "ResonnanceFreq"
	1    1950 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1650 1600 1800
Wire Wire Line
	1600 1800 1750 1800
Wire Wire Line
	1750 1900 1400 1900
Wire Wire Line
	1400 1900 1400 1650
Wire Wire Line
	1200 1650 1200 2000
Wire Wire Line
	1200 2000 1750 2000
Wire Wire Line
	1750 2800 1200 2800
Wire Wire Line
	1200 2800 1200 3100
Wire Wire Line
	1200 2900 1750 2900
Connection ~ 1200 2900
$Comp
L GND #PWR07
U 1 1 57315D32
P 1200 3100
F 0 "#PWR07" H 1200 2850 50  0001 C CNN
F 1 "GND" H 1205 2927 50  0000 C CNN
F 2 "" H 1200 3100 50  0000 C CNN
F 3 "" H 1200 3100 50  0000 C CNN
	1    1200 3100
	1    0    0    -1  
$EndComp
Text GLabel 1750 2100 0    60   Input ~ 0
FPGA_Signal1
Text GLabel 1750 2200 0    60   Input ~ 0
FPGA_Signal2
$Comp
L R R2
U 1 1 57321A9B
P 9450 4700
F 0 "R2" V 9350 4600 50  0000 C CNN
F 1 "200" V 9350 4850 50  0000 C CNN
F 2 "Dipoles_SMD:R_0603" H 9520 4708 50  0001 L CNN
F 3 "http://www.vishay.com/docs/20035/dcrcwe3.pdf" H 9520 4662 50  0001 L CNN
F 4 "Vishay" H 9450 4700 60  0001 C CNN "MFN"
F 5 "CRCW0603200RFKEAHP" H 9450 4700 60  0001 C CNN "MFP"
F 6 "digikey" H 9450 4700 60  0001 C CNN "D1"
F 7 "mouser" H 9450 4700 60  0001 C CNN "D2"
F 8 "541-200S" H 9450 4700 60  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/vishay-dale/CRCW0603200RFKEAHP/541-200SCT-ND/5326826" H 9450 4700 60  0001 C CNN "D1PL"
F 10 "_" H 9450 4700 60  0001 C CNN "D2PN"
F 11 "_" H 9450 4700 60  0001 C CNN "D2PL"
F 12 "0603" H 9450 4700 60  0001 C CNN "Package"
F 13 "_" V 9327 4700 60  0000 C CNN "Description"
F 14 "_" H 9450 4700 60  0001 C CNN "Voltage"
F 15 "1/4" H 9450 4700 60  0001 C CNN "Power"
F 16 "1%" H 9450 4700 60  0001 C CNN "Tolerance"
F 17 "_" H 9450 4700 60  0001 C CNN "Temperature"
F 18 "_" H 9450 4700 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 9450 4700 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 9450 4700 60  0001 C CNN "Cont.Current"
F 21 "_" H 9450 4700 60  0001 C CNN "Frequency"
F 22 "_" H 9450 4700 60  0001 C CNN "ResonnanceFreq"
	1    9450 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4100 5500 3250
Wire Wire Line
	4550 4100 5500 4100
Connection ~ 5150 4100
Wire Wire Line
	4550 4100 4550 3250
$Comp
L uIMU-2 U1
U 1 1 575B4F78
P 8550 2500
F 0 "U1" H 8150 3450 60  0000 C CNN
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
L GND #PWR08
U 1 1 575B518E
P 8600 3350
F 0 "#PWR08" H 8600 3100 50  0001 C CNN
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
$Comp
L +3V3 #PWR09
U 1 1 575B5739
P 5650 2250
F 0 "#PWR09" H 5650 2100 50  0001 C CNN
F 1 "+3V3" H 5665 2423 50  0000 C CNN
F 2 "" H 5650 2250 50  0000 C CNN
F 3 "" H 5650 2250 50  0000 C CNN
	1    5650 2250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR010
U 1 1 575B5986
P 7800 1700
F 0 "#PWR010" H 7800 1550 50  0001 C CNN
F 1 "+3V3" H 7815 1873 50  0000 C CNN
F 2 "" H 7800 1700 50  0000 C CNN
F 3 "" H 7800 1700 50  0000 C CNN
	1    7800 1700
	1    0    0    -1  
$EndComp
Text GLabel 9750 2700 2    60   Input ~ 0
IMU_RX0
Text GLabel 9750 2600 2    60   Input ~ 0
IMU_TX0
NoConn ~ 7900 2100
NoConn ~ 7900 2200
NoConn ~ 7900 2300
NoConn ~ 7900 2600
NoConn ~ 7900 2700
Text GLabel 7050 2800 0    60   Input ~ 0
IMU_RST#
NoConn ~ 9750 2500
Text Notes 6050 5050 0    60   ~ 0
SYNCHRONISATION SIGNAL ??
$Comp
L C C1
U 1 1 575B5F6E
P 7200 2100
F 0 "C1" H 7315 2146 50  0000 L CNN
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
L CONN_01X05 P2
U 1 1 575F3C4A
P 9400 5250
F 0 "P2" H 9477 5389 50  0000 L CNN
F 1 "CONN_01X05" H 9477 5298 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 9477 5207 50  0000 L CNN
F 3 "" H 9400 5250 50  0000 C CNN
F 4 "_" H 9400 5250 60  0001 C CNN "MFN"
F 5 "_" H 9400 5250 60  0001 C CNN "MFP"
F 6 "digikey" H 9400 5250 60  0001 C CNN "D1"
F 7 "mouser" H 9400 5250 60  0001 C CNN "D2"
F 8 "_" H 9400 5250 60  0001 C CNN "D1PN"
F 9 "_" H 9400 5250 60  0001 C CNN "D1PL"
F 10 "_" H 9400 5250 60  0001 C CNN "D2PN"
F 11 "_" H 9400 5250 60  0001 C CNN "D2PL"
F 12 "_" H 9400 5250 60  0001 C CNN "Package"
F 13 "_" H 9477 5108 60  0000 L CNN "Description"
F 14 "_" H 9400 5250 60  0001 C CNN "Voltage"
F 15 "_" H 9400 5250 60  0001 C CNN "Power"
F 16 "_" H 9400 5250 60  0001 C CNN "Tolerance"
F 17 "_" H 9400 5250 60  0001 C CNN "Temperature"
F 18 "_" H 9400 5250 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 9400 5250 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 9400 5250 60  0001 C CNN "Cont.Current"
F 21 "_" H 9400 5250 60  0001 C CNN "Frequency"
F 22 "_" H 9400 5250 60  0001 C CNN "ResonnanceFreq"
	1    9400 5250
	1    0    0    -1  
$EndComp
Text GLabel 9200 5350 0    60   Input ~ 0
IMU_RST#
$Comp
L +3V3 #PWR011
U 1 1 575F3F0D
P 8400 5450
F 0 "#PWR011" H 8400 5300 50  0001 C CNN
F 1 "+3V3" H 8415 5623 50  0000 C CNN
F 2 "" H 8400 5450 50  0000 C CNN
F 3 "" H 8400 5450 50  0000 C CNN
	1    8400 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 575F3F33
P 8800 5250
F 0 "#PWR012" H 8800 5000 50  0001 C CNN
F 1 "GND" V 8805 5122 50  0000 R CNN
F 2 "" H 8800 5250 50  0000 C CNN
F 3 "" H 8800 5250 50  0000 C CNN
	1    8800 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 5250 9200 5250
Wire Wire Line
	9200 5450 8400 5450
$Comp
L TXB0106PWR U2
U 1 1 57310454
P 5050 3050
F 0 "U2" H 5025 4349 60  0000 C CNN
F 1 "TXB0106PWR" H 5025 4243 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 5025 4137 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0106.pdf" H 5050 3050 60  0001 C CNN
F 4 "Texas Instruments" H 5050 3050 60  0001 C CNN "MFN"
F 5 "TXB0106PWR" H 5050 3050 60  0001 C CNN "MFP"
F 6 "digikey" H 5050 3050 60  0001 C CNN "D1"
F 7 "mouser" H 5050 3050 60  0001 C CNN "D2"
F 8 "296-23759" H 5050 3050 60  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/texas-instruments/TXB0106PWR/296-23759-2-ND/1951119" H 5050 3050 60  0001 C CNN "D1PL"
F 10 "_" H 5050 3050 60  0001 C CNN "D2PN"
F 11 "_" H 5050 3050 60  0001 C CNN "D2PL"
F 12 "_" H 5050 3050 60  0001 C CNN "Package"
F 13 "_" H 5025 4031 60  0000 C CNN "Description"
F 14 "_" H 5050 3050 60  0001 C CNN "Voltage"
F 15 "_" H 5050 3050 60  0001 C CNN "Power"
F 16 "_" H 5050 3050 60  0001 C CNN "Tolerance"
F 17 "_" H 5050 3050 60  0001 C CNN "Temperature"
F 18 "_" H 5050 3050 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 5050 3050 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 5050 3050 60  0001 C CNN "Cont.Current"
F 21 "_" H 5050 3050 60  0001 C CNN "Frequency"
F 22 "_" H 5050 3050 60  0001 C CNN "ResonnanceFreq"
	1    5050 3050
	1    0    0    -1  
$EndComp
Text GLabel 7900 2400 0    60   Input ~ 0
IMU_RX1
Text GLabel 7900 2500 0    60   Input ~ 0
IMU_TX1
Text GLabel 5500 2850 2    60   Input ~ 0
IMU_RX1
Text GLabel 5500 2750 2    60   Input ~ 0
IMU_TX1
Text GLabel 4550 2850 0    60   Input ~ 0
IMU_RX1_2V5
Text GLabel 4550 2750 0    60   Input ~ 0
IMU_TX1_2V5
Text GLabel 1750 2600 0    60   Input ~ 0
IMU_RX1_2V5
Text GLabel 1750 2700 0    60   Input ~ 0
IMU_TX1_2V5
$Comp
L R R3
U 1 1 57603F9B
P 7350 2650
F 0 "R3" H 7420 2749 50  0000 L CNN
F 1 "10k" H 7420 2658 50  0000 L CNN
F 2 "Dipoles_SMD:R_0603" H 7420 2612 50  0001 L CNN
F 3 "http://www.vishay.com/docs/20065/rcse3.pdf" H 7350 2650 50  0001 C CNN
F 4 "Vishay" H 7350 2650 60  0001 C CNN "MFN"
F 5 "RCS060310K0FKEA" H 7350 2650 60  0001 C CNN "MFP"
F 6 "digikey" H 7350 2650 60  0001 C CNN "D1"
F 7 "mouser" H 7350 2650 60  0001 C CNN "D2"
F 8 "541-2795" H 7350 2650 60  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/vishay-dale/RCS060310K0FKEA/541-2795-1-ND/5867088" H 7350 2650 60  0001 C CNN "D1PL"
F 10 "_" H 7350 2650 60  0001 C CNN "D2PN"
F 11 "_" H 7350 2650 60  0001 C CNN "D2PL"
F 12 "0603" H 7350 2650 60  0001 C CNN "Package"
F 13 "_" H 7420 2559 60  0000 L CNN "Description"
F 14 "_" H 7350 2650 60  0001 C CNN "Voltage"
F 15 "1/4" H 7350 2650 60  0001 C CNN "Power"
F 16 "1%" H 7350 2650 60  0001 C CNN "Tolerance"
F 17 "_" H 7350 2650 60  0001 C CNN "Temperature"
F 18 "_" H 7350 2650 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 7350 2650 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 7350 2650 60  0001 C CNN "Cont.Current"
F 21 "_" H 7350 2650 60  0001 C CNN "Frequency"
F 22 "_" H 7350 2650 60  0001 C CNN "ResonnanceFreq"
	1    7350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2800 7900 2800
Connection ~ 7350 2800
$Comp
L +3V3 #PWR013
U 1 1 5760404C
P 7350 2500
F 0 "#PWR013" H 7350 2350 50  0001 C CNN
F 1 "+3V3" H 7365 2673 50  0000 C CNN
F 2 "" H 7350 2500 50  0000 C CNN
F 3 "" H 7350 2500 50  0000 C CNN
	1    7350 2500
	1    0    0    -1  
$EndComp
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
L GND #PWR014
U 1 1 5761FF48
P 7000 2250
F 0 "#PWR014" H 7000 2000 50  0001 C CNN
F 1 "GND" H 7005 2077 50  0000 C CNN
F 2 "" H 7000 2250 50  0000 C CNN
F 3 "" H 7000 2250 50  0000 C CNN
	1    7000 2250
	1    0    0    -1  
$EndComp
Connection ~ 7000 2250
$Comp
L C C2
U 1 1 5763515D
P 6850 2000
F 0 "C2" H 6965 2046 50  0000 L CNN
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
L C C3
U 1 1 579F709C
P 3700 2400
F 0 "C3" H 3815 2446 50  0000 L CNN
F 1 "100n" H 3815 2355 50  0000 L CNN
F 2 "Dipoles_SMD:C_0603" H 3738 2250 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_highreliability_general_en.pdf" H 3700 2400 50  0001 C CNN
F 4 "TDK" H 3700 2400 60  0001 C CNN "MFN"
F 5 "_CGJ3E2X7R1C104K080AA" H 3700 2400 60  0001 C CNN "MFP"
F 6 "digikey" H 3700 2400 60  0001 C CNN "D1"
F 7 "mouser" H 3700 2400 60  0001 C CNN "D2"
F 8 "445-8136" H 3700 2400 60  0001 C CNN "D1PN"
F 9 "http://www.digikey.com/product-detail/en/tdk-corporation/CGJ3E2X7R1C104K080AA/445-8136-1-ND/2812154" H 3700 2400 60  0001 C CNN "D1PL"
F 10 "_" H 3700 2400 60  0001 C CNN "D2PN"
F 11 "_" H 3700 2400 60  0001 C CNN "D2PL"
F 12 "0603" H 3700 2400 60  0001 C CNN "Package"
F 13 "_" H 3700 2400 60  0000 C CNN "Description"
F 14 "16" H 3700 2400 60  0001 C CNN "Voltage"
F 15 "_" H 3700 2400 60  0001 C CNN "Power"
F 16 "10%" H 3700 2400 60  0001 C CNN "Tolerance"
F 17 "X7R" H 3700 2400 60  0001 C CNN "Temperature"
F 18 "_" H 3700 2400 60  0001 C CNN "ReverseVoltage"
F 19 "_" H 3700 2400 60  0001 C CNN "ForwardVoltage"
F 20 "_" H 3700 2400 60  0001 C CNN "Cont.Current"
F 21 "_" H 3700 2400 60  0001 C CNN "Frequency"
F 22 "_" H 3700 2400 60  0001 C CNN "ResonnanceFreq"
	1    3700 2400
	1    0    0    -1  
$EndComp
Connection ~ 4400 2250
$Comp
L GND #PWR?
U 1 1 579F7528
P 3700 2550
F 0 "#PWR?" H 3700 2300 50  0001 C CNN
F 1 "GND" H 3705 2377 50  0000 C CNN
F 2 "" H 3700 2550 50  0000 C CNN
F 3 "" H 3700 2550 50  0000 C CNN
	1    3700 2550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
