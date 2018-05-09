EESchema Schematic File Version 4
LIBS:ovc2_mobo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 12
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
L tx2:Jetson U3
U 13 1 5994104A
P 4450 3350
F 0 "U3" H 4956 3815 50  0000 C CNN
F 1 "Jetson" H 4956 3724 50  0000 C CNN
F 2 "Jetson:JETSON_TX" H 4450 3350 50  0001 C CNN
F 3 "" H 4450 3350 50  0001 C CNN
F 4 "samtec" H 4450 3350 50  0001 C CNN "D1"
F 5 "SEAM-50-03.5-S-08-2-A-K-TR" H 4450 3350 50  0001 C CNN "D1PN"
F 6 "Interface for TX2 module" H 4956 3915 50  0001 C CNN "Description"
F 7 "Samtec" H 4450 3350 50  0001 C CNN "MFN"
F 8 "SEAM-50-03.5-S-08-2-A-K-TR" H 4956 3915 50  0001 C CNN "MPN"
	13   4450 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR088
U 1 1 599418A5
P 5600 3450
F 0 "#PWR088" H 5600 3200 50  0001 C CNN
F 1 "GND" H 5605 3277 50  0001 C CNN
F 2 "" H 5600 3450 50  0001 C CNN
F 3 "" H 5600 3450 50  0001 C CNN
	1    5600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3350 5600 3350
Wire Wire Line
	5450 3450 5600 3450
Wire Wire Line
	5600 3450 5600 3350
NoConn ~ 5450 3150
NoConn ~ 5450 3250
NoConn ~ 5450 3550
$EndSCHEMATC
