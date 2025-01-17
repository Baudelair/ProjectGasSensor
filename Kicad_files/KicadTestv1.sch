EESchema Schematic File Version 4
LIBS:KicadTestv1-cache
EELAYER 26 0
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
Text GLabel 5600 1750 0    50   Input ~ 0
A0
$Comp
L KicadTestv1-rescue:Arduino_UNO_R3-MCU_Module A1
U 1 1 5DDC2AFB
P 4200 2600
F 0 "A1" H 4200 3781 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 4200 3690 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 4200 2600 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4200 2600 50  0001 C CNN
	1    4200 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5DDC58F5
P 4400 1350
F 0 "#PWR0103" H 4400 1200 50  0001 C CNN
F 1 "+5V" H 4415 1523 50  0000 C CNN
F 2 "" H 4400 1350 50  0001 C CNN
F 3 "" H 4400 1350 50  0001 C CNN
	1    4400 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DDC63E1
P 4200 3950
F 0 "#PWR0105" H 4200 3700 50  0001 C CNN
F 1 "GND" H 4205 3777 50  0000 C CNN
F 2 "" H 4200 3950 50  0001 C CNN
F 3 "" H 4200 3950 50  0001 C CNN
	1    4200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3950 4200 3850
Wire Wire Line
	4400 1350 4400 1450
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5DDCF554
P 6050 1850
F 0 "J2" H 6130 1842 50  0000 L CNN
F 1 "Conn_01x04" H 6130 1751 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Vertical" H 6050 1850 50  0001 C CNN
F 3 "~" H 6050 1850 50  0001 C CNN
	1    6050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2050 5650 2050
Wire Wire Line
	5850 1750 5600 1750
Text GLabel 6250 2300 0    50   Input ~ 0
Tx
Text GLabel 6250 2400 0    50   Input ~ 0
Rx
Text GLabel 6250 2600 0    50   Input ~ 0
RST
Wire Wire Line
	6500 2300 6250 2300
Wire Wire Line
	6250 2400 6500 2400
Text GLabel 3300 3100 0    50   Input ~ 0
Tx
Text GLabel 3300 3000 0    50   Input ~ 0
Rx
Wire Wire Line
	3700 3000 3300 3000
Wire Wire Line
	3700 3100 3300 3100
Text GLabel 3300 2900 0    50   Input ~ 0
RST
Connection ~ 4200 3850
Wire Wire Line
	4200 3850 4200 3700
Wire Wire Line
	5000 1450 4400 1450
Connection ~ 4400 1450
Wire Wire Line
	4400 1450 4400 1600
Wire Wire Line
	5000 1950 5850 1950
$Comp
L Switch:SW_Push SW1
U 1 1 5DDC1B30
P 5350 1350
F 0 "SW1" V 5304 1498 50  0000 L CNN
F 1 "SW_Push" V 5395 1498 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5350 1550 50  0001 C CNN
F 3 "~" H 5350 1550 50  0001 C CNN
	1    5350 1350
	0    1    1    0   
$EndComp
Text GLabel 5350 900  1    50   Input ~ 0
D2
Wire Wire Line
	5350 900  5350 1150
Text GLabel 3300 2200 0    50   Input ~ 0
D2
Wire Wire Line
	3700 2200 3300 2200
Text GLabel 5050 3400 0    50   Input ~ 0
D3
$Comp
L Device:LED D1
U 1 1 5DDC65F8
P 5400 3700
F 0 "D1" V 5439 3583 50  0000 R CNN
F 1 "LED" V 5348 3583 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 5400 3700 50  0001 C CNN
F 3 "~" H 5400 3700 50  0001 C CNN
	1    5400 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3850 5400 3850
Connection ~ 5000 1550
Wire Wire Line
	5000 1450 5000 1550
Wire Wire Line
	5000 1550 5000 1950
Wire Wire Line
	5350 1550 5300 1550
$Comp
L Device:R R1
U 1 1 5DDC34ED
P 5150 1550
F 0 "R1" V 4943 1550 50  0000 C CNN
F 1 "10k" V 5034 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5080 1550 50  0001 C CNN
F 3 "~" H 5150 1550 50  0001 C CNN
	1    5150 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5DDCE033
P 5200 3400
F 0 "R2" V 5100 3400 50  0000 C CNN
F 1 "330" V 5300 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5130 3400 50  0001 C CNN
F 3 "~" H 5200 3400 50  0001 C CNN
	1    5200 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 3400 5400 3400
Wire Wire Line
	5400 3400 5400 3550
Connection ~ 5400 3850
Wire Wire Line
	5400 3850 5650 3850
Text GLabel 3300 2300 0    50   Input ~ 0
D3
Wire Wire Line
	3700 2300 3300 2300
Wire Wire Line
	3700 2900 3300 2900
$Comp
L Shield_Arduino:RN2483A U1
U 1 1 5DE7C31C
P 6700 2650
F 0 "U1" V 6654 2878 50  0000 L CNN
F 1 "RN2483A" V 6745 2878 50  0000 L CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" H 7050 2600 50  0001 C CNN
F 3 "" H 7050 2600 50  0001 C CNN
	1    6700 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 2050 5650 3000
Wire Wire Line
	6500 3000 5650 3000
Connection ~ 5650 3000
Wire Wire Line
	5650 3000 5650 3850
Wire Wire Line
	6500 2600 6250 2600
$Comp
L power:+3V3 #PWR0101
U 1 1 5DE826CD
P 4250 1350
F 0 "#PWR0101" H 4250 1200 50  0001 C CNN
F 1 "+3V3" H 4265 1523 50  0000 C CNN
F 2 "" H 4250 1350 50  0001 C CNN
F 3 "" H 4250 1350 50  0001 C CNN
	1    4250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1350 4250 1600
Wire Wire Line
	4250 1600 4300 1600
$Comp
L power:+3V3 #PWR0102
U 1 1 5DE833AF
P 5900 2750
F 0 "#PWR0102" H 5900 2600 50  0001 C CNN
F 1 "+3V3" H 5915 2923 50  0000 C CNN
F 2 "" H 5900 2750 50  0001 C CNN
F 3 "" H 5900 2750 50  0001 C CNN
	1    5900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2800 5900 2800
Wire Wire Line
	5900 2800 5900 2750
Wire Wire Line
	6500 2900 5900 2900
Wire Wire Line
	5900 2900 5900 2800
Connection ~ 5900 2800
Text GLabel 5000 2600 2    50   Input ~ 0
A0
Wire Wire Line
	5000 2600 4700 2600
$Comp
L Device:R R7
U 1 1 5DE7BDA4
P 7950 4750
F 0 "R7" V 7743 4750 50  0000 C CNN
F 1 "1k" V 7834 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7880 4750 50  0001 C CNN
F 3 "~" H 7950 4750 50  0001 C CNN
	1    7950 4750
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5DE7C1DA
P 4150 5350
F 0 "C1" H 4265 5396 50  0000 L CNN
F 1 "100n" H 4265 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 4188 5200 50  0001 C CNN
F 3 "~" H 4150 5350 50  0001 C CNN
	1    4150 5350
	1    0    0    -1  
$EndComp
$Comp
L Shield_Arduino_suite:LTC1050 U2
U 1 1 5DE7C650
P 5800 4750
F 0 "U2" H 6394 4796 50  0000 L CNN
F 1 "LTC1050" H 6394 4705 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 5800 4750 50  0001 C CNN
F 3 "" H 5800 4750 50  0001 C CNN
	1    5800 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5DE7D28B
P 7500 4150
F 0 "R6" H 7430 4104 50  0000 R CNN
F 1 "100k" H 7430 4195 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7430 4150 50  0001 C CNN
F 3 "~" H 7500 4150 50  0001 C CNN
	1    7500 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5DE7D95D
P 3600 4850
F 0 "R3" V 3393 4850 50  0000 C CNN
F 1 "10k" V 3484 4850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3530 4850 50  0001 C CNN
F 3 "~" H 3600 4850 50  0001 C CNN
	1    3600 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5DE7E008
P 4600 5350
F 0 "R4" H 4530 5304 50  0000 R CNN
F 1 "100k" H 4530 5395 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4530 5350 50  0001 C CNN
F 3 "~" H 4600 5350 50  0001 C CNN
	1    4600 5350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5DE7E6AA
P 4950 5400
F 0 "R5" H 4800 5300 50  0000 C CNN
F 1 "1k" H 4834 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4880 5400 50  0001 C CNN
F 3 "~" H 4950 5400 50  0001 C CNN
	1    4950 5400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 5DE7F32E
P 8300 5100
F 0 "C4" H 8415 5146 50  0000 L CNN
F 1 "100n" H 8415 5055 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 8338 4950 50  0001 C CNN
F 3 "~" H 8300 5100 50  0001 C CNN
	1    8300 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DE7FA7C
P 6950 4150
F 0 "C2" H 7065 4196 50  0000 L CNN
F 1 "1µ" H 7065 4105 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W4.5mm_P5.00mm" H 6988 4000 50  0001 C CNN
F 3 "~" H 6950 4150 50  0001 C CNN
	1    6950 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DE80278
P 8200 4000
F 0 "C3" H 8315 4046 50  0000 L CNN
F 1 "100n" H 8315 3955 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 8238 3850 50  0001 C CNN
F 3 "~" H 8200 4000 50  0001 C CNN
	1    8200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4850 4150 4850
Wire Wire Line
	5450 4850 5450 4900
Wire Wire Line
	4150 5200 4150 4850
Connection ~ 4150 4850
Wire Wire Line
	4150 4850 4600 4850
Wire Wire Line
	4600 5200 4600 4850
Connection ~ 4600 4850
Wire Wire Line
	4600 4850 5450 4850
Wire Wire Line
	4150 5500 4150 5850
Wire Wire Line
	4150 5850 4600 5850
Wire Wire Line
	4600 5850 4600 5500
Wire Wire Line
	4950 5550 4950 5850
Wire Wire Line
	4950 5850 4600 5850
Connection ~ 4600 5850
Wire Wire Line
	4950 5250 4950 4600
Wire Wire Line
	4950 4600 5250 4600
Wire Wire Line
	5850 5000 5850 5850
Wire Wire Line
	5850 5850 4950 5850
Connection ~ 4950 5850
Wire Wire Line
	6950 4000 5250 4000
Wire Wire Line
	5250 4000 5250 4600
Connection ~ 5250 4600
Wire Wire Line
	5250 4600 5450 4600
Wire Wire Line
	6350 4750 6950 4750
Wire Wire Line
	6950 4750 6950 4300
Wire Wire Line
	6950 4750 7500 4750
Wire Wire Line
	7500 4750 7500 4300
Connection ~ 6950 4750
Wire Wire Line
	7500 4000 6950 4000
Connection ~ 6950 4000
Wire Wire Line
	5850 5850 6500 5850
Wire Wire Line
	8300 5850 8300 5250
Connection ~ 5850 5850
Wire Wire Line
	8300 4950 8300 4750
Wire Wire Line
	8300 4750 8100 4750
Wire Wire Line
	7800 4750 7500 4750
Connection ~ 7500 4750
Wire Wire Line
	5850 4500 5850 3750
Wire Wire Line
	5850 3750 8200 3750
Wire Wire Line
	8200 3750 8200 3850
$Comp
L power:GND #PWR0104
U 1 1 5DEB80BB
P 6500 6000
F 0 "#PWR0104" H 6500 5750 50  0001 C CNN
F 1 "GND" H 6505 5827 50  0000 C CNN
F 2 "" H 6500 6000 50  0001 C CNN
F 3 "" H 6500 6000 50  0001 C CNN
	1    6500 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DEB8567
P 8200 4350
F 0 "#PWR0106" H 8200 4100 50  0001 C CNN
F 1 "GND" H 8205 4177 50  0000 C CNN
F 2 "" H 8200 4350 50  0001 C CNN
F 3 "" H 8200 4350 50  0001 C CNN
	1    8200 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5DEB897C
P 8400 3750
F 0 "#PWR0107" H 8400 3600 50  0001 C CNN
F 1 "+5V" H 8415 3923 50  0000 C CNN
F 2 "" H 8400 3750 50  0001 C CNN
F 3 "" H 8400 3750 50  0001 C CNN
	1    8400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3750 8200 3750
Connection ~ 8200 3750
Wire Wire Line
	8200 4150 8200 4350
Wire Wire Line
	6500 6000 6500 5850
Connection ~ 6500 5850
Wire Wire Line
	6500 5850 8300 5850
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5DEBE79D
P 2900 5050
F 0 "J1" H 2980 5042 50  0000 L CNN
F 1 "Conn_01x04" H 2980 4951 50  0000 L CNN
F 2 "ShieldArduino_Empreintes:TO-5-4_1" H 2900 5050 50  0001 C CNN
F 3 "~" H 2900 5050 50  0001 C CNN
	1    2900 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 4950 3600 4950
Wire Wire Line
	3600 4950 3600 5850
Wire Wire Line
	3600 5850 4150 5850
Connection ~ 4150 5850
Wire Wire Line
	3100 5050 3350 5050
Wire Wire Line
	3350 5050 3350 4850
Wire Wire Line
	3350 4850 3450 4850
$Comp
L power:+3V3 #PWR0108
U 1 1 5DEC5933
P 3250 4600
F 0 "#PWR0108" H 3250 4450 50  0001 C CNN
F 1 "+3V3" H 3265 4773 50  0000 C CNN
F 2 "" H 3250 4600 50  0001 C CNN
F 3 "" H 3250 4600 50  0001 C CNN
	1    3250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5150 3250 5150
Wire Wire Line
	3250 5150 3250 4600
Text GLabel 8550 4750 2    50   Input ~ 0
A1
Text GLabel 5000 2700 2    50   Input ~ 0
A1
Wire Wire Line
	8550 4750 8300 4750
Connection ~ 8300 4750
Wire Wire Line
	5000 2700 4700 2700
$EndSCHEMATC
