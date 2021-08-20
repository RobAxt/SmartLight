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
L Converter_ACDC:HLK-PM01 PS1
U 1 1 60061E25
P 3900 3350
F 0 "PS1" H 3900 3675 50  0000 C CNN
F 1 "HLK-PM01" H 3900 3584 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_HiLink_HLK-PMxx" H 3900 3050 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=54" H 4300 3000 50  0001 C CNN
	1    3900 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 600786CB
P 4450 3150
F 0 "#PWR01" H 4450 3000 50  0001 C CNN
F 1 "+5V" H 4465 3323 50  0000 C CNN
F 2 "" H 4450 3150 50  0001 C CNN
F 3 "" H 4450 3150 50  0001 C CNN
	1    4450 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 60078C97
P 6350 2550
F 0 "#PWR04" H 6350 2400 50  0001 C CNN
F 1 "+5V" H 6365 2723 50  0000 C CNN
F 2 "" H 6350 2550 50  0001 C CNN
F 3 "" H 6350 2550 50  0001 C CNN
	1    6350 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 6007DD3A
P 3650 2750
F 0 "J3" H 3730 2792 50  0000 L CNN
F 1 "Relay COM" H 3730 2701 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D3.80mm_Drill2.5mm" H 3650 2750 50  0001 C CNN
F 3 "~" H 3650 2750 50  0001 C CNN
	1    3650 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 6007E648
P 3650 4000
F 0 "J4" H 3730 4042 50  0000 L CNN
F 1 "Relay NO" H 3730 3951 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D3.80mm_Drill2.5mm" H 3650 4000 50  0001 C CNN
F 3 "~" H 3650 4000 50  0001 C CNN
	1    3650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4000 3450 4000
Wire Wire Line
	3350 3300 3350 3250
Wire Wire Line
	3350 3250 3500 3250
Wire Wire Line
	3350 3400 3350 3450
Wire Wire Line
	3350 3450 3500 3450
Wire Wire Line
	4300 3250 4450 3250
Wire Wire Line
	4450 3250 4450 3150
Wire Wire Line
	3350 3250 3350 2750
Wire Wire Line
	3350 2750 3450 2750
Connection ~ 3350 3250
Wire Wire Line
	3000 4100 3350 4100
Wire Wire Line
	3350 4100 3350 3450
Connection ~ 3350 3450
$Comp
L power:GND #PWR02
U 1 1 6007989B
P 4450 3550
F 0 "#PWR02" H 4450 3300 50  0001 C CNN
F 1 "GND" H 4455 3377 50  0000 C CNN
F 2 "" H 4450 3550 50  0001 C CNN
F 3 "" H 4450 3550 50  0001 C CNN
	1    4450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3550 4450 3450
Wire Wire Line
	4450 3450 4300 3450
$Comp
L power:GND #PWR03
U 1 1 60084511
P 8600 4400
F 0 "#PWR03" H 8600 4150 50  0001 C CNN
F 1 "GND" H 8605 4227 50  0000 C CNN
F 2 "" H 8600 4400 50  0001 C CNN
F 3 "" H 8600 4400 50  0001 C CNN
	1    8600 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 600872A2
P 6150 2550
F 0 "#PWR05" H 6150 2400 50  0001 C CNN
F 1 "+3.3V" H 6165 2723 50  0000 C CNN
F 2 "" H 6150 2550 50  0001 C CNN
F 3 "" H 6150 2550 50  0001 C CNN
	1    6150 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60088837
P 8300 3150
F 0 "R1" H 8370 3196 50  0000 L CNN
F 1 "R" H 8370 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8230 3150 50  0001 C CNN
F 3 "~" H 8300 3150 50  0001 C CNN
	1    8300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 600897AF
P 8300 2550
F 0 "#PWR06" H 8300 2400 50  0001 C CNN
F 1 "+3.3V" H 8315 2723 50  0000 C CNN
F 2 "" H 8300 2550 50  0001 C CNN
F 3 "" H 8300 2550 50  0001 C CNN
	1    8300 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6008B3A3
P 8300 3350
F 0 "#PWR07" H 8300 3100 50  0001 C CNN
F 1 "GND" H 8305 3177 50  0000 C CNN
F 2 "" H 8300 3350 50  0001 C CNN
F 3 "" H 8300 3350 50  0001 C CNN
	1    8300 3350
	1    0    0    -1  
$EndComp
Text GLabel 5800 3250 0    50   Input ~ 0
D2
Wire Wire Line
	8300 2950 8300 3000
Wire Wire Line
	8300 3300 8300 3350
Text GLabel 5800 3050 0    50   Output ~ 0
D0
Text GLabel 6700 2600 1    50   Input ~ 0
D0
Wire Wire Line
	6700 2600 6700 2700
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 600D5545
P 2800 3300
F 0 "J1" H 2800 3450 50  0000 C CNN
F 1 "AC Input" V 2900 3250 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2800 3300 50  0001 C CNN
F 3 "~" H 2800 3300 50  0001 C CNN
	1    2800 3300
	-1   0    0    -1  
$EndComp
Text Notes 10650 7650 2    50   ~ 10
0\n
Text Notes 7400 7500 0    50   ~ 10
SmartLight Mark 1 
$Comp
L Device:Varistor RV1
U 1 1 600F4CB7
P 3150 3350
F 0 "RV1" H 3253 3396 50  0000 L CNN
F 1 "Varistor" H 3253 3305 50  0000 L CNN
F 2 "Varistor:RV_Disc_D12mm_W3.9mm_P7.5mm" V 3080 3350 50  0001 C CNN
F 3 "~" H 3150 3350 50  0001 C CNN
	1    3150 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3200 3000 3200
Wire Wire Line
	3000 3200 3000 3300
Wire Wire Line
	3150 3200 3300 3200
Wire Wire Line
	3300 3200 3300 3250
Wire Wire Line
	3300 3250 3350 3250
Connection ~ 3150 3200
Wire Wire Line
	3000 3400 3000 3500
Wire Wire Line
	3000 3500 3150 3500
Wire Wire Line
	3300 3500 3300 3450
Wire Wire Line
	3300 3450 3350 3450
Wire Wire Line
	3300 3500 3150 3500
Connection ~ 3150 3500
Text GLabel 8450 2950 2    50   Input ~ 0
D2
Wire Wire Line
	8450 2950 8300 2950
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 600A1137
P 6700 2850
F 0 "JP1" V 6654 2918 50  0000 L CNN
F 1 "Sleep" V 6745 2918 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6700 2850 50  0001 C CNN
F 3 "~" H 6700 2850 50  0001 C CNN
	1    6700 2850
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 60153730
P 8750 4250
F 0 "#PWR0101" H 8750 4100 50  0001 C CNN
F 1 "+3.3V" H 8765 4423 50  0000 C CNN
F 2 "" H 8750 4250 50  0001 C CNN
F 3 "" H 8750 4250 50  0001 C CNN
	1    8750 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6015412A
P 6250 4350
F 0 "#PWR0102" H 6250 4100 50  0001 C CNN
F 1 "GND" H 6255 4177 50  0000 C CNN
F 2 "" H 6250 4350 50  0001 C CNN
F 3 "" H 6250 4350 50  0001 C CNN
	1    6250 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 60155FE5
P 9400 2900
F 0 "J5" H 9480 2892 50  0000 L CNN
F 1 "Aux Power" H 9480 2801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9400 2900 50  0001 C CNN
F 3 "~" H 9400 2900 50  0001 C CNN
	1    9400 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 60156B88
P 9150 2850
F 0 "#PWR0103" H 9150 2700 50  0001 C CNN
F 1 "+5V" H 9165 3023 50  0000 C CNN
F 2 "" H 9150 2850 50  0001 C CNN
F 3 "" H 9150 2850 50  0001 C CNN
	1    9150 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6015731F
P 9150 3050
F 0 "#PWR0104" H 9150 2800 50  0001 C CNN
F 1 "GND" H 9155 2877 50  0000 C CNN
F 2 "" H 9150 3050 50  0001 C CNN
F 3 "" H 9150 3050 50  0001 C CNN
	1    9150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2850 9150 2900
Wire Wire Line
	9150 2900 9200 2900
Wire Wire Line
	9200 3000 9150 3000
Wire Wire Line
	9150 3000 9150 3050
Wire Wire Line
	5800 3050 5850 3050
Wire Wire Line
	5800 3250 5850 3250
Wire Wire Line
	6700 3000 6700 3050
Wire Wire Line
	6700 3050 6650 3050
Wire Wire Line
	6250 4350 6250 4250
Wire Wire Line
	6350 2550 6350 2650
Wire Wire Line
	6150 2550 6150 2650
NoConn ~ 6650 3350
NoConn ~ 6650 3450
NoConn ~ 5850 2950
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 600D6782
P 2800 4000
F 0 "J2" H 2800 4150 50  0000 C CNN
F 1 "AC Load" V 2900 3950 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2800 4000 50  0001 C CNN
F 3 "~" H 2800 4000 50  0001 C CNN
	1    2800 4000
	-1   0    0    -1  
$EndComp
Wire Notes Line
	2500 4500 4700 4500
Wire Notes Line
	4700 4500 4700 2500
Wire Notes Line
	4700 2500 2500 2500
Wire Notes Line
	2500 2500 2500 4500
Text Notes 2550 4450 0    50   ~ 0
220V AC to 5V DC
$Comp
L Device:Jumper_NO_Small JP2
U 1 1 6019A8C2
P 8300 2750
F 0 "JP2" V 8254 2798 50  0000 L CNN
F 1 "Jumper_NO_Small" V 8345 2798 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 8300 2750 50  0001 C CNN
F 3 "~" H 8300 2750 50  0001 C CNN
	1    8300 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 2850 8300 2950
Connection ~ 8300 2950
Wire Wire Line
	8300 2550 8300 2650
Text GLabel 5850 3550 0    50   Input ~ 0
D5
Text GLabel 5850 3650 0    50   Input ~ 0
D6
Text GLabel 5850 3750 0    50   Input ~ 0
D7
Text GLabel 5850 3850 0    50   Input ~ 0
D8
Text GLabel 8500 3850 2    50   Input ~ 0
D5
Text GLabel 8500 3950 2    50   Input ~ 0
D6
Text GLabel 8500 4050 2    50   Input ~ 0
D7
Text GLabel 8500 4150 2    50   Input ~ 0
D8
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 611DA502
P 9500 3950
F 0 "J7" H 9580 3942 50  0000 L CNN
F 1 "I2C GPIO" H 9580 3851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9500 3950 50  0001 C CNN
F 3 "~" H 9500 3950 50  0001 C CNN
	1    9500 3950
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:WeMos_D1_mini U1
U 1 1 60060D99
P 6250 3450
F 0 "U1" H 6500 4200 50  0000 C CNN
F 1 "WeMos_D1_mini" H 5850 2700 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 6250 2300 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 4400 2300 50  0001 C CNN
	1    6250 3450
	-1   0    0    -1  
$EndComp
Text GLabel 9300 3850 0    50   Input ~ 0
D1
Text GLabel 9300 3950 0    50   Input ~ 0
D2
Text GLabel 9300 4050 0    50   Input ~ 0
D3
Text GLabel 9300 4150 0    50   Input ~ 0
D4
Text GLabel 5800 3150 0    50   Input ~ 0
D1
Text GLabel 5800 3350 0    50   Input ~ 0
D3
Text GLabel 5800 3450 0    50   Input ~ 0
D4
Wire Wire Line
	5800 3150 5850 3150
Wire Wire Line
	5850 3350 5800 3350
Wire Wire Line
	5850 3450 5800 3450
Wire Notes Line
	5450 2200 5450 4700
Wire Notes Line
	5450 4700 7100 4700
Wire Notes Line
	7100 4700 7100 2200
Wire Notes Line
	7100 2200 5450 2200
Text Notes 6100 4650 2    50   ~ 0
Wemos D1 Mini
Wire Notes Line
	8000 4700 8000 2200
Wire Notes Line
	8000 2200 10000 2200
Wire Notes Line
	10000 2200 10000 4700
Wire Notes Line
	10000 4700 8000 4700
Text Notes 9950 4650 2    50   ~ 0
Periphericals Connectors
$Comp
L Connector_Generic:Conn_01x06 J6
U 1 1 6014E363
P 8300 4150
F 0 "J6" H 8400 4350 50  0000 C CNN
F 1 "SPI" H 8300 4450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8300 4150 50  0001 C CNN
F 3 "~" H 8300 4150 50  0001 C CNN
	1    8300 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 4350 8600 4400
Wire Wire Line
	8500 4350 8600 4350
Wire Wire Line
	8500 4250 8750 4250
$EndSCHEMATC
