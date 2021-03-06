EESchema Schematic File Version 4
LIBS:A600_ACCEL_RAM-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "A600_ACCEL_RAM"
Date "2020-08-03"
Rev "1"
Comp ""
Comment1 "Paul Raspa (PR77)"
Comment2 "Map ROM Support - Write Access to 0xF80000"
Comment3 "1.5 MB Auto Configuring Pseudo-Fast RAM (Fast Access)"
Comment4 "A600 - 68K PLCC COC Accelerator"
$EndDescr
$Comp
L CPU_NXP_68000:MC68000FN U1
U 1 1 5F1DD90A
P 9350 3550
F 0 "U1" H 8700 1200 50  0000 C CNN
F 1 "MC68000FN" H 9850 1200 50  0000 C CNN
F 2 "A600_ACCEL_RAM:PLCC-68_THT-SocketUpsideDown" H 8600 5800 50  0001 C CNN
F 3 "http://www.nxp.com/files/32bit/doc/ref_manual/MC68000UM.pdf" H 9350 3550 50  0001 C CNN
	1    9350 3550
	1    0    0    -1  
$EndComp
$Comp
L CustomComponents:MC68SEC000FN U2
U 1 1 5F1DDA52
P 5850 3550
F 0 "U2" H 5200 1200 50  0000 C CNN
F 1 "MC68SEC000FN" H 6250 1200 50  0000 C CNN
F 2 "Housings_QFP:LQFP-64_14x14mm_Pitch0.8mm" H 6850 5900 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/product-brief/MC68SEC000.pdf" H 5850 3550 50  0001 C CNN
	1    5850 3550
	1    0    0    -1  
$EndComp
$Comp
L CustomComponents:CY62167G U3
U 1 1 5F1DF72E
P 2050 2450
F 0 "U3" H 1700 1200 50  0000 C CNN
F 1 "CY62167G" H 2250 1200 50  0000 C CNN
F 2 "Housings_SSOP:TSOP-I-48_18.4x12mm_Pitch0.5mm" H 3100 1100 50  0001 C CNN
F 3 "http://www.alliancememory.com/pdf/AS6C1616(1).pdf" H 1750 2900 50  0001 C CNN
	1    2050 2450
	1    0    0    -1  
$EndComp
Text Label 10350 5450 0    50   ~ 0
#AS_7
Text Label 10350 5550 0    50   ~ 0
#UDS
Text Label 10350 5650 0    50   ~ 0
#LDS
Text Label 10350 5750 0    50   ~ 0
R_#W
Text Label 10350 5250 0    50   ~ 0
D15
Text Label 10350 5150 0    50   ~ 0
D14
Text Label 10350 5050 0    50   ~ 0
D13
Text Label 10350 4950 0    50   ~ 0
D12
Text Label 10350 4850 0    50   ~ 0
D11
Text Label 10350 4750 0    50   ~ 0
D10
Text Label 10350 4650 0    50   ~ 0
D9
Text Label 10350 4550 0    50   ~ 0
D8
Text Label 10350 4450 0    50   ~ 0
D7
Text Label 10350 4350 0    50   ~ 0
D6
Text Label 10350 4250 0    50   ~ 0
D5
Text Label 10350 4150 0    50   ~ 0
D4
Text Label 10350 4050 0    50   ~ 0
D3
Text Label 10350 3950 0    50   ~ 0
D2
Text Label 10350 3850 0    50   ~ 0
D1
Text Label 10350 3750 0    50   ~ 0
D0
Text Label 10350 3550 0    50   ~ 0
A23
Text Label 10350 3450 0    50   ~ 0
A22
Text Label 10350 3350 0    50   ~ 0
A21
Text Label 10350 3250 0    50   ~ 0
A20
Text Label 10350 3150 0    50   ~ 0
A19
Text Label 10350 3050 0    50   ~ 0
A18
Text Label 10350 2950 0    50   ~ 0
A17
Text Label 10350 2850 0    50   ~ 0
A16
Text Label 10350 2750 0    50   ~ 0
A15
Text Label 10350 2650 0    50   ~ 0
A14
Text Label 10350 2550 0    50   ~ 0
A13
Text Label 10350 2450 0    50   ~ 0
A12
Text Label 10350 2350 0    50   ~ 0
A11
Text Label 10350 2250 0    50   ~ 0
A10
Text Label 10350 2150 0    50   ~ 0
A9
Text Label 10350 2050 0    50   ~ 0
A8
Text Label 10350 1950 0    50   ~ 0
A7
Text Label 10350 1850 0    50   ~ 0
A6
Text Label 10350 1750 0    50   ~ 0
A5
Text Label 10350 1650 0    50   ~ 0
A4
Text Label 10350 1550 0    50   ~ 0
A3
Text Label 10350 1450 0    50   ~ 0
A2
Text Label 10350 1350 0    50   ~ 0
A1
Text Label 6850 3600 0    50   ~ 0
A23
Text Label 6850 3500 0    50   ~ 0
A22
Text Label 6850 3400 0    50   ~ 0
A21
Text Label 6850 3300 0    50   ~ 0
A20
Text Label 6850 3200 0    50   ~ 0
A19
Text Label 6850 3100 0    50   ~ 0
A18
Text Label 6850 3000 0    50   ~ 0
A17
Text Label 6850 2900 0    50   ~ 0
A16
Text Label 6850 2800 0    50   ~ 0
A15
Text Label 6850 2700 0    50   ~ 0
A14
Text Label 6850 2600 0    50   ~ 0
A13
Text Label 6850 2500 0    50   ~ 0
A12
Text Label 6850 2400 0    50   ~ 0
A11
Text Label 6850 2300 0    50   ~ 0
A10
Text Label 6850 2200 0    50   ~ 0
A9
Text Label 6850 2100 0    50   ~ 0
A8
Text Label 6850 2000 0    50   ~ 0
A7
Text Label 6850 1900 0    50   ~ 0
A6
Text Label 6850 1800 0    50   ~ 0
A5
Text Label 6850 1700 0    50   ~ 0
A4
Text Label 6850 1600 0    50   ~ 0
A3
Text Label 6850 1500 0    50   ~ 0
A2
Text Label 6850 1400 0    50   ~ 0
A1
Text Label 6850 5300 0    50   ~ 0
D15
Text Label 6850 5200 0    50   ~ 0
D14
Text Label 6850 5100 0    50   ~ 0
D13
Text Label 6850 5000 0    50   ~ 0
D12
Text Label 6850 4900 0    50   ~ 0
D11
Text Label 6850 4800 0    50   ~ 0
D10
Text Label 6850 4700 0    50   ~ 0
D9
Text Label 6850 4600 0    50   ~ 0
D8
Text Label 6850 4500 0    50   ~ 0
D7
Text Label 6850 4400 0    50   ~ 0
D6
Text Label 6850 4300 0    50   ~ 0
D5
Text Label 6850 4200 0    50   ~ 0
D4
Text Label 6850 4100 0    50   ~ 0
D3
Text Label 6850 4000 0    50   ~ 0
D2
Text Label 6850 3900 0    50   ~ 0
D1
Text Label 6850 3800 0    50   ~ 0
D0
Text Label 6850 5500 0    50   ~ 0
#AS_ACCEL
Text Label 6850 5600 0    50   ~ 0
#UDS
Text Label 6850 5700 0    50   ~ 0
#LDS
Text Label 6850 5800 0    50   ~ 0
R_#W
$Comp
L Regulator_Linear:LM1117-3.3 U5
U 1 1 5F207811
P 5050 7100
F 0 "U5" H 5050 7342 50  0000 C CNN
F 1 "LM1117-3.3" H 5050 7251 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 5050 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 5050 7100 50  0001 C CNN
	1    5050 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 5F2079C0
P 4500 7250
F 0 "C6" H 4618 7296 50  0000 L CNN
F 1 "10u" H 4618 7205 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-R_EIA-2012-12_Hand" H 4538 7100 50  0001 C CNN
F 3 "~" H 4500 7250 50  0001 C CNN
	1    4500 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 5F207A97
P 5600 7250
F 0 "C7" H 5718 7296 50  0000 L CNN
F 1 "10u" H 5718 7205 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-R_EIA-2012-12_Hand" H 5638 7100 50  0001 C CNN
F 3 "~" H 5600 7250 50  0001 C CNN
	1    5600 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5F207B25
P 3450 7250
F 0 "C3" H 3565 7296 50  0000 L CNN
F 1 "100n" H 3565 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3488 7100 50  0001 C CNN
F 3 "~" H 3450 7250 50  0001 C CNN
	1    3450 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F207B88
P 3800 7250
F 0 "C4" H 3915 7296 50  0000 L CNN
F 1 "100n" H 3915 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3838 7100 50  0001 C CNN
F 3 "~" H 3800 7250 50  0001 C CNN
	1    3800 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F207CD8
P 3100 7250
F 0 "C2" H 3215 7296 50  0000 L CNN
F 1 "100n" H 3215 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3138 7100 50  0001 C CNN
F 3 "~" H 3100 7250 50  0001 C CNN
	1    3100 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F207D49
P 5950 7250
F 0 "C8" H 6065 7296 50  0000 L CNN
F 1 "100n" H 6065 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5988 7100 50  0001 C CNN
F 3 "~" H 5950 7250 50  0001 C CNN
	1    5950 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F207DA4
P 6300 7250
F 0 "C9" H 6415 7296 50  0000 L CNN
F 1 "100n" H 6415 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6338 7100 50  0001 C CNN
F 3 "~" H 6300 7250 50  0001 C CNN
	1    6300 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F207E06
P 4250 3050
F 0 "R5" H 4320 3096 50  0000 L CNN
F 1 "10K" H 4320 3005 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 4180 3050 50  0001 C CNN
F 3 "~" H 4250 3050 50  0001 C CNN
	1    4250 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F207EE5
P 4000 3050
F 0 "R4" H 4070 3096 50  0000 L CNN
F 1 "10K" H 4070 3005 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 3930 3050 50  0001 C CNN
F 3 "~" H 4000 3050 50  0001 C CNN
	1    4000 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F207F3A
P 4250 2050
F 0 "R1" H 4320 2096 50  0000 L CNN
F 1 "10K" H 4320 2005 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 4180 2050 50  0001 C CNN
F 3 "~" H 4250 2050 50  0001 C CNN
	1    4250 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F207FE0
P 3250 3050
F 0 "R3" H 3320 3096 50  0000 L CNN
F 1 "10K" H 3320 3005 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 3180 3050 50  0001 C CNN
F 3 "~" H 3250 3050 50  0001 C CNN
	1    3250 3050
	1    0    0    -1  
$EndComp
Text Label 8350 1350 2    50   ~ 0
CLK_7
Text Label 8350 1650 2    50   ~ 0
#IPL0
Text Label 8350 1750 2    50   ~ 0
#IPL1
Text Label 8350 1850 2    50   ~ 0
#IPL2
Text Label 8350 4050 2    50   ~ 0
#BERR
Text Label 8350 4250 2    50   ~ 0
#DTACK_7
Text Label 8350 4750 2    50   ~ 0
#HALT
Text Label 8350 4950 2    50   ~ 0
#RESET
Text Label 2750 6750 0    50   ~ 0
CLK_ACCEL
Text Label 4850 1600 2    50   ~ 0
#IPL0
Text Label 4850 1700 2    50   ~ 0
#IPL1
Text Label 4850 1800 2    50   ~ 0
#IPL2
Text Label 4850 4050 2    50   ~ 0
#BERR
Text Label 2750 6050 0    50   ~ 0
#DTACK_ACCEL
Text Label 4850 4750 2    50   ~ 0
#HALT
Text Label 4850 4950 2    50   ~ 0
#RESET
$Comp
L power:GND #PWR0101
U 1 1 5F2090F9
P 9150 6200
F 0 "#PWR0101" H 9150 5950 50  0001 C CNN
F 1 "GND" H 9155 6027 50  0000 C CNN
F 2 "" H 9150 6200 50  0001 C CNN
F 3 "" H 9150 6200 50  0001 C CNN
	1    9150 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5F20A0A2
P 9250 900
F 0 "#PWR0102" H 9250 750 50  0001 C CNN
F 1 "+5V" H 9265 1073 50  0000 C CNN
F 2 "" H 9250 900 50  0001 C CNN
F 3 "" H 9250 900 50  0001 C CNN
	1    9250 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5F20A120
P 9450 900
F 0 "#PWR0103" H 9450 750 50  0001 C CNN
F 1 "+5V" H 9465 1073 50  0000 C CNN
F 2 "" H 9450 900 50  0001 C CNN
F 3 "" H 9450 900 50  0001 C CNN
	1    9450 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 950  9250 900 
Wire Wire Line
	9450 950  9450 900 
$Comp
L power:GND #PWR0104
U 1 1 5F20A41B
P 9550 6200
F 0 "#PWR0104" H 9550 5950 50  0001 C CNN
F 1 "GND" H 9555 6027 50  0000 C CNN
F 2 "" H 9550 6200 50  0001 C CNN
F 3 "" H 9550 6200 50  0001 C CNN
	1    9550 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 6150 9150 6150
Wire Wire Line
	9150 6150 9150 6200
Connection ~ 9150 6150
Wire Wire Line
	9450 6150 9550 6150
Wire Wire Line
	9550 6200 9550 6150
Connection ~ 9550 6150
Entry Wire Line
	10700 5250 10800 5150
Entry Wire Line
	10700 5150 10800 5050
Entry Wire Line
	10700 5050 10800 4950
Entry Wire Line
	10700 4950 10800 4850
Entry Wire Line
	10700 4850 10800 4750
Entry Wire Line
	10700 4750 10800 4650
Entry Wire Line
	10700 4650 10800 4550
Entry Wire Line
	10700 4550 10800 4450
Entry Wire Line
	10700 4450 10800 4350
Entry Wire Line
	10700 4350 10800 4250
Entry Wire Line
	10700 4250 10800 4150
Entry Wire Line
	10700 4150 10800 4050
Entry Wire Line
	10700 4050 10800 3950
Entry Wire Line
	10700 3950 10800 3850
Entry Wire Line
	10700 3850 10800 3750
Entry Wire Line
	10700 3750 10800 3650
Entry Wire Line
	10600 3550 10700 3450
Entry Wire Line
	10600 3450 10700 3350
Entry Wire Line
	10600 3350 10700 3250
Entry Wire Line
	10600 3250 10700 3150
Entry Wire Line
	10600 3150 10700 3050
Entry Wire Line
	10600 3050 10700 2950
Entry Wire Line
	10600 2950 10700 2850
Entry Wire Line
	10600 2850 10700 2750
Entry Wire Line
	10600 2750 10700 2650
Entry Wire Line
	10600 2650 10700 2550
Entry Wire Line
	10600 2550 10700 2450
Entry Wire Line
	10600 2450 10700 2350
Entry Wire Line
	10600 2350 10700 2250
Entry Wire Line
	10600 2250 10700 2150
Entry Wire Line
	10600 2150 10700 2050
Entry Wire Line
	10600 2050 10700 1950
Entry Wire Line
	10600 1950 10700 1850
Entry Wire Line
	10600 1850 10700 1750
Entry Wire Line
	10600 1750 10700 1650
Entry Wire Line
	10600 1650 10700 1550
Entry Wire Line
	10600 1550 10700 1450
Entry Wire Line
	10600 1450 10700 1350
Entry Wire Line
	10600 1350 10700 1250
Wire Wire Line
	10600 1350 10350 1350
Wire Wire Line
	10600 1450 10350 1450
Wire Wire Line
	10600 1550 10350 1550
Wire Wire Line
	10600 1650 10350 1650
Wire Wire Line
	10600 1750 10350 1750
Wire Wire Line
	10600 1850 10350 1850
Wire Wire Line
	10600 1950 10350 1950
Wire Wire Line
	10600 2050 10350 2050
Wire Wire Line
	10600 2150 10350 2150
Wire Wire Line
	10600 2250 10350 2250
Wire Wire Line
	10600 2350 10350 2350
Wire Wire Line
	10600 2450 10350 2450
Wire Wire Line
	10600 2550 10350 2550
Wire Wire Line
	10600 2650 10350 2650
Wire Wire Line
	10600 2750 10350 2750
Wire Wire Line
	10600 2850 10350 2850
Wire Wire Line
	10600 2950 10350 2950
Wire Wire Line
	10600 3050 10350 3050
Wire Wire Line
	10600 3150 10350 3150
Wire Wire Line
	10600 3250 10350 3250
Wire Wire Line
	10600 3350 10350 3350
Wire Wire Line
	10600 3450 10350 3450
Wire Wire Line
	10600 3550 10350 3550
Wire Wire Line
	10700 3750 10350 3750
Wire Wire Line
	10700 3850 10350 3850
Wire Wire Line
	10700 3950 10350 3950
Wire Wire Line
	10700 4050 10350 4050
Wire Wire Line
	10700 4150 10350 4150
Wire Wire Line
	10700 4250 10350 4250
Wire Wire Line
	10700 4350 10350 4350
Wire Wire Line
	10700 4450 10350 4450
Wire Wire Line
	10700 4550 10350 4550
Wire Wire Line
	10700 4650 10350 4650
Wire Wire Line
	10700 4750 10350 4750
Wire Wire Line
	10700 4850 10350 4850
Wire Wire Line
	10700 4950 10350 4950
Wire Wire Line
	10700 5050 10350 5050
Wire Wire Line
	10700 5150 10350 5150
Wire Wire Line
	10700 5250 10350 5250
Entry Wire Line
	7100 3600 7200 3500
Entry Wire Line
	7100 3500 7200 3400
Entry Wire Line
	7100 3400 7200 3300
Entry Wire Line
	7100 3300 7200 3200
Entry Wire Line
	7100 3200 7200 3100
Entry Wire Line
	7100 3100 7200 3000
Entry Wire Line
	7100 3000 7200 2900
Entry Wire Line
	7100 2900 7200 2800
Entry Wire Line
	7100 2800 7200 2700
Entry Wire Line
	7100 2700 7200 2600
Entry Wire Line
	7100 2600 7200 2500
Entry Wire Line
	7100 2500 7200 2400
Entry Wire Line
	7100 2400 7200 2300
Entry Wire Line
	7100 2300 7200 2200
Entry Wire Line
	7100 2200 7200 2100
Entry Wire Line
	7100 2100 7200 2000
Entry Wire Line
	7100 2000 7200 1900
Entry Wire Line
	7100 1900 7200 1800
Entry Wire Line
	7100 1800 7200 1700
Entry Wire Line
	7100 1700 7200 1600
Entry Wire Line
	7100 1600 7200 1500
Entry Wire Line
	7100 1500 7200 1400
Entry Wire Line
	7100 1400 7200 1300
Wire Wire Line
	7100 1400 6850 1400
Wire Wire Line
	7100 1500 6850 1500
Wire Wire Line
	7100 1600 6850 1600
Wire Wire Line
	7100 1700 6850 1700
Wire Wire Line
	7100 1800 6850 1800
Wire Wire Line
	7100 1900 6850 1900
Wire Wire Line
	7100 2000 6850 2000
Wire Wire Line
	7100 2100 6850 2100
Wire Wire Line
	7100 2200 6850 2200
Wire Wire Line
	7100 2300 6850 2300
Wire Wire Line
	7100 2400 6850 2400
Wire Wire Line
	7100 2500 6850 2500
Wire Wire Line
	7100 2600 6850 2600
Wire Wire Line
	7100 2700 6850 2700
Wire Wire Line
	7100 2800 6850 2800
Wire Wire Line
	7100 2900 6850 2900
Wire Wire Line
	7100 3000 6850 3000
Wire Wire Line
	7100 3100 6850 3100
Wire Wire Line
	7100 3200 6850 3200
Wire Wire Line
	7100 3300 6850 3300
Wire Wire Line
	7100 3400 6850 3400
Wire Wire Line
	7100 3500 6850 3500
Wire Wire Line
	7100 3600 6850 3600
Entry Wire Line
	7300 5800 7400 5700
Entry Wire Line
	7300 5700 7400 5600
Entry Wire Line
	7300 5600 7400 5500
Entry Wire Line
	7300 5500 7400 5400
Wire Wire Line
	7300 5800 6850 5800
Wire Wire Line
	7300 5700 6850 5700
Wire Wire Line
	7300 5600 6850 5600
Wire Wire Line
	7300 5500 6850 5500
Entry Wire Line
	7200 5300 7300 5200
Entry Wire Line
	7200 5200 7300 5100
Entry Wire Line
	7200 5100 7300 5000
Entry Wire Line
	7200 5000 7300 4900
Entry Wire Line
	7200 4900 7300 4800
Entry Wire Line
	7200 4800 7300 4700
Entry Wire Line
	7200 4700 7300 4600
Entry Wire Line
	7200 4600 7300 4500
Entry Wire Line
	7200 4500 7300 4400
Entry Wire Line
	7200 4400 7300 4300
Entry Wire Line
	7200 4300 7300 4200
Entry Wire Line
	7200 4200 7300 4100
Entry Wire Line
	7200 4100 7300 4000
Entry Wire Line
	7200 4000 7300 3900
Entry Wire Line
	7200 3900 7300 3800
Entry Wire Line
	7200 3800 7300 3700
Wire Wire Line
	7200 3800 6850 3800
Wire Wire Line
	7200 3900 6850 3900
Wire Wire Line
	7200 4000 6850 4000
Wire Wire Line
	7200 4100 6850 4100
Wire Wire Line
	7200 4200 6850 4200
Wire Wire Line
	7200 4300 6850 4300
Wire Wire Line
	7200 4400 6850 4400
Wire Wire Line
	7200 4500 6850 4500
Wire Wire Line
	7200 4600 6850 4600
Wire Wire Line
	7200 4700 6850 4700
Wire Wire Line
	7200 4800 6850 4800
Wire Wire Line
	7200 4900 6850 4900
Wire Wire Line
	7200 5000 6850 5000
Wire Wire Line
	7200 5100 6850 5100
Wire Wire Line
	7200 5200 6850 5200
Wire Wire Line
	7200 5300 6850 5300
Entry Wire Line
	10800 5450 10900 5350
Entry Wire Line
	10800 5550 10900 5450
Entry Wire Line
	10800 5650 10900 5550
Entry Wire Line
	10800 5750 10900 5650
Wire Wire Line
	10350 5450 10800 5450
Wire Wire Line
	10350 5550 10800 5550
Wire Wire Line
	10350 5650 10800 5650
Wire Wire Line
	10350 5750 10800 5750
Text Label 2650 1950 0    50   ~ 0
A20
Text Label 2650 1850 0    50   ~ 0
A19
Text Label 2650 1750 0    50   ~ 0
A18
Text Label 2650 2050 0    50   ~ 0
A17
Text Label 2650 2150 0    50   ~ 0
A16
Text Label 2650 2250 0    50   ~ 0
A15
Text Label 2650 2350 0    50   ~ 0
A14
Text Label 2650 2450 0    50   ~ 0
A13
Text Label 2650 1550 0    50   ~ 0
A12
Text Label 2650 1450 0    50   ~ 0
A11
Text Label 2650 1350 0    50   ~ 0
A10
Text Label 2650 2550 0    50   ~ 0
A9
Text Label 2650 2650 0    50   ~ 0
A8
Text Label 2650 2750 0    50   ~ 0
A7
Text Label 2650 2850 0    50   ~ 0
A6
Text Label 2650 2950 0    50   ~ 0
A5
Text Label 2650 3050 0    50   ~ 0
A4
Text Label 2650 3150 0    50   ~ 0
A3
Text Label 2750 5850 0    50   ~ 0
A2
Text Label 2650 1650 0    50   ~ 0
A1
Entry Wire Line
	3000 1250 2900 1350
Entry Wire Line
	3000 1350 2900 1450
Entry Wire Line
	3000 1450 2900 1550
Entry Wire Line
	3000 1550 2900 1650
Entry Wire Line
	3000 1650 2900 1750
Entry Wire Line
	3000 1750 2900 1850
Entry Wire Line
	3000 1850 2900 1950
Entry Wire Line
	3000 1950 2900 2050
Entry Wire Line
	3000 2050 2900 2150
Entry Wire Line
	3000 2150 2900 2250
Entry Wire Line
	3000 2250 2900 2350
Entry Wire Line
	3000 2350 2900 2450
Entry Wire Line
	3000 2450 2900 2550
Entry Wire Line
	3000 2550 2900 2650
Entry Wire Line
	3000 2650 2900 2750
Entry Wire Line
	3000 2750 2900 2850
Entry Wire Line
	3000 2850 2900 2950
Entry Wire Line
	3000 2950 2900 3050
Entry Wire Line
	3000 3050 2900 3150
Entry Wire Line
	3000 3150 2900 3250
Wire Wire Line
	2900 3250 2650 3250
Wire Wire Line
	2900 3150 2650 3150
Wire Wire Line
	2900 3050 2650 3050
Wire Wire Line
	2900 2950 2650 2950
Wire Wire Line
	2900 2850 2650 2850
Wire Wire Line
	2900 2750 2650 2750
Wire Wire Line
	2900 2650 2650 2650
Wire Wire Line
	2900 2550 2650 2550
Wire Wire Line
	2900 2450 2650 2450
Wire Wire Line
	2900 2350 2650 2350
Wire Wire Line
	2900 2250 2650 2250
Wire Wire Line
	2900 2150 2650 2150
Wire Wire Line
	2900 2050 2650 2050
Wire Wire Line
	2900 1950 2650 1950
Wire Wire Line
	2900 1850 2650 1850
Wire Wire Line
	2900 1750 2650 1750
Wire Wire Line
	2900 1650 2650 1650
Wire Wire Line
	2900 1550 2650 1550
Wire Wire Line
	2900 1450 2650 1450
Wire Wire Line
	2900 1350 2650 1350
Text Label 1450 1350 2    50   ~ 0
D15
Text Label 1450 1750 2    50   ~ 0
D14
Text Label 1450 1850 2    50   ~ 0
D13
Text Label 1450 1950 2    50   ~ 0
D12
Text Label 1450 1650 2    50   ~ 0
D11
Text Label 1450 1550 2    50   ~ 0
D10
Text Label 1450 1450 2    50   ~ 0
D9
Text Label 1450 2050 2    50   ~ 0
D8
Text Label 1450 2850 2    50   ~ 0
D7
Text Label 1450 2750 2    50   ~ 0
D6
Text Label 1450 2650 2    50   ~ 0
D5
Text Label 1450 2550 2    50   ~ 0
D4
Text Label 1450 2450 2    50   ~ 0
D3
Text Label 1450 2350 2    50   ~ 0
D2
Text Label 1450 2250 2    50   ~ 0
D1
Text Label 1450 2150 2    50   ~ 0
D0
Entry Wire Line
	1100 1250 1200 1350
Entry Wire Line
	1100 1350 1200 1450
Entry Wire Line
	1100 1450 1200 1550
Entry Wire Line
	1100 1550 1200 1650
Entry Wire Line
	1100 1650 1200 1750
Entry Wire Line
	1100 1750 1200 1850
Entry Wire Line
	1100 1850 1200 1950
Entry Wire Line
	1100 1950 1200 2050
Entry Wire Line
	1100 2050 1200 2150
Entry Wire Line
	1100 2150 1200 2250
Entry Wire Line
	1100 2250 1200 2350
Entry Wire Line
	1100 2350 1200 2450
Entry Wire Line
	1100 2450 1200 2550
Entry Wire Line
	1100 2550 1200 2650
Entry Wire Line
	1100 2650 1200 2750
Entry Wire Line
	1100 2750 1200 2850
Wire Wire Line
	1200 2850 1450 2850
Wire Wire Line
	1200 2750 1450 2750
Wire Wire Line
	1200 2650 1450 2650
Wire Wire Line
	1200 2550 1450 2550
Wire Wire Line
	1200 2450 1450 2450
Wire Wire Line
	1200 2350 1450 2350
Wire Wire Line
	1200 2250 1450 2250
Wire Wire Line
	1200 2150 1450 2150
Wire Wire Line
	1200 2050 1450 2050
Wire Wire Line
	1200 1950 1450 1950
Wire Wire Line
	1200 1850 1450 1850
Wire Wire Line
	1200 1750 1450 1750
Wire Wire Line
	1200 1650 1450 1650
Wire Wire Line
	1200 1550 1450 1550
Wire Wire Line
	1200 1450 1450 1450
Wire Wire Line
	1200 1350 1450 1350
Wire Wire Line
	4850 3200 4250 3200
Wire Wire Line
	4850 4150 4000 4150
Wire Wire Line
	4000 4150 4000 3200
$Comp
L power:+5V #PWR0106
U 1 1 5F3B02B2
P 4000 2850
F 0 "#PWR0106" H 4000 2700 50  0001 C CNN
F 1 "+5V" H 4015 3023 50  0000 C CNN
F 2 "" H 4000 2850 50  0001 C CNN
F 3 "" H 4000 2850 50  0001 C CNN
	1    4000 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5F3B02E1
P 4250 2850
F 0 "#PWR0107" H 4250 2700 50  0001 C CNN
F 1 "+5V" H 4265 3023 50  0000 C CNN
F 2 "" H 4250 2850 50  0001 C CNN
F 3 "" H 4250 2850 50  0001 C CNN
	1    4250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2900 4000 2850
Wire Wire Line
	4250 2900 4250 2850
Wire Wire Line
	2650 3550 3250 3550
Wire Wire Line
	3250 3550 3250 3200
$Comp
L power:+5V #PWR0109
U 1 1 5F3EA7FC
P 3250 2850
F 0 "#PWR0109" H 3250 2700 50  0001 C CNN
F 1 "+5V" H 3265 3023 50  0000 C CNN
F 2 "" H 3250 2850 50  0001 C CNN
F 3 "" H 3250 2850 50  0001 C CNN
	1    3250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2900 3250 2850
$Comp
L power:+5V #PWR0110
U 1 1 5F2F77CD
P 4500 7050
F 0 "#PWR0110" H 4500 6900 50  0001 C CNN
F 1 "+5V" H 4515 7223 50  0000 C CNN
F 2 "" H 4500 7050 50  0001 C CNN
F 3 "" H 4500 7050 50  0001 C CNN
	1    4500 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0111
U 1 1 5F3003D5
P 5600 7050
F 0 "#PWR0111" H 5600 6900 50  0001 C CNN
F 1 "+3.3V" H 5615 7223 50  0000 C CNN
F 2 "" H 5600 7050 50  0001 C CNN
F 3 "" H 5600 7050 50  0001 C CNN
	1    5600 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F308FD8
P 4500 7450
F 0 "#PWR0112" H 4500 7200 50  0001 C CNN
F 1 "GND" H 4505 7277 50  0000 C CNN
F 2 "" H 4500 7450 50  0001 C CNN
F 3 "" H 4500 7450 50  0001 C CNN
	1    4500 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F311C2A
P 5050 7450
F 0 "#PWR0113" H 5050 7200 50  0001 C CNN
F 1 "GND" H 5055 7277 50  0000 C CNN
F 2 "" H 5050 7450 50  0001 C CNN
F 3 "" H 5050 7450 50  0001 C CNN
	1    5050 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5F311C59
P 5600 7450
F 0 "#PWR0114" H 5600 7200 50  0001 C CNN
F 1 "GND" H 5605 7277 50  0000 C CNN
F 2 "" H 5600 7450 50  0001 C CNN
F 3 "" H 5600 7450 50  0001 C CNN
	1    5600 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 7450 5050 7400
Wire Bus Line
	7200 1100 3000 1100
Connection ~ 7200 1100
Wire Bus Line
	7200 1100 10700 1100
Wire Bus Line
	10800 1000 7300 1000
Wire Bus Line
	7300 1000 1100 1000
Connection ~ 7300 1000
Wire Bus Line
	10900 900  7400 900 
$Comp
L power:GND #PWR0115
U 1 1 5F3D5426
P 2050 7450
F 0 "#PWR0115" H 2050 7200 50  0001 C CNN
F 1 "GND" H 2055 7277 50  0000 C CNN
F 2 "" H 2050 7450 50  0001 C CNN
F 3 "" H 2050 7450 50  0001 C CNN
	1    2050 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 5F3FB7E3
P 2050 4500
F 0 "#PWR0116" H 2050 4350 50  0001 C CNN
F 1 "+3.3V" H 2065 4673 50  0000 C CNN
F 2 "" H 2050 4500 50  0001 C CNN
F 3 "" H 2050 4500 50  0001 C CNN
	1    2050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4550 1950 4500
Wire Wire Line
	1950 4500 2050 4500
Wire Wire Line
	2050 4500 2150 4500
Wire Wire Line
	2150 4500 2150 4550
Connection ~ 2050 4500
Wire Wire Line
	2050 4550 2050 4500
Wire Wire Line
	5600 7400 5600 7450
Wire Wire Line
	3100 7400 3450 7400
Connection ~ 3450 7400
Wire Wire Line
	3450 7400 3800 7400
Connection ~ 3800 7400
Wire Wire Line
	4500 7450 4500 7400
Connection ~ 4500 7400
Wire Wire Line
	6300 7400 5950 7400
Wire Wire Line
	5950 7400 5600 7400
Connection ~ 5950 7400
Connection ~ 5600 7400
Wire Wire Line
	3100 7100 3450 7100
Connection ~ 3450 7100
Wire Wire Line
	3450 7100 3800 7100
Connection ~ 3800 7100
Connection ~ 4500 7100
Wire Wire Line
	4500 7100 4750 7100
Wire Wire Line
	4500 7100 4500 7050
Wire Wire Line
	6300 7100 5950 7100
Connection ~ 5600 7100
Wire Wire Line
	5600 7100 5350 7100
Connection ~ 5950 7100
Wire Wire Line
	5950 7100 5600 7100
Wire Wire Line
	5600 7050 5600 7100
Text Label 2750 5750 0    50   ~ 0
#RESET
Text Label 1350 5050 2    50   ~ 0
CLK_7
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5F5BC698
P 600 4150
F 0 "J1" H 706 4528 50  0000 C CNN
F 1 "JTAG" H 706 4437 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 600 4150 50  0001 C CNN
F 3 "~" H 600 4150 50  0001 C CNN
	1    600  4150
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP14 X1
U 1 1 5F5BC771
P 5150 6350
F 0 "X1" H 4950 6100 50  0000 L CNN
F 1 "CXO_DIP14" H 5200 6100 50  0000 L CNN
F 2 "Oscillators:Oscillator_DIP-14" H 5600 6000 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 5050 6350 50  0001 C CNN
	1    5150 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 5F5BCB4E
P 850 3900
F 0 "#PWR0117" H 850 3750 50  0001 C CNN
F 1 "+3.3V" H 865 4073 50  0000 C CNN
F 2 "" H 850 3900 50  0001 C CNN
F 3 "" H 850 3900 50  0001 C CNN
	1    850  3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5F5BCC0D
P 850 4500
F 0 "#PWR0118" H 850 4250 50  0001 C CNN
F 1 "GND" H 855 4327 50  0000 C CNN
F 2 "" H 850 4500 50  0001 C CNN
F 3 "" H 850 4500 50  0001 C CNN
	1    850  4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3950 850  3950
Wire Wire Line
	850  3950 850  3900
Wire Wire Line
	800  4050 850  4050
Wire Wire Line
	850  4050 850  4500
$Comp
L Device:R R6
U 1 1 5F601D7A
P 1300 4100
F 0 "R6" H 1370 4146 50  0000 L CNN
F 1 "10K" H 1370 4055 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 1230 4100 50  0001 C CNN
F 3 "~" H 1300 4100 50  0001 C CNN
	1    1300 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F601E28
P 1550 4100
F 0 "R7" H 1620 4146 50  0000 L CNN
F 1 "10K" H 1620 4055 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 1480 4100 50  0001 C CNN
F 3 "~" H 1550 4100 50  0001 C CNN
	1    1550 4100
	1    0    0    -1  
$EndComp
Text Label 2750 6850 0    50   ~ 0
TDI
Text Label 2750 6950 0    50   ~ 0
TMS
Text Label 2750 7050 0    50   ~ 0
TCK
Text Label 2750 7150 0    50   ~ 0
TDO
Text Label 950  4350 0    50   ~ 0
TDI
Text Label 950  4450 0    50   ~ 0
TMS
Text Label 950  4150 0    50   ~ 0
TCK
Text Label 950  4250 0    50   ~ 0
TDO
Wire Wire Line
	800  4150 950  4150
Wire Wire Line
	800  4250 950  4250
Wire Wire Line
	1300 4350 1300 4250
Wire Wire Line
	800  4350 1300 4350
Wire Wire Line
	1550 4450 1550 4250
Wire Wire Line
	800  4450 1550 4450
Wire Wire Line
	1550 3950 1300 3950
Connection ~ 850  3950
Connection ~ 1300 3950
Wire Wire Line
	1300 3950 850  3950
$Comp
L Device:C C1
U 1 1 5F686BF6
P 4250 6350
F 0 "C1" H 4365 6396 50  0000 L CNN
F 1 "100n" H 4365 6305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4288 6200 50  0001 C CNN
F 3 "~" H 4250 6350 50  0001 C CNN
	1    4250 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F686C8C
P 4250 6650
F 0 "#PWR0119" H 4250 6400 50  0001 C CNN
F 1 "GND" H 4255 6477 50  0000 C CNN
F 2 "" H 4250 6650 50  0001 C CNN
F 3 "" H 4250 6650 50  0001 C CNN
	1    4250 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0120
U 1 1 5F686CC5
P 4250 6050
F 0 "#PWR0120" H 4250 5900 50  0001 C CNN
F 1 "+5V" H 4265 6223 50  0000 C CNN
F 2 "" H 4250 6050 50  0001 C CNN
F 3 "" H 4250 6050 50  0001 C CNN
	1    4250 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 6050 4250 6050
Wire Wire Line
	4250 6050 4250 6200
Connection ~ 4250 6050
Wire Wire Line
	4250 6500 4250 6650
Wire Wire Line
	4250 6650 5150 6650
Text Label 5450 6350 0    50   ~ 0
CLK_ACCEL
Text Label 4850 1300 2    50   ~ 0
CLK_ACCEL
Text Notes 6150 6250 0    50   ~ 0
Thanks to SukkoPera for the PLCC-68 up-side-down footprint here:\nhttps://github.com/SukkoPera/OpenAmiga600FastRamExpansion
$Comp
L power:VCC #PWR0121
U 1 1 5F6D01C7
P 3100 7050
F 0 "#PWR0121" H 3100 6900 50  0001 C CNN
F 1 "VCC" H 3117 7223 50  0000 C CNN
F 2 "" H 3100 7050 50  0001 C CNN
F 3 "" H 3100 7050 50  0001 C CNN
	1    3100 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 7050 3100 7100
Connection ~ 3100 7100
$Comp
L Device:R R8
U 1 1 5F2A7BFC
P 7900 2400
F 0 "R8" H 7970 2446 50  0000 L CNN
F 1 "10K" H 7970 2355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7830 2400 50  0001 C CNN
F 3 "~" H 7900 2400 50  0001 C CNN
	1    7900 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F2CD6D7
P 7900 2550
F 0 "#PWR0105" H 7900 2300 50  0001 C CNN
F 1 "GND" H 7905 2377 50  0000 C CNN
F 2 "" H 7900 2550 50  0001 C CNN
F 3 "" H 7900 2550 50  0001 C CNN
	1    7900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2250 8350 2250
Wire Wire Line
	4250 2200 4850 2200
Text Label 8350 2150 2    50   ~ 0
#BG_7
Text Label 8350 2050 2    50   ~ 0
#BGACK_7
Text Label 8350 2250 2    50   ~ 0
#BR_7
$Comp
L XC9572VQ44:XC9572VQ44 U4
U 1 1 5F355068
P 2050 5950
F 0 "U4" H 1550 4650 50  0000 C CNN
F 1 "XC9572VQ44" H 2450 4650 50  0000 C CNN
F 2 "Housings_QFP:LQFP-44_10x10mm_Pitch0.8mm" H 2050 5950 50  0001 C CNN
F 3 "xilinx/xc9572.pdf" H 2050 5950 50  0001 C CNN
	1    2050 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7350 2050 7350
Connection ~ 2050 7350
Wire Wire Line
	2050 7350 2150 7350
Wire Wire Line
	2050 7350 2050 7450
Connection ~ 4250 6650
Text Label 1450 3550 2    50   ~ 0
#RAM_LB
Text Label 1450 3450 2    50   ~ 0
#RAM_UB
Text Label 1450 3250 2    50   ~ 0
#RAM_CE
Text Label 1450 3150 2    50   ~ 0
#RAM_WR
Text Label 1450 3050 2    50   ~ 0
#RAM_OE
Text Label 2750 5150 0    50   ~ 0
#RAM_LB
Text Label 2750 5250 0    50   ~ 0
#RAM_UB
Text Label 2750 5350 0    50   ~ 0
#RAM_WR
Text Label 2750 5450 0    50   ~ 0
A23
Text Label 2750 5550 0    50   ~ 0
A22
Text Label 2750 5650 0    50   ~ 0
A21
Text Label 2750 6450 0    50   ~ 0
#AS_ACCEL
Text Label 2750 6350 0    50   ~ 0
#UDS
Text Label 2750 6250 0    50   ~ 0
#LDS
$Comp
L power:+5V #PWR0122
U 1 1 5F2DF671
P 4250 1900
F 0 "#PWR0122" H 4250 1750 50  0001 C CNN
F 1 "+5V" H 4265 2073 50  0000 C CNN
F 2 "" H 4250 1900 50  0001 C CNN
F 3 "" H 4250 1900 50  0001 C CNN
	1    4250 1900
	1    0    0    -1  
$EndComp
Text Label 1350 6450 2    50   ~ 0
#RAM_OE
Text Label 2750 5050 0    50   ~ 0
#RAM_CE
$Comp
L Device:R R9
U 1 1 5F2F16D4
P 3750 3050
F 0 "R9" H 3820 3096 50  0000 L CNN
F 1 "10K" H 3820 3005 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 3680 3050 50  0001 C CNN
F 3 "~" H 3750 3050 50  0001 C CNN
	1    3750 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 5F2F1978
P 3750 2850
F 0 "#PWR0123" H 3750 2700 50  0001 C CNN
F 1 "+5V" H 3765 3023 50  0000 C CNN
F 2 "" H 3750 2850 50  0001 C CNN
F 3 "" H 3750 2850 50  0001 C CNN
	1    3750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2900 3750 2850
Wire Wire Line
	3750 3200 3750 4250
Wire Wire Line
	3750 4250 4850 4250
Text Label 2750 6150 0    50   ~ 0
R_#W
Text Label 2750 6550 0    50   ~ 0
#HALT
Text Label 1350 6550 2    50   ~ 0
#DTACK_7
Text Label 4850 3200 2    50   ~ 0
MODE
Text Label 4850 4150 2    50   ~ 0
#AVEC
Text Label 4850 4250 2    50   ~ 0
#DTACK_ACCEL
Text Label 1350 6050 2    50   ~ 0
#BG_7
Text Label 1350 6250 2    50   ~ 0
#BGACK_7
Text Label 1350 6150 2    50   ~ 0
#BR_7
Text Label 2750 5950 0    50   ~ 0
A20
Text Notes 1950 4250 0    50   ~ 0
/CS\n0xC00000 - 0xC7FFFF\n0xC80000 - 0xCFFFFF\n0xD00000 - 0xD7FFFF (SlowRAM)\n\n0xF80000 - 0xFFFFFF (MapROM)
$Comp
L Device:C C10
U 1 1 5F380D6D
P 6650 7250
F 0 "C10" H 6765 7296 50  0000 L CNN
F 1 "100n" H 6765 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6688 7100 50  0001 C CNN
F 3 "~" H 6650 7250 50  0001 C CNN
	1    6650 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 7400 6650 7400
Connection ~ 6300 7400
Wire Wire Line
	6300 7100 6650 7100
Connection ~ 6300 7100
Text Label 1350 6350 2    50   ~ 0
_A2
Text Label 2650 3250 0    50   ~ 0
_A2
Text Label 1350 5950 2    50   ~ 0
#AS_7
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F56F0F6
P 750 7250
F 0 "H1" H 850 7255 50  0000 L CNN
F 1 "MountingHole_Pad" H 850 7210 50  0001 L CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad_Via" H 750 7250 50  0001 C CNN
F 3 "~" H 750 7250 50  0001 C CNN
	1    750  7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F56F4AF
P 1150 7250
F 0 "H2" H 1250 7255 50  0000 L CNN
F 1 "MountingHole_Pad" H 1250 7210 50  0001 L CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad_Via" H 1150 7250 50  0001 C CNN
F 3 "~" H 1150 7250 50  0001 C CNN
	1    1150 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5F56FABC
P 1150 7450
F 0 "#PWR0125" H 1150 7200 50  0001 C CNN
F 1 "GND" H 1155 7277 50  0000 C CNN
F 2 "" H 1150 7450 50  0001 C CNN
F 3 "" H 1150 7450 50  0001 C CNN
	1    1150 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5F56FAFF
P 750 7450
F 0 "#PWR0126" H 750 7200 50  0001 C CNN
F 1 "GND" H 755 7277 50  0000 C CNN
F 2 "" H 750 7450 50  0001 C CNN
F 3 "" H 750 7450 50  0001 C CNN
	1    750  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  7350 750  7450
Wire Wire Line
	1150 7350 1150 7450
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5F59518B
P 3400 4800
F 0 "J2" H 3500 5100 50  0000 C CNN
F 1 "SPARE1" H 3500 5000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3400 4800 50  0001 C CNN
F 3 "~" H 3400 4800 50  0001 C CNN
	1    3400 4800
	1    0    0    -1  
$EndComp
Text Label 1350 5250 2    50   ~ 0
_SP1
Text Label 3600 4900 0    50   ~ 0
_SP2
Text Label 3450 5750 0    50   ~ 0
ACTIVE
Text Label 3800 5750 0    50   ~ 0
MAPROM
Text Label 3600 5300 0    50   ~ 0
_SP3
Text Label 3600 5400 0    50   ~ 0
_SP4
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5F5960B3
P 3400 5300
F 0 "J3" H 3500 5600 50  0000 C CNN
F 1 "SPARE2" H 3500 5500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3400 5300 50  0001 C CNN
F 3 "~" H 3400 5300 50  0001 C CNN
	1    3400 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5F5F3403
P 3900 5200
F 0 "#PWR0127" H 3900 4950 50  0001 C CNN
F 1 "GND" H 3905 5027 50  0000 C CNN
F 2 "" H 3900 5200 50  0001 C CNN
F 3 "" H 3900 5200 50  0001 C CNN
	1    3900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5200 3900 5200
Text Label 1350 5850 2    50   ~ 0
_SP4
Text Label 1350 5750 2    50   ~ 0
_SP3
$Comp
L power:GND #PWR0128
U 1 1 5F62C4FF
P 3900 4700
F 0 "#PWR0128" H 3900 4450 50  0001 C CNN
F 1 "GND" H 3905 4527 50  0000 C CNN
F 2 "" H 3900 4700 50  0001 C CNN
F 3 "" H 3900 4700 50  0001 C CNN
	1    3900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4700 3900 4700
Text Label 3600 4800 0    50   ~ 0
_SP1
Text Label 1350 5150 2    50   ~ 0
_SP2
$Comp
L Device:LED D1
U 1 1 5F64055A
P 3450 6200
F 0 "D1" V 3488 6083 50  0000 R CNN
F 1 "LED" V 3397 6083 50  0000 R CNN
F 2 "LEDs:LED_0805" H 3450 6200 50  0001 C CNN
F 3 "~" H 3450 6200 50  0001 C CNN
	1    3450 6200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5F6405EA
P 3800 6200
F 0 "D2" V 3838 6083 50  0000 R CNN
F 1 "LED" V 3747 6083 50  0000 R CNN
F 2 "LEDs:LED_0805" H 3800 6200 50  0001 C CNN
F 3 "~" H 3800 6200 50  0001 C CNN
	1    3800 6200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5F6798A2
P 3450 5900
F 0 "R10" H 3520 5946 50  0000 L CNN
F 1 "680R" H 3520 5855 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 3380 5900 50  0001 C CNN
F 3 "~" H 3450 5900 50  0001 C CNN
	1    3450 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5F67993C
P 3800 5900
F 0 "R11" H 3870 5946 50  0000 L CNN
F 1 "680R" H 3870 5855 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 3730 5900 50  0001 C CNN
F 3 "~" H 3800 5900 50  0001 C CNN
	1    3800 5900
	1    0    0    -1  
$EndComp
Text Label 1350 5350 2    50   ~ 0
ACTIVE
Text Label 1350 5450 2    50   ~ 0
MAPROM
$Comp
L power:GND #PWR0129
U 1 1 5F77A5A2
P 3450 6350
F 0 "#PWR0129" H 3450 6100 50  0001 C CNN
F 1 "GND" H 3455 6177 50  0000 C CNN
F 2 "" H 3450 6350 50  0001 C CNN
F 3 "" H 3450 6350 50  0001 C CNN
	1    3450 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5F77A5F1
P 3800 6350
F 0 "#PWR0130" H 3800 6100 50  0001 C CNN
F 1 "GND" H 3805 6177 50  0000 C CNN
F 2 "" H 3800 6350 50  0001 C CNN
F 3 "" H 3800 6350 50  0001 C CNN
	1    3800 6350
	1    0    0    -1  
$EndComp
Text Label 1350 5550 2    50   ~ 0
A19
Wire Wire Line
	3800 7100 4500 7100
Wire Wire Line
	3800 7400 4500 7400
Text Label 1450 3350 2    50   ~ 0
#RAM_CE2
Text Label 1350 5650 2    50   ~ 0
#RAM_CE2
$Comp
L Graphic:Logo_Open_Hardware_Small LOGO1
U 1 1 5F951079
P 10750 6200
F 0 "LOGO1" H 10750 6475 50  0001 C CNN
F 1 "OSHW" H 10750 5975 50  0001 C CNN
F 2 "Symbols:OSHW-Symbol_6.7x6mm_SilkScreen" H 10750 6200 50  0001 C CNN
F 3 "~" H 10750 6200 50  0001 C CNN
	1    10750 6200
	1    0    0    -1  
$EndComp
Wire Bus Line
	10900 900  10900 5650
Wire Bus Line
	7400 900  7400 5700
Wire Bus Line
	1100 1000 1100 2750
Wire Bus Line
	3000 1100 3000 3150
Wire Bus Line
	10800 1000 10800 5150
Wire Bus Line
	7300 1000 7300 5200
Wire Bus Line
	10700 1100 10700 3450
Wire Bus Line
	7200 1100 7200 3500
Text Label 8350 3150 2    50   ~ 0
CLK_E
Text Label 2750 6650 0    50   ~ 0
CLK_E
$EndSCHEMATC
