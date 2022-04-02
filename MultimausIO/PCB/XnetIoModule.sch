EESchema Schematic File Version 4
EELAYER 30 0
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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 61923E36
P 5050 3550
F 0 "A1" H 5450 2500 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5600 2400 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5050 3550 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5050 3550 50  0001 C CNN
	1    5050 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J2
U 1 1 61925A72
P 3050 3850
F 0 "J2" H 2950 4450 50  0000 C CNN
F 1 "relay" H 2900 4350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 3050 3850 50  0001 C CNN
F 3 "~" H 3050 3850 50  0001 C CNN
	1    3050 3850
	1    0    0    1   
$EndComp
$Comp
L Interface_UART:MAX485E U1
U 1 1 61927045
P 3150 1650
F 0 "U1" H 2900 2250 50  0000 C CNN
F 1 "MAX485E" H 2900 2150 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3150 950 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 3150 1700 50  0001 C CNN
	1    3150 1650
	-1   0    0    -1  
$EndComp
$Comp
L Connector:6P6C J1
U 1 1 61928C12
P 1700 1700
F 0 "J1" H 1757 2267 50  0000 C CNN
F 1 "6P6C" H 1757 2176 50  0000 C CNN
F 2 "Connector_RJ:RJ25_Wayconn_MJEA-660X1_Horizontal" V 1700 1725 50  0001 C CNN
F 3 "~" V 1700 1725 50  0001 C CNN
	1    1700 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0101
U 1 1 61929AE1
P 2250 1150
F 0 "#PWR0101" H 2250 1000 50  0001 C CNN
F 1 "+12V" H 2265 1323 50  0000 C CNN
F 2 "" H 2250 1150 50  0001 C CNN
F 3 "" H 2250 1150 50  0001 C CNN
	1    2250 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 61929FEC
P 5150 2300
F 0 "#PWR0102" H 5150 2150 50  0001 C CNN
F 1 "+5V" H 5165 2473 50  0000 C CNN
F 2 "" H 5150 2300 50  0001 C CNN
F 3 "" H 5150 2300 50  0001 C CNN
	1    5150 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6192E957
P 2250 2150
F 0 "#PWR0103" H 2250 1900 50  0001 C CNN
F 1 "GND" H 2255 1977 50  0000 C CNN
F 2 "" H 2250 2150 50  0001 C CNN
F 3 "" H 2250 2150 50  0001 C CNN
	1    2250 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6192F0B0
P 3950 2100
F 0 "R1" H 4020 2146 50  0000 L CNN
F 1 "R" H 4020 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 2100 50  0001 C CNN
F 3 "~" H 3950 2100 50  0001 C CNN
	1    3950 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 1750 3650 1750
Wire Wire Line
	3650 1750 3650 1650
Wire Wire Line
	3650 1650 3550 1650
Wire Wire Line
	3950 1650 3950 1950
Wire Wire Line
	3650 1650 3950 1650
Connection ~ 3650 1650
Wire Wire Line
	3950 1650 4300 1650
Connection ~ 3950 1650
Wire Wire Line
	3550 1550 4300 1550
Wire Wire Line
	3550 1850 4300 1850
$Comp
L power:GND #PWR0104
U 1 1 619312AC
P 3150 2350
F 0 "#PWR0104" H 3150 2100 50  0001 C CNN
F 1 "GND" H 3155 2177 50  0000 C CNN
F 2 "" H 3150 2350 50  0001 C CNN
F 3 "" H 3150 2350 50  0001 C CNN
	1    3150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2350 3150 2250
$Comp
L power:+5V #PWR0105
U 1 1 619320BE
P 3150 850
F 0 "#PWR0105" H 3150 700 50  0001 C CNN
F 1 "+5V" H 3165 1023 50  0000 C CNN
F 2 "" H 3150 850 50  0001 C CNN
F 3 "" H 3150 850 50  0001 C CNN
	1    3150 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 850  3150 1150
Text Label 4300 1550 2    50   ~ 0
Rx
Text Label 4300 1850 2    50   ~ 0
Tx
Text Label 4300 1650 2    50   ~ 0
dir
Wire Wire Line
	4550 3050 4200 3050
Text Label 4200 3150 0    50   ~ 0
dir
Wire Wire Line
	4550 2950 4200 2950
Wire Wire Line
	4550 3150 4200 3150
Text Label 4200 3050 0    50   ~ 0
Tx
Text Label 4200 2950 0    50   ~ 0
Rx
$Comp
L power:GND #PWR0106
U 1 1 6193436E
P 3400 4400
F 0 "#PWR0106" H 3400 4150 50  0001 C CNN
F 1 "GND" H 3405 4227 50  0000 C CNN
F 2 "" H 3400 4400 50  0001 C CNN
F 3 "" H 3400 4400 50  0001 C CNN
	1    3400 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 61934946
P 3400 3200
F 0 "#PWR0107" H 3400 3050 50  0001 C CNN
F 1 "+5V" H 3415 3373 50  0000 C CNN
F 2 "" H 3400 3200 50  0001 C CNN
F 3 "" H 3400 3200 50  0001 C CNN
	1    3400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4250 3400 4250
Wire Wire Line
	3400 4250 3400 4400
Wire Wire Line
	3250 3350 3400 3350
Wire Wire Line
	3400 3350 3400 3200
Wire Wire Line
	3250 3450 3450 3450
Wire Wire Line
	3250 3550 3450 3550
Wire Wire Line
	3250 3650 3450 3650
Wire Wire Line
	3250 3750 3450 3750
Wire Wire Line
	3250 3850 3450 3850
Wire Wire Line
	3250 3950 3450 3950
Wire Wire Line
	3250 4050 3450 4050
Wire Wire Line
	3250 4150 3450 4150
Text Label 3450 3450 2    50   ~ 0
Rel1
Text Label 3450 3550 2    50   ~ 0
Rel2
Text Label 3450 3650 2    50   ~ 0
Rel3
Text Label 3450 3750 2    50   ~ 0
Rel4
Text Label 3450 3850 2    50   ~ 0
Rel5
Text Label 3450 3950 2    50   ~ 0
Rel6
Text Label 3450 4050 2    50   ~ 0
Rel7
Text Label 3450 4150 2    50   ~ 0
Rel8
Wire Wire Line
	4550 3250 4350 3250
Wire Wire Line
	4550 3350 4350 3350
Wire Wire Line
	4550 3450 4350 3450
Wire Wire Line
	4550 3550 4350 3550
Wire Wire Line
	4550 3650 4350 3650
Wire Wire Line
	4550 3750 4350 3750
Wire Wire Line
	4550 3850 4350 3850
Wire Wire Line
	4550 3950 4350 3950
Text Label 4350 3250 0    50   ~ 0
Rel1
Text Label 4350 3350 0    50   ~ 0
Rel2
Text Label 4350 3450 0    50   ~ 0
Rel3
Text Label 4350 3550 0    50   ~ 0
Rel4
Text Label 4350 3650 0    50   ~ 0
Rel5
Text Label 4350 3750 0    50   ~ 0
Rel6
Text Label 4350 3850 0    50   ~ 0
Rel7
Text Label 4350 3950 0    50   ~ 0
Rel8
Wire Wire Line
	5550 3050 5750 3050
Wire Wire Line
	5550 2950 5750 2950
Wire Wire Line
	5550 3350 5750 3350
Wire Wire Line
	5550 3550 5750 3550
Wire Wire Line
	5550 3650 5750 3650
Wire Wire Line
	5550 3750 5750 3750
Wire Wire Line
	5550 3850 5750 3850
Wire Wire Line
	5550 3950 5750 3950
Wire Wire Line
	5550 4050 5750 4050
Wire Wire Line
	5550 4150 5750 4150
Wire Wire Line
	5550 4250 5750 4250
NoConn ~ 5750 2950
NoConn ~ 5750 3050
NoConn ~ 5150 2550
NoConn ~ 4950 2550
NoConn ~ 5750 3350
$Comp
L power:GND #PWR0108
U 1 1 6194AE9D
P 5100 4900
F 0 "#PWR0108" H 5100 4650 50  0001 C CNN
F 1 "GND" H 5105 4727 50  0000 C CNN
F 2 "" H 5100 4900 50  0001 C CNN
F 3 "" H 5100 4900 50  0001 C CNN
	1    5100 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4900 5100 4800
Wire Wire Line
	5100 4800 5050 4800
Wire Wire Line
	5050 4800 5050 4550
Wire Wire Line
	5150 4550 5150 4800
Wire Wire Line
	5150 4800 5100 4800
Connection ~ 5100 4800
Text Label 5750 4050 0    50   ~ 0
SCL
Text Label 5750 3950 0    50   ~ 0
SDA
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 6194E89D
P 5600 1000
F 0 "J3" H 5680 1042 50  0000 L CNN
F 1 "DC-DC" H 5680 951 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 5600 1000 50  0001 C CNN
F 3 "~" H 5600 1000 50  0001 C CNN
	1    5600 1000
	0    1    -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J6
U 1 1 6194F9A8
P 7600 2900
F 0 "J6" H 7680 2942 50  0000 L CNN
F 1 "PWM" H 7680 2851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7600 2900 50  0001 C CNN
F 3 "~" H 7600 2900 50  0001 C CNN
	1    7600 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 619507E4
P 6250 1000
F 0 "J4" H 6330 992 50  0000 L CNN
F 1 "power_in" H 6330 901 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 6250 1000 50  0001 C CNN
F 3 "~" H 6250 1000 50  0001 C CNN
	1    6250 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 1300 5500 1200
$Comp
L power:+12V #PWR0109
U 1 1 619559AF
P 5150 1150
F 0 "#PWR0109" H 5150 1000 50  0001 C CNN
F 1 "+12V" H 5165 1323 50  0000 C CNN
F 2 "" H 5150 1150 50  0001 C CNN
F 3 "" H 5150 1150 50  0001 C CNN
	1    5150 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1300 5150 1150
Wire Wire Line
	5150 1300 5500 1300
Wire Wire Line
	6250 1300 6250 1200
Wire Wire Line
	5600 1200 5600 1350
Wire Wire Line
	6350 1350 6350 1200
$Comp
L power:GND #PWR0110
U 1 1 6195AC21
P 6650 1350
F 0 "#PWR0110" H 6650 1100 50  0001 C CNN
F 1 "GND" H 6655 1177 50  0000 C CNN
F 2 "" H 6650 1350 50  0001 C CNN
F 3 "" H 6650 1350 50  0001 C CNN
	1    6650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1350 6350 1350
Connection ~ 6350 1350
Wire Wire Line
	5500 1300 6250 1300
Connection ~ 5500 1300
Wire Wire Line
	5600 1350 6350 1350
$Comp
L power:+5V #PWR0111
U 1 1 6196205B
P 5950 1200
F 0 "#PWR0111" H 5950 1050 50  0001 C CNN
F 1 "+5V" H 5965 1373 50  0000 C CNN
F 2 "" H 5950 1200 50  0001 C CNN
F 3 "" H 5950 1200 50  0001 C CNN
	1    5950 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1200 5950 1200
$Comp
L Connector_Generic:Conn_01x06 J5
U 1 1 61963F4F
P 7550 4350
F 0 "J5" H 7630 4342 50  0000 L CNN
F 1 "PCA9685" H 7630 4251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical_SMD_Pin1Left" H 7550 4350 50  0001 C CNN
F 3 "~" H 7550 4350 50  0001 C CNN
	1    7550 4350
	1    0    0    1   
$EndComp
Wire Wire Line
	7150 4150 7350 4150
Wire Wire Line
	7150 4250 7350 4250
Wire Wire Line
	7150 4350 7350 4350
Wire Wire Line
	7150 4450 7350 4450
Wire Wire Line
	7200 2700 7400 2700
Wire Wire Line
	7200 2800 7400 2800
Wire Wire Line
	7200 2900 7400 2900
Text Label 7200 2700 0    50   ~ 0
En
Text Label 7200 2800 0    50   ~ 0
dir1
Text Label 7200 2900 0    50   ~ 0
dir2
Text Label 7150 3100 0    50   ~ 0
CS
$Comp
L power:+5V #PWR0112
U 1 1 6196E33E
P 7000 4000
F 0 "#PWR0112" H 7000 3850 50  0001 C CNN
F 1 "+5V" H 7015 4173 50  0000 C CNN
F 2 "" H 7000 4000 50  0001 C CNN
F 3 "" H 7000 4000 50  0001 C CNN
	1    7000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4050 7000 4000
Wire Wire Line
	7000 4050 7150 4050
Wire Wire Line
	7150 4150 7150 4050
Connection ~ 7150 4050
Wire Wire Line
	7150 4050 7350 4050
Text Label 7150 4250 0    50   ~ 0
SDA
Text Label 7150 4350 0    50   ~ 0
SCL
NoConn ~ 7150 4450
$Comp
L power:GND #PWR0113
U 1 1 61975BC4
P 7000 4600
F 0 "#PWR0113" H 7000 4350 50  0001 C CNN
F 1 "GND" H 7005 4427 50  0000 C CNN
F 2 "" H 7000 4600 50  0001 C CNN
F 3 "" H 7000 4600 50  0001 C CNN
	1    7000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4600 7000 4550
Wire Wire Line
	7000 4550 7350 4550
Wire Wire Line
	5250 2550 5250 2300
Wire Wire Line
	5250 2300 5150 2300
$Comp
L power:+12V #PWR0114
U 1 1 6197DF10
P 7050 2600
F 0 "#PWR0114" H 7050 2450 50  0001 C CNN
F 1 "+12V" H 7065 2773 50  0000 C CNN
F 2 "" H 7050 2600 50  0001 C CNN
F 3 "" H 7050 2600 50  0001 C CNN
	1    7050 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2600 7050 3000
Wire Wire Line
	7050 3000 7400 3000
$Comp
L Device:R R3
U 1 1 619812C7
P 7300 3300
F 0 "R3" H 7370 3346 50  0000 L CNN
F 1 "1R" H 7370 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7230 3300 50  0001 C CNN
F 3 "~" H 7300 3300 50  0001 C CNN
	1    7300 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 619817EF
P 7050 3300
F 0 "R2" H 7120 3346 50  0000 L CNN
F 1 "1R" H 7120 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6980 3300 50  0001 C CNN
F 3 "~" H 7050 3300 50  0001 C CNN
	1    7050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3150 7050 3100
Wire Wire Line
	7050 3100 7300 3100
Wire Wire Line
	7300 3150 7300 3100
Connection ~ 7300 3100
Wire Wire Line
	7300 3100 7400 3100
Wire Wire Line
	7300 3450 7050 3450
$Comp
L power:GND #PWR0115
U 1 1 6199909B
P 7050 3500
F 0 "#PWR0115" H 7050 3250 50  0001 C CNN
F 1 "GND" H 7055 3327 50  0000 C CNN
F 2 "" H 7050 3500 50  0001 C CNN
F 3 "" H 7050 3500 50  0001 C CNN
	1    7050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3500 7050 3450
Connection ~ 7050 3450
Text Label 5750 4150 0    50   ~ 0
CS
Wire Wire Line
	4350 4050 4550 4050
Wire Wire Line
	4350 4150 4550 4150
Wire Wire Line
	4350 4250 4550 4250
Text Label 5750 3550 2    50   ~ 0
En
Text Label 4350 4050 0    50   ~ 0
dir1
Text Label 4350 4150 0    50   ~ 0
dir2
NoConn ~ 5750 4250
NoConn ~ 5750 3850
NoConn ~ 5750 3750
NoConn ~ 5750 3650
Wire Wire Line
	2250 2150 2250 1800
Wire Wire Line
	2250 1800 2100 1800
Wire Wire Line
	2100 1500 2250 1500
Wire Wire Line
	2250 1500 2250 1150
Wire Wire Line
	2100 1700 2750 1700
Wire Wire Line
	2750 1700 2750 1550
Wire Wire Line
	2100 1600 2700 1600
Wire Wire Line
	2700 1600 2700 1850
Wire Wire Line
	2700 1850 2750 1850
NoConn ~ 2100 1900
NoConn ~ 2100 1400
$Comp
L power:GND #PWR0116
U 1 1 619C8A31
P 3950 2350
F 0 "#PWR0116" H 3950 2100 50  0001 C CNN
F 1 "GND" H 3955 2177 50  0000 C CNN
F 2 "" H 3950 2350 50  0001 C CNN
F 3 "" H 3950 2350 50  0001 C CNN
	1    3950 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2350 3950 2250
$Comp
L Device:C C1
U 1 1 61957305
P 4150 950
F 0 "C1" H 4265 996 50  0000 L CNN
F 1 "C" H 4265 905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4188 800 50  0001 C CNN
F 3 "~" H 4150 950 50  0001 C CNN
	1    4150 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 6195823F
P 4150 750
F 0 "#PWR0117" H 4150 600 50  0001 C CNN
F 1 "+5V" H 4165 923 50  0000 C CNN
F 2 "" H 4150 750 50  0001 C CNN
F 3 "" H 4150 750 50  0001 C CNN
	1    4150 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 619584A5
P 4150 1150
F 0 "#PWR0118" H 4150 900 50  0001 C CNN
F 1 "GND" H 4155 977 50  0000 C CNN
F 2 "" H 4150 1150 50  0001 C CNN
F 3 "" H 4150 1150 50  0001 C CNN
	1    4150 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1150 4150 1100
Wire Wire Line
	4150 800  4150 750 
NoConn ~ 4350 4250
$EndSCHEMATC
