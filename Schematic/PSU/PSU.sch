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
L Connector_Generic:Conn_01x02 J1
U 1 1 5FC35180
P 1300 1600
F 0 "J1" H 1218 1275 50  0000 C CNN
F 1 "Trafo sec 26V" H 1218 1366 50  0000 C CNN
F 2 "myDevices:TerminalBlock_LCSC_P5.08mm" H 1300 1600 50  0001 C CNN
F 3 "~" H 1300 1600 50  0001 C CNN
	1    1300 1600
	-1   0    0    1   
$EndComp
$Comp
L myDevices:D_Bridge_+A-A D1
U 1 1 5FC365AA
P 2350 1800
F 0 "D1" H 2300 2275 50  0000 L CNN
F 1 "TS6P03G" H 2200 2200 50  0000 L CNN
F 2 "myDevices:Generic_rectifier" H 2350 1800 50  0001 C CNN
F 3 "~" H 2350 1800 50  0001 C CNN
	1    2350 1800
	1    0    0    -1  
$EndComp
$Comp
L IFS-Power:GND #PWR01
U 1 1 5FC378FF
P 2000 1900
F 0 "#PWR01" H 2000 1650 60  0001 C CNN
F 1 "GND" H 2005 1727 50  0000 C CNN
F 2 "" H 2000 1900 60  0000 C CNN
F 3 "" H 2000 1900 60  0000 C CNN
	1    2000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1900 2000 1800
Wire Wire Line
	2000 1800 2050 1800
Wire Wire Line
	2650 1800 2650 1500
Wire Wire Line
	2650 1500 2925 1500
Wire Wire Line
	4375 1500 3650 1500
Connection ~ 3650 1500
$Comp
L dk_PMIC-Voltage-Regulators-Linear:LM317T U1
U 1 1 5FC3AAEA
P 4925 1500
F 0 "U1" H 4925 1787 60  0000 C CNN
F 1 "LM338" H 4925 1681 60  0000 C CNN
F 2 "digikey-footprints:TO-220-3" H 5125 1700 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group1/a0/db/e6/9b/6f/9c/45/7b/CD00000455/files/CD00000455.pdf/jcr:content/translations/en.CD00000455.pdf" H 5125 1800 60  0001 L CNN
F 4 "497-1575-5-ND" H 5125 1900 60  0001 L CNN "Digi-Key_PN"
F 5 "LM317T" H 5125 2000 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 5125 2100 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 5125 2200 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group1/a0/db/e6/9b/6f/9c/45/7b/CD00000455/files/CD00000455.pdf/jcr:content/translations/en.CD00000455.pdf" H 5125 2300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/LM317T/497-1575-5-ND/591677" H 5125 2400 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LIN POS ADJ 1.5A TO220AB" H 5125 2500 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 5125 2600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5125 2700 60  0001 L CNN "Status"
	1    4925 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4625 1500 4375 1500
Connection ~ 4375 1500
Wire Wire Line
	4375 1700 4375 1500
Wire Wire Line
	3650 1500 3650 1700
Connection ~ 4375 2725
Wire Wire Line
	4375 2775 4375 2725
Wire Wire Line
	4375 2725 3650 2725
Wire Wire Line
	4375 2000 4375 2725
Wire Wire Line
	3650 2000 3650 2725
$Comp
L IFS-Power:GND #PWR02
U 1 1 5FC38F11
P 4375 2775
F 0 "#PWR02" H 4375 2525 60  0001 C CNN
F 1 "GND" H 4380 2602 50  0000 C CNN
F 2 "" H 4375 2775 60  0000 C CNN
F 3 "" H 4375 2775 60  0000 C CNN
	1    4375 2775
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5FC37F47
P 3650 1850
F 0 "C3" H 3768 1896 50  0000 L CNN
F 1 "4700µF 50V" H 3768 1805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 3688 1700 50  0001 C CNN
F 3 "~" H 3650 1850 50  0001 C CNN
	1    3650 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5FC3CC43
P 4925 2075
F 0 "RV2" H 4856 2121 50  0000 R CNN
F 1 "5kΩ" H 4856 2030 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 4925 2075 50  0001 C CNN
F 3 "~" H 4925 2075 50  0001 C CNN
	1    4925 2075
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FC3DB8F
P 5350 1675
F 0 "R1" H 5420 1721 50  0000 L CNN
F 1 "240Ω" H 5420 1630 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5280 1675 50  0001 C CNN
F 3 "~" H 5350 1675 50  0001 C CNN
	1    5350 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 1800 4925 1850
Wire Wire Line
	4925 1850 5350 1850
Wire Wire Line
	5350 1825 5350 1850
Connection ~ 4925 1850
Wire Wire Line
	4925 1850 4925 1925
Wire Wire Line
	5225 1500 5350 1500
Wire Wire Line
	5350 1500 5350 1525
$Comp
L Device:C C5
U 1 1 5FC3FC9A
P 5750 1850
F 0 "C5" H 5865 1896 50  0000 L CNN
F 1 "1µF" H 5865 1805 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W8.0mm_P15.00mm_FKS3_FKP3" H 5788 1700 50  0001 C CNN
F 3 "~" H 5750 1850 50  0001 C CNN
	1    5750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1500 5750 1500
Wire Wire Line
	5750 1500 5750 1700
Connection ~ 5350 1500
Wire Wire Line
	5750 2000 5750 2725
$Comp
L Device:CP C2
U 1 1 5FC40A50
P 2925 1850
F 0 "C2" H 3043 1896 50  0000 L CNN
F 1 "4700µF 50V" H 3043 1805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 2963 1700 50  0001 C CNN
F 3 "~" H 2925 1850 50  0001 C CNN
	1    2925 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2925 1700 2925 1500
Connection ~ 2925 1500
Wire Wire Line
	2925 1500 3650 1500
Wire Wire Line
	2925 2000 2925 2725
Wire Wire Line
	2925 2725 3650 2725
Connection ~ 3650 2725
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5FC490C5
P 1650 4000
F 0 "J2" H 1900 4000 50  0000 C CNN
F 1 "Trafo pri 230V" H 2050 3900 50  0000 C CNN
F 2 "myDevices:TerminalBlock_LCSC_P5.08mm" H 1650 4000 50  0001 C CNN
F 3 "~" H 1650 4000 50  0001 C CNN
	1    1650 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5FC4A338
P 2175 4550
F 0 "F1" V 1978 4550 50  0000 C CNN
F 1 "T500mA" V 2069 4550 50  0000 C CNN
F 2 "myDevices:Fuseholder_Cylinder-5x20mm_Closed" V 2105 4550 50  0001 C CNN
F 3 "~" H 2175 4550 50  0001 C CNN
	1    2175 4550
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5FC4AD2A
P 1750 2275
F 0 "F2" V 1553 2275 50  0000 C CNN
F 1 "T4A" V 1644 2275 50  0000 C CNN
F 2 "myDevices:Fuseholder_Cylinder-5x20mm_Closed" V 1680 2275 50  0001 C CNN
F 3 "~" H 1750 2275 50  0001 C CNN
	1    1750 2275
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FC4C73D
P 3100 4775
F 0 "C1" H 3215 4821 50  0000 L CNN
F 1 "100nF X2" H 3215 4730 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W6.0mm_P15.00mm_FKS3_FKP3" H 3138 4625 50  0001 C CNN
F 3 "~" H 3100 4775 50  0001 C CNN
	1    3100 4775
	1    0    0    -1  
$EndComp
$Comp
L Device:Varistor RV1
U 1 1 5FC4CF79
P 2525 4775
F 0 "RV1" H 2628 4821 50  0000 L CNN
F 1 "10D431K" H 2628 4730 50  0000 L CNN
F 2 "Varistor:RV_Disc_D12mm_W4.5mm_P7.5mm" V 2455 4775 50  0001 C CNN
F 3 "~" H 2525 4775 50  0001 C CNN
	1    2525 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	2025 4550 1850 4550
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5FC50466
P 1650 4850
F 0 "J4" H 1925 4875 50  0000 C CNN
F 1 "Power switch" H 1975 4775 50  0000 C CNN
F 2 "myDevices:TerminalBlock_LCSC_P5.08mm" H 1650 4850 50  0001 C CNN
F 3 "~" H 1650 4850 50  0001 C CNN
	1    1650 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 4000 3650 4000
Wire Wire Line
	1850 4850 1850 4650
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5FC49AA9
P 1650 4550
F 0 "J3" H 1900 4600 50  0000 C CNN
F 1 "230V input" H 1900 4500 50  0000 C CNN
F 2 "myDevices:TerminalBlock_LCSC_P5.08mm" H 1650 4550 50  0001 C CNN
F 3 "~" H 1650 4550 50  0001 C CNN
	1    1650 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 1500 5750 1500
Connection ~ 5750 1500
Wire Wire Line
	6300 1800 6300 2725
Wire Wire Line
	6300 2725 5750 2725
Connection ~ 5750 2725
$Comp
L power:+36V #PWR03
U 1 1 5FC5A5C4
P 2925 1500
F 0 "#PWR03" H 2925 1350 50  0001 C CNN
F 1 "+36V" H 2940 1673 50  0000 C CNN
F 2 "" H 2925 1500 50  0001 C CNN
F 3 "" H 2925 1500 50  0001 C CNN
	1    2925 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1500 6725 1500
Wire Wire Line
	6725 1500 6725 1725
Wire Wire Line
	6725 2025 6725 2725
Wire Wire Line
	6725 2725 6300 2725
Connection ~ 6300 2725
$Comp
L power:+5V #PWR09
U 1 1 5FC5CF52
P 6725 1500
F 0 "#PWR09" H 6725 1350 50  0001 C CNN
F 1 "+5V" H 6740 1673 50  0000 C CNN
F 2 "" H 6725 1500 50  0001 C CNN
F 3 "" H 6725 1500 50  0001 C CNN
	1    6725 1500
	1    0    0    -1  
$EndComp
Connection ~ 6725 1500
$Comp
L dk_Power-Relays-Over-2-Amps:G5LE-14_DC12 RLY1
U 1 1 5FC61F8A
P 5950 4675
F 0 "RLY1" H 6575 4750 50  0000 R CNN
F 1 "G5LE-14_DC36" H 6950 4650 50  0000 R CNN
F 2 "digikey-footprints:Relay_THT_G5LE-14" H 6150 4875 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 6150 4975 60  0001 L CNN
F 4 "Z1012-ND" H 6150 5075 60  0001 L CNN "Digi-Key_PN"
F 5 "G5LE-14 DC12" H 6150 5175 60  0001 L CNN "MPN"
F 6 "Relays" H 6150 5275 60  0001 L CNN "Category"
F 7 "Power Relays, Over 2 Amps" H 6150 5375 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 6150 5475 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/G5LE-14-DC12/Z1012-ND/280369" H 6150 5575 60  0001 L CNN "DK_Detail_Page"
F 10 "RELAY GEN PURPOSE SPDT 10A 12V" H 6150 5675 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 6150 5775 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6150 5875 60  0001 L CNN "Status"
	1    5950 4675
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6150 4175 6150 4375
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q1
U 1 1 5FC688BE
P 6150 5400
F 0 "Q1" H 5800 5625 60  0000 L CNN
F 1 "2N7000" H 5625 5525 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 6350 5600 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 6350 5700 60  0001 L CNN
F 4 "2N7000FS-ND" H 6350 5800 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 6350 5900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6350 6000 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6350 6100 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 6350 6200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 6350 6300 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 6350 6400 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 6350 6500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6350 6600 60  0001 L CNN "Status"
	1    6150 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4975 6150 5075
NoConn ~ 5750 4375
Wire Wire Line
	5950 4175 5950 4375
Wire Wire Line
	6150 5600 6150 5875
$Comp
L Device:R R2
U 1 1 5FC735C1
P 5700 5675
F 0 "R2" H 5770 5721 50  0000 L CNN
F 1 "10kΩ" H 5770 5630 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5630 5675 50  0001 C CNN
F 3 "~" H 5700 5675 50  0001 C CNN
	1    5700 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5825 5700 5875
Wire Wire Line
	5700 5875 6150 5875
Connection ~ 6150 5875
Wire Wire Line
	5850 5500 5700 5500
Wire Wire Line
	5700 5500 5700 5525
Wire Wire Line
	5700 5500 5525 5500
Connection ~ 5700 5500
Wire Wire Line
	5525 5500 5525 6100
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5FC9D94B
P 5275 5000
F 0 "J6" H 5450 5000 50  0000 C CNN
F 1 "UV_Panel_1" H 5575 4900 50  0000 C CNN
F 2 "myDevices:TerminalBlock_LCSC_P5.08mm" H 5275 5000 50  0001 C CNN
F 3 "~" H 5275 5000 50  0001 C CNN
	1    5275 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5475 5000 5850 5000
Wire Wire Line
	5850 5000 5850 4975
$Comp
L IFS-Power:GND #PWR012
U 1 1 5FCA0771
P 5475 5150
F 0 "#PWR012" H 5475 4900 60  0001 C CNN
F 1 "GND" H 5480 4977 50  0000 C CNN
F 2 "" H 5475 5150 60  0000 C CNN
F 3 "" H 5475 5150 60  0000 C CNN
	1    5475 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 5150 5475 5100
$Comp
L Device:C C4
U 1 1 5FCA71A4
P 4375 1850
F 0 "C4" H 4490 1896 50  0000 L CNN
F 1 "1µF" H 4490 1805 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W8.0mm_P15.00mm_FKS3_FKP3" H 4413 1700 50  0001 C CNN
F 3 "~" H 4375 1850 50  0001 C CNN
	1    4375 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5FCA752F
P 6725 1875
F 0 "C6" H 6840 1921 50  0000 L CNN
F 1 "1µF" H 6840 1830 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W8.0mm_P15.00mm_FKS3_FKP3" H 6763 1725 50  0001 C CNN
F 3 "~" H 6725 1875 50  0001 C CNN
	1    6725 1875
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5FCA80DD
P 7150 2250
F 0 "D4" V 7189 2132 50  0000 R CNN
F 1 "LED" V 7098 2132 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 7150 2250 50  0001 C CNN
F 3 "~" H 7150 2250 50  0001 C CNN
	1    7150 2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5FCA8E89
P 7150 1825
F 0 "R4" H 7080 1779 50  0000 R CNN
F 1 "560Ω" H 7080 1870 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7080 1825 50  0001 C CNN
F 3 "~" H 7150 1825 50  0001 C CNN
	1    7150 1825
	-1   0    0    1   
$EndComp
Wire Wire Line
	6725 1500 7150 1500
Wire Wire Line
	7150 1500 7150 1675
Wire Wire Line
	7150 1975 7150 2100
Wire Wire Line
	7150 2400 7150 2725
Wire Wire Line
	7150 2725 6725 2725
Connection ~ 6725 2725
$Comp
L power:VCC #PWR07
U 1 1 5FCB5DCC
P 5750 1500
F 0 "#PWR07" H 5750 1350 50  0001 C CNN
F 1 "VCC" H 5765 1673 50  0000 C CNN
F 2 "" H 5750 1500 50  0001 C CNN
F 3 "" H 5750 1500 50  0001 C CNN
	1    5750 1500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5FCB6522
P 5950 4175
F 0 "#PWR04" H 5950 4025 50  0001 C CNN
F 1 "VCC" H 5965 4348 50  0000 C CNN
F 2 "" H 5950 4175 50  0001 C CNN
F 3 "" H 5950 4175 50  0001 C CNN
	1    5950 4175
	1    0    0    -1  
$EndComp
Connection ~ 6575 5875
$Comp
L IFS-Power:GND #PWR06
U 1 1 5FC72BB1
P 6575 5875
F 0 "#PWR06" H 6575 5625 60  0001 C CNN
F 1 "GND" H 6580 5702 50  0000 C CNN
F 2 "" H 6575 5875 60  0000 C CNN
F 3 "" H 6575 5875 60  0000 C CNN
	1    6575 5875
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5875 6575 5875
Connection ~ 6575 4175
Wire Wire Line
	6575 4175 6375 4175
$Comp
L power:+36V #PWR05
U 1 1 5FC60121
P 6575 4175
F 0 "#PWR05" H 6575 4025 50  0001 C CNN
F 1 "+36V" H 6590 4348 50  0000 C CNN
F 2 "" H 6575 4175 50  0001 C CNN
F 3 "" H 6575 4175 50  0001 C CNN
	1    6575 4175
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5FCB69B6
P 7200 4175
F 0 "#PWR08" H 7200 4025 50  0001 C CNN
F 1 "VCC" H 7215 4348 50  0000 C CNN
F 2 "" H 7200 4175 50  0001 C CNN
F 3 "" H 7200 4175 50  0001 C CNN
	1    7200 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	7675 5150 7675 5100
$Comp
L IFS-Power:GND #PWR013
U 1 1 5FCA4A12
P 7675 5150
F 0 "#PWR013" H 7675 4900 60  0001 C CNN
F 1 "GND" H 7680 4977 50  0000 C CNN
F 2 "" H 7675 5150 60  0000 C CNN
F 3 "" H 7675 5150 60  0000 C CNN
	1    7675 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7675 5000 7300 5000
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5FCA4A0B
P 7875 5000
F 0 "J7" H 7955 4992 50  0000 L CNN
F 1 "UV_Panel_2" H 7955 4901 50  0000 L CNN
F 2 "myDevices:TerminalBlock_LCSC_P5.08mm" H 7875 5000 50  0001 C CNN
F 3 "~" H 7875 5000 50  0001 C CNN
	1    7875 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5400 8700 5400
Wire Wire Line
	8600 5325 8600 5400
$Comp
L power:+5V #PWR010
U 1 1 5FC97012
P 8600 5325
F 0 "#PWR010" H 8600 5175 50  0001 C CNN
F 1 "+5V" H 8615 5498 50  0000 C CNN
F 2 "" H 8600 5325 50  0001 C CNN
F 3 "" H 8600 5325 50  0001 C CNN
	1    8600 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5700 8700 5700
Wire Wire Line
	8600 5775 8600 5700
$Comp
L IFS-Power:GND #PWR011
U 1 1 5FC94DD0
P 8600 5775
F 0 "#PWR011" H 8600 5525 60  0001 C CNN
F 1 "GND" H 8605 5602 50  0000 C CNN
F 2 "" H 8600 5775 60  0000 C CNN
F 3 "" H 8600 5775 60  0000 C CNN
	1    8600 5775
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6100 5525 6100
Wire Wire Line
	7700 5600 7700 6100
Wire Wire Line
	8700 5600 7700 5600
Wire Wire Line
	7375 5500 8700 5500
Connection ~ 7375 5500
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5FC81EF2
P 8900 5500
F 0 "J5" H 8980 5492 50  0000 L CNN
F 1 "To timer" H 8980 5401 50  0000 L CNN
F 2 "myDevices:KF2510-4P" H 8900 5500 50  0001 C CNN
F 3 "~" H 8900 5500 50  0001 C CNN
	1    8900 5500
	1    0    0    -1  
$EndComp
Connection ~ 7000 5875
Wire Wire Line
	7375 5875 7375 5825
Wire Wire Line
	7000 5875 7375 5875
Wire Wire Line
	7375 5500 7375 5525
Wire Wire Line
	7300 5500 7375 5500
$Comp
L Device:R R3
U 1 1 5FC7AF6D
P 7375 5675
F 0 "R3" H 7445 5721 50  0000 L CNN
F 1 "10kΩ" H 7445 5630 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7305 5675 50  0001 C CNN
F 3 "~" H 7375 5675 50  0001 C CNN
	1    7375 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6575 5875 7000 5875
Wire Wire Line
	7000 5875 7000 5600
Wire Wire Line
	7200 4175 7200 4375
NoConn ~ 7400 4375
Wire Wire Line
	7000 5200 7000 5075
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q2
U 1 1 5FC69A15
P 7000 5400
F 0 "Q2" H 6650 5625 60  0000 L CNN
F 1 "2N7000" H 6475 5525 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 7200 5600 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 7200 5700 60  0001 L CNN
F 4 "2N7000FS-ND" H 7200 5800 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 7200 5900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7200 6000 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7200 6100 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 7200 6200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 7200 6300 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 7200 6400 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7200 6500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7200 6600 60  0001 L CNN "Status"
	1    7000 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7000 4175 7000 4375
Wire Wire Line
	6575 4175 6775 4175
$Comp
L dk_Power-Relays-Over-2-Amps:G5LE-14_DC12 RLY2
U 1 1 5FC5F6EE
P 7200 4675
F 0 "RLY2" H 7528 4721 50  0000 L CNN
F 1 "G5LE-14_DC36" H 7528 4630 50  0000 L CNN
F 2 "digikey-footprints:Relay_THT_G5LE-14" H 7400 4875 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 7400 4975 60  0001 L CNN
F 4 "Z1012-ND" H 7400 5075 60  0001 L CNN "Digi-Key_PN"
F 5 "G5LE-14 DC12" H 7400 5175 60  0001 L CNN "MPN"
F 6 "Relays" H 7400 5275 60  0001 L CNN "Category"
F 7 "Power Relays, Over 2 Amps" H 7400 5375 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 7400 5475 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/G5LE-14-DC12/Z1012-ND/280369" H 7400 5575 60  0001 L CNN "DK_Detail_Page"
F 10 "RELAY GEN PURPOSE SPDT 10A 12V" H 7400 5675 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 7400 5775 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7400 5875 60  0001 L CNN "Status"
	1    7200 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4975 7300 5000
$Comp
L Diode:1N4007 D2
U 1 1 5FCD043B
P 6375 4675
F 0 "D2" V 6329 4755 50  0000 L CNN
F 1 "1N4007" V 6250 4725 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6375 4500 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6375 4675 50  0001 C CNN
	1    6375 4675
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D3
U 1 1 5FCD0F44
P 6775 4675
F 0 "D3" V 6850 4525 50  0000 L CNN
F 1 "1N4007" V 6925 4350 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6775 4500 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6775 4675 50  0001 C CNN
	1    6775 4675
	0    1    1    0   
$EndComp
Wire Wire Line
	6375 4525 6375 4175
Connection ~ 6375 4175
Wire Wire Line
	6375 4175 6150 4175
Wire Wire Line
	6775 4525 6775 4175
Connection ~ 6775 4175
Wire Wire Line
	6775 4175 7000 4175
Wire Wire Line
	6775 4825 6775 5075
Wire Wire Line
	6775 5075 7000 5075
Connection ~ 7000 5075
Wire Wire Line
	7000 5075 7000 4975
Wire Wire Line
	6375 4825 6375 5075
Wire Wire Line
	6375 5075 6150 5075
Connection ~ 6150 5075
Wire Wire Line
	6150 5075 6150 5200
Wire Wire Line
	4375 2725 4925 2725
$Comp
L Device:R R5
U 1 1 5FCEF0AF
P 4925 2475
F 0 "R5" H 4995 2521 50  0000 L CNN
F 1 "1kΩ" H 4995 2430 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4855 2475 50  0001 C CNN
F 3 "~" H 4925 2475 50  0001 C CNN
	1    4925 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 2325 4925 2275
Wire Wire Line
	4925 2625 4925 2725
Connection ~ 4925 2725
Wire Wire Line
	4925 2725 5750 2725
Wire Wire Line
	5075 2075 5075 2275
Wire Wire Line
	5075 2275 4925 2275
Connection ~ 4925 2275
Wire Wire Line
	4925 2275 4925 2225
Wire Wire Line
	1850 4950 2525 4950
Wire Wire Line
	2525 4950 2525 4925
Wire Wire Line
	2525 4950 3100 4950
Wire Wire Line
	3100 4950 3100 4925
Connection ~ 2525 4950
Wire Wire Line
	3100 4625 3100 4550
Wire Wire Line
	1850 4100 3100 4100
Wire Wire Line
	3650 4950 3100 4950
Wire Wire Line
	3650 4000 3650 4950
Connection ~ 3100 4950
Wire Wire Line
	2325 4550 2525 4550
Wire Wire Line
	2525 4550 2525 4625
Wire Wire Line
	2525 4550 3100 4550
Connection ~ 2525 4550
Connection ~ 3100 4550
Wire Wire Line
	3100 4550 3100 4100
$Comp
L Mechanical:MountingHole H1
U 1 1 5FD265D3
P 2000 5950
F 0 "H1" H 2100 5996 50  0000 L CNN
F 1 "MountingHole" H 2100 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2000 5950 50  0001 C CNN
F 3 "~" H 2000 5950 50  0001 C CNN
	1    2000 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FD26B30
P 2000 6200
F 0 "H2" H 2100 6246 50  0000 L CNN
F 1 "MountingHole" H 2100 6155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2000 6200 50  0001 C CNN
F 3 "~" H 2000 6200 50  0001 C CNN
	1    2000 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FD26C96
P 2000 6475
F 0 "H3" H 2100 6521 50  0000 L CNN
F 1 "MountingHole" H 2100 6430 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2000 6475 50  0001 C CNN
F 3 "~" H 2000 6475 50  0001 C CNN
	1    2000 6475
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FD26EB3
P 2000 6750
F 0 "H4" H 2100 6796 50  0000 L CNN
F 1 "MountingHole" H 2100 6705 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2000 6750 50  0001 C CNN
F 3 "~" H 2000 6750 50  0001 C CNN
	1    2000 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2275 1600 2275
Wire Wire Line
	1500 1600 1500 2275
Wire Wire Line
	2350 2100 2350 2275
Wire Wire Line
	1500 1500 2350 1500
$Comp
L dk_PMIC-Voltage-Regulators-Linear:MC7805CT-BP U2
U 1 1 5FDDC606
P 6300 1500
F 0 "U2" H 6300 1787 60  0000 C CNN
F 1 "MC7805CT-BP" H 6300 1681 60  0000 C CNN
F 2 "digikey-footprints:TO-220-3" H 6500 1700 60  0001 L CNN
F 3 "https://www.mccsemi.com/pdf/Products/MC7805CT(TO-220).pdf" H 6500 1800 60  0001 L CNN
F 4 "MC7805CT-BPMS-ND" H 6500 1900 60  0001 L CNN "Digi-Key_PN"
F 5 "MC7805CT-BP" H 6500 2000 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 6500 2100 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 6500 2200 60  0001 L CNN "Family"
F 8 "https://www.mccsemi.com/pdf/Products/MC7805CT(TO-220).pdf" H 6500 2300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/micro-commercial-co/MC7805CT-BP/MC7805CT-BPMS-ND/804682" H 6500 2400 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 5V 1.5A TO220" H 6500 2500 60  0001 L CNN "Description"
F 11 "Micro Commercial Co" H 6500 2600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6500 2700 60  0001 L CNN "Status"
	1    6300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2275 2350 2275
$EndSCHEMATC
