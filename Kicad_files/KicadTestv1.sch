EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 4650 2850 0    50   Input ~ 0
A0
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5DDC2AFB
P 3250 3700
F 0 "A1" H 3250 4881 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 3250 4790 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 3250 3700 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 3250 3700 50  0001 C CNN
	1    3250 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5DDC58F5
P 3450 2450
F 0 "#PWR0103" H 3450 2300 50  0001 C CNN
F 1 "+5V" H 3465 2623 50  0000 C CNN
F 2 "" H 3450 2450 50  0001 C CNN
F 3 "" H 3450 2450 50  0001 C CNN
	1    3450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DDC63E1
P 3250 5050
F 0 "#PWR0105" H 3250 4800 50  0001 C CNN
F 1 "GND" H 3255 4877 50  0000 C CNN
F 2 "" H 3250 5050 50  0001 C CNN
F 3 "" H 3250 5050 50  0001 C CNN
	1    3250 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5050 3250 4950
Wire Wire Line
	3450 2450 3450 2550
$Comp
L Connector_Generic_MountingPin:Conn_01x10_MountingPin J1
U 1 1 5DDC7E9D
P 5750 3800
F 0 "J1" H 5838 3714 50  0000 L CNN
F 1 "Conn_01x10_MountingPin" H 5838 3623 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x10_P2.00mm_Vertical" H 5750 3800 50  0001 C CNN
F 3 "~" H 5750 3800 50  0001 C CNN
	1    5750 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5DDCF554
P 5100 2950
F 0 "J2" H 5180 2942 50  0000 L CNN
F 1 "Conn_01x04" H 5180 2851 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Vertical" H 5100 2950 50  0001 C CNN
F 3 "~" H 5100 2950 50  0001 C CNN
	1    5100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3150 4700 3150
Wire Wire Line
	4900 2850 4650 2850
Text GLabel 5300 3400 0    50   Input ~ 0
Tx
Text GLabel 5300 3500 0    50   Input ~ 0
Rx
Text GLabel 5300 4000 0    50   Input ~ 0
RST
Wire Wire Line
	5550 3400 5300 3400
Wire Wire Line
	5300 3500 5550 3500
Wire Wire Line
	5550 4000 5300 4000
Text GLabel 2350 4200 0    50   Input ~ 0
Tx
Text GLabel 2350 4100 0    50   Input ~ 0
Rx
Wire Wire Line
	2750 4100 2350 4100
Wire Wire Line
	2750 4200 2350 4200
Text GLabel 2350 4000 0    50   Input ~ 0
RST
Connection ~ 3250 4950
Wire Wire Line
	3250 4950 3250 4800
Wire Wire Line
	4700 3150 4700 4300
Wire Wire Line
	4700 4300 5550 4300
Wire Wire Line
	4700 4950 4700 4300
Connection ~ 4700 4300
Wire Wire Line
	4050 4200 4050 3050
Wire Wire Line
	4050 2550 3450 2550
Wire Wire Line
	4050 4200 5550 4200
Connection ~ 3450 2550
Wire Wire Line
	3450 2550 3450 2700
Wire Wire Line
	4050 3050 4900 3050
Connection ~ 4050 3050
$Comp
L Switch:SW_Push SW1
U 1 1 5DDC1B30
P 4400 2450
F 0 "SW1" V 4354 2598 50  0000 L CNN
F 1 "SW_Push" V 4445 2598 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4400 2650 50  0001 C CNN
F 3 "~" H 4400 2650 50  0001 C CNN
	1    4400 2450
	0    1    1    0   
$EndComp
Text GLabel 4400 2000 1    50   Input ~ 0
D2
Wire Wire Line
	4400 2000 4400 2250
Text GLabel 2350 3300 0    50   Input ~ 0
D2
Wire Wire Line
	2750 3300 2350 3300
Text GLabel 4100 4500 0    50   Input ~ 0
D3
$Comp
L Device:LED D1
U 1 1 5DDC65F8
P 4450 4800
F 0 "D1" V 4489 4683 50  0000 R CNN
F 1 "LED" V 4398 4683 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4450 4800 50  0001 C CNN
F 3 "~" H 4450 4800 50  0001 C CNN
	1    4450 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 4950 4450 4950
Connection ~ 4050 2650
Wire Wire Line
	4050 2550 4050 2650
Wire Wire Line
	4050 2650 4050 3050
Wire Wire Line
	4400 2650 4350 2650
$Comp
L Device:R R1
U 1 1 5DDC34ED
P 4200 2650
F 0 "R1" V 3993 2650 50  0000 C CNN
F 1 "10k" V 4084 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4130 2650 50  0001 C CNN
F 3 "~" H 4200 2650 50  0001 C CNN
	1    4200 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5DDCE033
P 4250 4500
F 0 "R2" V 4150 4500 50  0000 C CNN
F 1 "330" V 4350 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4180 4500 50  0001 C CNN
F 3 "~" H 4250 4500 50  0001 C CNN
	1    4250 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 4500 4450 4500
Wire Wire Line
	4450 4500 4450 4650
Connection ~ 4450 4950
Wire Wire Line
	4450 4950 4700 4950
Text GLabel 2350 3400 0    50   Input ~ 0
D3
Wire Wire Line
	2750 3400 2350 3400
Wire Wire Line
	2750 4000 2350 4000
$EndSCHEMATC