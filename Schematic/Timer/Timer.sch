EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Generic Timer"
Date "2020-11-03"
Rev ""
Comp "Bjørner Sandom"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L dk_Battery-Holders-Clips-Contacts:BS-7 BAT1
U 1 1 5FDF8A51
P 4300 4150
F 0 "BAT1" H 4428 4203 60  0000 L CNN
F 1 "BS-7" H 4428 4097 60  0000 L CNN
F 2 "digikey-footprints:Battery_Holder_Coin_2032_BS-7" H 4500 4350 60  0001 L CNN
F 3 "http://www.memoryprotectiondevices.com/datasheets/BS-7-datasheet.pdf" V 4500 4450 60  0001 L CNN
F 4 "BS-7-ND" H 4500 4550 60  0001 L CNN "Digi-Key_PN"
F 5 "BS-7" H 4500 4650 60  0001 L CNN "MPN"
F 6 "Battery Products" H 4500 4750 60  0001 L CNN "Category"
F 7 "Battery Holders, Clips, Contacts" H 4500 4850 60  0001 L CNN "Family"
F 8 "http://www.memoryprotectiondevices.com/datasheets/BS-7-datasheet.pdf" H 4500 4950 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/mpd-memory-protection-devices/BS-7/BS-7-ND/389447" H 4500 5050 60  0001 L CNN "DK_Detail_Page"
F 10 "BATTERY HOLDER COIN 20MM PC PIN" H 4500 5150 60  0001 L CNN "Description"
F 11 "MPD (Memory Protection Devices)" H 4500 5250 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4500 5350 60  0001 L CNN "Status"
	1    4300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6675 3775 6275 3775
Text Label 6275 3775 0    50   ~ 0
SDA
Wire Wire Line
	6675 3875 6275 3875
Text Label 6275 3875 0    50   ~ 0
SCL
$Comp
L IFS-Power:GND #PWR014
U 1 1 5FDFC4B3
P 4300 4375
F 0 "#PWR014" H 4300 4125 60  0001 C CNN
F 1 "GND" H 4305 4202 50  0000 C CNN
F 2 "" H 4300 4375 60  0000 C CNN
F 3 "" H 4300 4375 60  0000 C CNN
	1    4300 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4375 4300 4350
$Comp
L power:+BATT #PWR013
U 1 1 5FDFCC27
P 4300 3925
F 0 "#PWR013" H 4300 3775 50  0001 C CNN
F 1 "+BATT" H 4315 4098 50  0000 C CNN
F 2 "" H 4300 3925 50  0001 C CNN
F 3 "" H 4300 3925 50  0001 C CNN
	1    4300 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3925 4300 3950
$Comp
L power:+BATT #PWR05
U 1 1 5FDFE379
P 2825 3475
F 0 "#PWR05" H 2825 3325 50  0001 C CNN
F 1 "+BATT" H 2840 3648 50  0000 C CNN
F 2 "" H 2825 3475 50  0001 C CNN
F 3 "" H 2825 3475 50  0001 C CNN
	1    2825 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	2825 3475 2825 3575
$Comp
L IFS-Power:GND #PWR06
U 1 1 5FE04022
P 2825 4700
F 0 "#PWR06" H 2825 4450 60  0001 C CNN
F 1 "GND" H 2830 4527 50  0000 C CNN
F 2 "" H 2825 4700 60  0000 C CNN
F 3 "" H 2825 4700 60  0000 C CNN
	1    2825 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2825 4700 2825 4600
Wire Wire Line
	7475 4525 7475 4600
Wire Wire Line
	7475 4600 7575 4600
Wire Wire Line
	7675 4600 7675 4525
Wire Wire Line
	7575 4525 7575 4600
Connection ~ 7575 4600
Wire Wire Line
	7575 4600 7675 4600
Wire Wire Line
	7675 4600 7675 4675
$Comp
L IFS-Power:GND #PWR024
U 1 1 5FE056D3
P 7675 4675
F 0 "#PWR024" H 7675 4425 60  0001 C CNN
F 1 "GND" H 7680 4502 50  0000 C CNN
F 2 "" H 7675 4675 60  0000 C CNN
F 3 "" H 7675 4675 60  0000 C CNN
	1    7675 4675
	1    0    0    -1  
$EndComp
Text Notes 2975 4750 0    50   ~ 0
I2C Address: 0x68
$Comp
L Device:R R3
U 1 1 5FE072B9
P 3875 4000
F 0 "R3" H 3945 4046 50  0000 L CNN
F 1 "10kΩ" H 3945 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3805 4000 50  0001 C CNN
F 3 "~" H 3875 4000 50  0001 C CNN
	1    3875 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3875 4150 3875 4300
Wire Wire Line
	3875 4300 3325 4300
Wire Wire Line
	3875 3800 3875 3850
$Comp
L myDevices:Display_OLED_0.96_I2C U2
U 1 1 5FE0AD90
P 3400 1950
F 0 "U2" H 3578 2438 50  0000 L CNN
F 1 "Display_OLED_0.96_I2C" H 3578 2347 50  0000 L CNN
F 2 "myDevices:Display_OLED_0.96in_I2C" V 3500 2250 50  0001 C CNN
F 3 "" V 3500 2250 50  0001 C CNN
	1    3400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1800 3500 2200
Text Label 3500 2200 1    50   ~ 0
SDA
Wire Wire Line
	3400 1800 3400 2200
Text Label 3400 2200 1    50   ~ 0
SCL
$Comp
L IFS-Power:GND #PWR09
U 1 1 5FE0C12E
P 3200 2200
F 0 "#PWR09" H 3200 1950 60  0001 C CNN
F 1 "GND" H 3205 2027 50  0000 C CNN
F 2 "" H 3200 2200 60  0000 C CNN
F 3 "" H 3200 2200 60  0000 C CNN
	1    3200 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2200 3200 1800
Wire Wire Line
	3300 1800 3300 1850
Wire Wire Line
	3300 1850 2800 1850
Wire Wire Line
	2800 1850 2800 1825
Connection ~ 2800 1850
Wire Wire Line
	2800 2150 2800 2200
Wire Wire Line
	2800 2200 3200 2200
Connection ~ 3200 2200
$Comp
L Device:C C2
U 1 1 5FE0E6B7
P 2800 2000
F 0 "C2" H 2685 1954 50  0000 R CNN
F 1 "100nF" H 2685 2045 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2838 1850 50  0001 C CNN
F 3 "~" H 2800 2000 50  0001 C CNN
	1    2800 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5FE1125F
P 5450 2025
F 0 "Y1" V 5496 1894 50  0000 R CNN
F 1 "8/16MHz" V 5405 1894 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 5450 2025 50  0001 C CNN
F 3 "~" H 5450 2025 50  0001 C CNN
	1    5450 2025
	0    -1   -1   0   
$EndComp
$Comp
L myDevices:MCP23017-E_SO U3
U 1 1 5FE1412B
P 5200 5900
F 0 "U3" V 5850 5200 60  0000 R CNN
F 1 "MCP23017-E_SO" V 5775 5375 60  0000 R CNN
F 2 "digikey-footprints:SOIC-28_W7.5mm" H 5400 6100 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en023709" H 5400 6200 60  0001 L CNN
F 4 "Interface - I/O Expanders" H 5400 6600 60  0001 L CNN "Family"
F 5 "Active" H 5400 7100 60  0001 L CNN "Status"
	1    5200 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 6500 6200 7025
Text Label 6200 7025 1    50   ~ 0
SDA
Wire Wire Line
	6300 6500 6300 7025
Text Label 6300 7025 1    50   ~ 0
SCL
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5FE194DF
P 6400 1225
F 0 "SW1" V 6400 995 50  0000 R CNN
F 1 "Rotary_Encoder_Switch" V 6355 995 50  0001 R CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 6250 1385 50  0001 C CNN
F 3 "~" H 6400 1485 50  0001 C CNN
	1    6400 1225
	0    -1   -1   0   
$EndComp
$Comp
L IFS-Power:GND #PWR019
U 1 1 5FE1ED44
P 6400 1550
F 0 "#PWR019" H 6400 1300 60  0001 C CNN
F 1 "GND" H 6405 1377 50  0000 C CNN
F 2 "" H 6400 1550 60  0000 C CNN
F 3 "" H 6400 1550 60  0000 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1550 6400 1525
Wire Wire Line
	7475 1525 7475 1475
Wire Wire Line
	7475 1475 7575 1475
Wire Wire Line
	7675 1475 7675 1525
Wire Wire Line
	7575 1525 7575 1475
Connection ~ 7575 1475
Wire Wire Line
	7575 1475 7675 1475
Wire Wire Line
	7675 1425 7675 1475
Wire Wire Line
	6675 1975 5950 1975
Wire Wire Line
	5950 1975 5950 1875
Wire Wire Line
	5950 1875 5450 1875
Wire Wire Line
	5450 2175 5950 2175
Wire Wire Line
	5950 2175 5950 2075
Wire Wire Line
	5950 2075 6675 2075
$Comp
L Device:C C6
U 1 1 5FE30A5D
P 5150 1875
F 0 "C6" V 5402 1875 50  0000 C CNN
F 1 "22pF" V 5311 1875 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5188 1725 50  0001 C CNN
F 3 "~" H 5150 1875 50  0001 C CNN
	1    5150 1875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 1875 5450 1875
Connection ~ 5450 1875
$Comp
L Device:C C7
U 1 1 5FE3259B
P 5150 2175
F 0 "C7" V 5000 2175 50  0000 C CNN
F 1 "22pF" V 4925 2175 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5188 2025 50  0001 C CNN
F 3 "~" H 5150 2175 50  0001 C CNN
	1    5150 2175
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 2175 5450 2175
Connection ~ 5450 2175
Wire Wire Line
	5000 1875 4850 1875
Wire Wire Line
	4850 1875 4850 2175
Wire Wire Line
	4850 2175 5000 2175
$Comp
L IFS-Power:GND #PWR015
U 1 1 5FE3571B
P 4850 2250
F 0 "#PWR015" H 4850 2000 60  0001 C CNN
F 1 "GND" H 4855 2077 50  0000 C CNN
F 2 "" H 4850 2250 60  0000 C CNN
F 3 "" H 4850 2250 60  0000 C CNN
	1    4850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2250 4850 2175
Connection ~ 4850 2175
Connection ~ 7675 1475
Connection ~ 7675 4600
$Comp
L IFS-Power:GND #PWR025
U 1 1 5FE3A06A
P 8225 1600
F 0 "#PWR025" H 8225 1350 60  0001 C CNN
F 1 "GND" H 8230 1427 50  0000 C CNN
F 2 "" H 8225 1600 60  0000 C CNN
F 3 "" H 8225 1600 60  0000 C CNN
	1    8225 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5FE3A5C1
P 8000 1475
F 0 "C8" V 7748 1475 50  0000 C CNN
F 1 "100nF" V 7839 1475 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8038 1325 50  0001 C CNN
F 3 "~" H 8000 1475 50  0001 C CNN
	1    8000 1475
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 1475 7675 1475
Wire Wire Line
	8150 1475 8225 1475
Wire Wire Line
	8225 1475 8225 1600
NoConn ~ 4900 5400
$Comp
L Device:R R6
U 1 1 5FE46CCF
P 5950 3825
F 0 "R6" H 6020 3871 50  0000 L CNN
F 1 "10kΩ" H 6020 3780 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5880 3825 50  0001 C CNN
F 3 "~" H 5950 3825 50  0001 C CNN
	1    5950 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3650 5950 3675
Wire Wire Line
	5950 3975 6675 3975
$Comp
L IFS-Power:GND #PWR021
U 1 1 5FE4CAB9
P 6725 925
F 0 "#PWR021" H 6725 675 60  0001 C CNN
F 1 "GND" H 6730 752 50  0000 C CNN
F 2 "" H 6725 925 60  0000 C CNN
F 3 "" H 6725 925 60  0000 C CNN
	1    6725 925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6725 925  6500 925 
Wire Wire Line
	6300 925  5825 925 
Text Label 5825 925  0    50   ~ 0
ROTSW_PUSH
Wire Wire Line
	6400 6500 6400 6625
Wire Wire Line
	6400 6625 6500 6625
Wire Wire Line
	6600 6625 6600 6500
Wire Wire Line
	6500 6500 6500 6625
Connection ~ 6500 6625
Wire Wire Line
	6500 6625 6600 6625
Wire Wire Line
	6500 6625 6500 6750
$Comp
L IFS-Power:GND #PWR020
U 1 1 5FE5E6F1
P 6500 6750
F 0 "#PWR020" H 6500 6500 60  0001 C CNN
F 1 "GND" H 6505 6577 50  0000 C CNN
F 2 "" H 6500 6750 60  0000 C CNN
F 3 "" H 6500 6750 60  0000 C CNN
	1    6500 6750
	1    0    0    -1  
$EndComp
$Comp
L dk_Pushbutton-Switches:GPTS203211B S2
U 1 1 5FE603D5
P 1525 6625
F 0 "S2" H 1525 6900 50  0000 C CNN
F 1 "GPTS203211B" H 1525 6809 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 1725 6825 50  0001 L CNN
F 3 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 1725 6925 60  0001 L CNN
F 4 "CW181-ND" H 1725 7025 60  0001 L CNN "Digi-Key_PN"
F 5 "GPTS203211B" H 1725 7125 60  0001 L CNN "MPN"
F 6 "Switches" H 1725 7225 60  0001 L CNN "Category"
F 7 "Pushbutton Switches" H 1725 7325 60  0001 L CNN "Family"
F 8 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 1725 7425 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cw-industries/GPTS203211B/CW181-ND/3190590" H 1725 7525 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH PUSHBUTTON SPST 1A 30V" H 1725 7625 60  0001 L CNN "Description"
F 11 "CW Industries" H 1725 7725 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1725 7825 60  0001 L CNN "Status"
	1    1525 6625
	1    0    0    -1  
$EndComp
$Comp
L dk_Pushbutton-Switches:GPTS203211B S4
U 1 1 5FE60A38
P 1525 7000
F 0 "S4" H 1525 7275 50  0000 C CNN
F 1 "GPTS203211B" H 1525 7184 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 1725 7200 50  0001 L CNN
F 3 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 1725 7300 60  0001 L CNN
F 4 "CW181-ND" H 1725 7400 60  0001 L CNN "Digi-Key_PN"
F 5 "GPTS203211B" H 1725 7500 60  0001 L CNN "MPN"
F 6 "Switches" H 1725 7600 60  0001 L CNN "Category"
F 7 "Pushbutton Switches" H 1725 7700 60  0001 L CNN "Family"
F 8 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 1725 7800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cw-industries/GPTS203211B/CW181-ND/3190590" H 1725 7900 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH PUSHBUTTON SPST 1A 30V" H 1725 8000 60  0001 L CNN "Description"
F 11 "CW Industries" H 1725 8100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1725 8200 60  0001 L CNN "Status"
	1    1525 7000
	1    0    0    -1  
$EndComp
$Comp
L dk_Pushbutton-Switches:GPTS203211B S1
U 1 1 5FE61381
P 2625 6250
F 0 "S1" H 2625 6525 50  0000 C CNN
F 1 "GPTS203211B" H 2625 6434 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 2825 6450 50  0001 L CNN
F 3 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 2825 6550 60  0001 L CNN
F 4 "CW181-ND" H 2825 6650 60  0001 L CNN "Digi-Key_PN"
F 5 "GPTS203211B" H 2825 6750 60  0001 L CNN "MPN"
F 6 "Switches" H 2825 6850 60  0001 L CNN "Category"
F 7 "Pushbutton Switches" H 2825 6950 60  0001 L CNN "Family"
F 8 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 2825 7050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cw-industries/GPTS203211B/CW181-ND/3190590" H 2825 7150 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH PUSHBUTTON SPST 1A 30V" H 2825 7250 60  0001 L CNN "Description"
F 11 "CW Industries" H 2825 7350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2825 7450 60  0001 L CNN "Status"
	1    2625 6250
	1    0    0    -1  
$EndComp
$Comp
L dk_Pushbutton-Switches:GPTS203211B S3
U 1 1 5FE61E1A
P 2625 6625
F 0 "S3" H 2625 6900 50  0000 C CNN
F 1 "GPTS203211B" H 2625 6809 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 2825 6825 50  0001 L CNN
F 3 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 2825 6925 60  0001 L CNN
F 4 "CW181-ND" H 2825 7025 60  0001 L CNN "Digi-Key_PN"
F 5 "GPTS203211B" H 2825 7125 60  0001 L CNN "MPN"
F 6 "Switches" H 2825 7225 60  0001 L CNN "Category"
F 7 "Pushbutton Switches" H 2825 7325 60  0001 L CNN "Family"
F 8 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 2825 7425 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cw-industries/GPTS203211B/CW181-ND/3190590" H 2825 7525 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH PUSHBUTTON SPST 1A 30V" H 2825 7625 60  0001 L CNN "Description"
F 11 "CW Industries" H 2825 7725 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2825 7825 60  0001 L CNN "Status"
	1    2625 6625
	1    0    0    -1  
$EndComp
$Comp
L dk_Pushbutton-Switches:GPTS203211B S5
U 1 1 5FE62621
P 2625 7000
F 0 "S5" H 2625 7275 50  0000 C CNN
F 1 "GPTS203211B" H 2625 7184 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 2825 7200 50  0001 L CNN
F 3 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 2825 7300 60  0001 L CNN
F 4 "CW181-ND" H 2825 7400 60  0001 L CNN "Digi-Key_PN"
F 5 "GPTS203211B" H 2825 7500 60  0001 L CNN "MPN"
F 6 "Switches" H 2825 7600 60  0001 L CNN "Category"
F 7 "Pushbutton Switches" H 2825 7700 60  0001 L CNN "Family"
F 8 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 2825 7800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cw-industries/GPTS203211B/CW181-ND/3190590" H 2825 7900 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH PUSHBUTTON SPST 1A 30V" H 2825 8000 60  0001 L CNN "Description"
F 11 "CW Industries" H 2825 8100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2825 8200 60  0001 L CNN "Status"
	1    2625 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1725 6250 2150 6250
Text Label 2150 6250 2    50   ~ 0
BUTTON0
Wire Wire Line
	2825 6250 3250 6250
Text Label 3250 6250 2    50   ~ 0
BUTTON1
Wire Wire Line
	1725 6625 2150 6625
Text Label 2150 6625 2    50   ~ 0
BUTTON2
Wire Wire Line
	2825 6625 3250 6625
Text Label 3250 6625 2    50   ~ 0
BUTTON3
Wire Wire Line
	1725 7000 2150 7000
Text Label 2150 7000 2    50   ~ 0
BUTTON4
Wire Wire Line
	2825 7000 3250 7000
Text Label 3250 7000 2    50   ~ 0
BUTTON5
$Comp
L IFS-Power:GND #PWR01
U 1 1 5FE742E9
P 1250 7125
F 0 "#PWR01" H 1250 6875 60  0001 C CNN
F 1 "GND" H 1255 6952 50  0000 C CNN
F 2 "" H 1250 7125 60  0000 C CNN
F 3 "" H 1250 7125 60  0000 C CNN
	1    1250 7125
	1    0    0    -1  
$EndComp
Wire Wire Line
	1325 6250 1250 6250
Wire Wire Line
	1250 6250 1250 6625
Wire Wire Line
	1325 6625 1250 6625
Connection ~ 1250 6625
Wire Wire Line
	1250 6625 1250 7000
Wire Wire Line
	1325 7000 1250 7000
Connection ~ 1250 7000
Wire Wire Line
	1250 7000 1250 7125
$Comp
L IFS-Power:GND #PWR04
U 1 1 5FE7CAAE
P 2350 7125
F 0 "#PWR04" H 2350 6875 60  0001 C CNN
F 1 "GND" H 2355 6952 50  0000 C CNN
F 2 "" H 2350 7125 60  0000 C CNN
F 3 "" H 2350 7125 60  0000 C CNN
	1    2350 7125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2425 6250 2350 6250
Wire Wire Line
	2350 6250 2350 6625
Wire Wire Line
	2425 6625 2350 6625
Connection ~ 2350 6625
Wire Wire Line
	2350 6625 2350 7000
Wire Wire Line
	2425 7000 2350 7000
Connection ~ 2350 7000
Wire Wire Line
	2350 7000 2350 7125
Wire Wire Line
	4600 6500 4600 7025
Text Label 4600 7025 1    50   ~ 0
BUTTON0
Wire Wire Line
	4700 6500 4700 7025
Text Label 4700 7025 1    50   ~ 0
BUTTON1
Wire Wire Line
	4800 6500 4800 7025
Wire Wire Line
	4900 6500 4900 7025
Text Label 4900 7025 1    50   ~ 0
BUTTON2
Wire Wire Line
	5000 6500 5000 7025
Text Label 5000 7025 1    50   ~ 0
BUTTON5
Wire Wire Line
	5100 6500 5100 7025
Text Label 5100 7025 1    50   ~ 0
BUTTON4
Wire Wire Line
	4125 5675 4125 5800
Wire Wire Line
	4125 5800 4400 5800
$Comp
L Device:C C4
U 1 1 5FEA5AB6
P 4125 6025
F 0 "C4" H 4010 5979 50  0000 R CNN
F 1 "100nF" H 4010 6070 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4163 5875 50  0001 C CNN
F 3 "~" H 4125 6025 50  0001 C CNN
	1    4125 6025
	-1   0    0    1   
$EndComp
Wire Wire Line
	4125 5875 4125 5800
Connection ~ 4125 5800
$Comp
L IFS-Power:GND #PWR012
U 1 1 5FEB4C9D
P 4125 6250
F 0 "#PWR012" H 4125 6000 60  0001 C CNN
F 1 "GND" H 4130 6077 50  0000 C CNN
F 2 "" H 4125 6250 60  0000 C CNN
F 3 "" H 4125 6250 60  0000 C CNN
	1    4125 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 6250 4125 6175
Wire Wire Line
	2325 4400 1850 4400
Text Label 6275 3975 0    50   ~ 0
~RESET
Wire Wire Line
	5400 6500 5400 7025
Text Label 5400 7025 1    50   ~ 0
MCP0
Wire Wire Line
	5500 6500 5500 7025
Text Label 5500 7025 1    50   ~ 0
MCP1
Wire Wire Line
	5600 6500 5600 7025
Text Label 5600 7025 1    50   ~ 0
MCP2
Wire Wire Line
	5700 6500 5700 7025
Text Label 5700 7025 1    50   ~ 0
MCP3
Wire Wire Line
	5800 6500 5800 7025
Text Label 5800 7025 1    50   ~ 0
MCP4
Wire Wire Line
	5900 6500 5900 7025
Text Label 5900 7025 1    50   ~ 0
MCP5
Wire Wire Line
	6000 6500 6000 7025
Text Label 6000 7025 1    50   ~ 0
MCP6
Wire Wire Line
	6100 6500 6100 7025
Text Label 6100 7025 1    50   ~ 0
MCP7
$Comp
L IFS-Power:GND #PWR022
U 1 1 5FEECCA0
P 6875 5875
F 0 "#PWR022" H 6875 5625 60  0001 C CNN
F 1 "GND" H 6880 5702 50  0000 C CNN
F 2 "" H 6875 5875 60  0000 C CNN
F 3 "" H 6875 5875 60  0000 C CNN
	1    6875 5875
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5800 6875 5800
Wire Wire Line
	6875 5800 6875 5875
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5FEF24E8
P 5125 4275
F 0 "J1" H 5043 3750 50  0000 C CNN
F 1 "FIRMWARE" H 5043 3841 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5125 4275 50  0001 C CNN
F 3 "~" H 5125 4275 50  0001 C CNN
	1    5125 4275
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 5FEF3775
P 5500 3975
F 0 "C5" V 5752 3975 50  0000 C CNN
F 1 "10nF" V 5661 3975 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5538 3825 50  0001 C CNN
F 3 "~" H 5500 3975 50  0001 C CNN
	1    5500 3975
	0    -1   -1   0   
$EndComp
Text Label 1850 4400 0    50   ~ 0
~RESET
Text Label 4800 5000 3    50   ~ 0
~RESET
Wire Wire Line
	4800 5400 4800 5000
Text Label 5000 5000 3    50   ~ 0
MCP_INT
Wire Wire Line
	5000 5400 5000 5000
Text Label 6275 4275 0    50   ~ 0
MCP_INT
Wire Wire Line
	6675 4275 6275 4275
Wire Wire Line
	5350 3975 5325 3975
Wire Wire Line
	5650 3975 5950 3975
Connection ~ 5950 3975
Wire Wire Line
	5325 4075 5650 4075
Wire Wire Line
	5650 4075 5750 4175
Wire Wire Line
	5750 4175 6675 4175
Wire Wire Line
	5325 4175 5650 4175
Wire Wire Line
	5650 4175 5750 4075
Wire Wire Line
	5750 4075 6675 4075
$Comp
L IFS-Power:GND #PWR017
U 1 1 5FF31028
P 5400 4600
F 0 "#PWR017" H 5400 4350 60  0001 C CNN
F 1 "GND" H 5405 4427 50  0000 C CNN
F 2 "" H 5400 4600 60  0000 C CNN
F 3 "" H 5400 4600 60  0000 C CNN
	1    5400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 4475 5400 4475
Wire Wire Line
	5400 4475 5400 4600
NoConn ~ 5325 4375
Wire Wire Line
	5325 4275 5825 4275
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5FF61B90
P 10250 3625
F 0 "J4" H 10330 3617 50  0000 L CNN
F 1 "I2C Header" H 10330 3526 50  0000 L CNN
F 2 "myDevices:KF2510-4P" H 10250 3625 50  0001 C CNN
F 3 "~" H 10250 3625 50  0001 C CNN
	1    10250 3625
	1    0    0    -1  
$EndComp
$Comp
L IFS-Power:GND #PWR030
U 1 1 5FF78FE0
P 9975 3875
F 0 "#PWR030" H 9975 3625 60  0001 C CNN
F 1 "GND" H 9980 3702 50  0000 C CNN
F 2 "" H 9975 3875 60  0000 C CNN
F 3 "" H 9975 3875 60  0000 C CNN
	1    9975 3875
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10050 3825 9975 3825
Wire Wire Line
	9975 3825 9975 3875
NoConn ~ 6675 3075
NoConn ~ 6675 3175
NoConn ~ 6675 3275
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 60011157
P 10250 2900
F 0 "J3" H 10330 2942 50  0000 L CNN
F 1 "Analog header" H 10330 2851 50  0000 L CNN
F 2 "myDevices:KF2510-5P" H 10250 2900 50  0001 C CNN
F 3 "~" H 10250 2900 50  0001 C CNN
	1    10250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6675 3375 6275 3375
Text Label 6275 3375 0    50   ~ 0
A0
Wire Wire Line
	6675 3475 6275 3475
Text Label 6275 3475 0    50   ~ 0
A1
Wire Wire Line
	6675 3575 6275 3575
Text Label 6275 3575 0    50   ~ 0
A2
Wire Wire Line
	6675 3675 6275 3675
Text Label 6275 3675 0    50   ~ 0
A3
$Comp
L IFS-Power:GND #PWR029
U 1 1 600A12BD
P 9975 3150
F 0 "#PWR029" H 9975 2900 60  0001 C CNN
F 1 "GND" H 9980 2977 50  0000 C CNN
F 2 "" H 9975 3150 60  0000 C CNN
F 3 "" H 9975 3150 60  0000 C CNN
	1    9975 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10050 3100 9975 3100
Wire Wire Line
	9975 3100 9975 3150
Text Notes 5750 5450 0    50   ~ 0
I2C Address: 0x20
$Comp
L Mechanical:MountingHole H1
U 1 1 600B3304
P 1125 1275
F 0 "H1" H 1225 1321 50  0000 L CNN
F 1 "MountingHole" H 1225 1230 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1125 1275 50  0001 C CNN
F 3 "~" H 1125 1275 50  0001 C CNN
	1    1125 1275
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 600B3DC5
P 1125 1550
F 0 "H2" H 1225 1596 50  0000 L CNN
F 1 "MountingHole" H 1225 1505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1125 1550 50  0001 C CNN
F 3 "~" H 1125 1550 50  0001 C CNN
	1    1125 1550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 600B403E
P 1125 1850
F 0 "H3" H 1225 1896 50  0000 L CNN
F 1 "MountingHole" H 1225 1805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1125 1850 50  0001 C CNN
F 3 "~" H 1125 1850 50  0001 C CNN
	1    1125 1850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 600B4236
P 1125 2150
F 0 "H4" H 1225 2196 50  0000 L CNN
F 1 "MountingHole" H 1225 2105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1125 2150 50  0001 C CNN
F 3 "~" H 1125 2150 50  0001 C CNN
	1    1125 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 600C2D15
P 10250 2100
F 0 "J2" H 10330 2092 50  0000 L CNN
F 1 "Power 3.3/5 V" H 10330 2001 50  0000 L CNN
F 2 "myDevices:KF2510-2P" H 10250 2100 50  0001 C CNN
F 3 "~" H 10250 2100 50  0001 C CNN
	1    10250 2100
	1    0    0    -1  
$EndComp
$Comp
L IFS-Power:GND #PWR028
U 1 1 600DD798
P 9425 2450
F 0 "#PWR028" H 9425 2200 60  0001 C CNN
F 1 "GND" H 9430 2277 50  0000 C CNN
F 2 "" H 9425 2450 60  0000 C CNN
F 3 "" H 9425 2450 60  0000 C CNN
	1    9425 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10050 2200 9975 2200
$Comp
L IFS-Power:PWR_FLAG #FLG01
U 1 1 600E77C3
P 9825 2100
F 0 "#FLG01" H 9825 2195 30  0001 C CNN
F 1 "PWR_FLAG" H 9825 2308 30  0000 C CNN
F 2 "" H 9825 2100 60  0000 C CNN
F 3 "" H 9825 2100 60  0000 C CNN
	1    9825 2100
	1    0    0    -1  
$EndComp
Text Label 9750 3000 0    50   ~ 0
A3
Wire Wire Line
	10050 3000 9750 3000
Text Label 9750 2900 0    50   ~ 0
A2
Wire Wire Line
	10050 2900 9750 2900
Text Label 9750 2800 0    50   ~ 0
A1
Wire Wire Line
	10050 2800 9750 2800
Text Label 9750 2700 0    50   ~ 0
A0
Wire Wire Line
	10050 2700 9750 2700
$Comp
L Connector_Generic:Conn_01x08 J6
U 1 1 5FF54427
P 10250 6025
F 0 "J6" H 10330 6017 50  0000 L CNN
F 1 "MCP Header" H 10330 5926 50  0000 L CNN
F 2 "myDevices:KF2510-8P" H 10250 6025 50  0001 C CNN
F 3 "~" H 10250 6025 50  0001 C CNN
	1    10250 6025
	1    0    0    -1  
$EndComp
Text Label 9525 6425 0    50   ~ 0
MCP7
Wire Wire Line
	10050 6425 9525 6425
Text Label 9525 6325 0    50   ~ 0
MCP6
Wire Wire Line
	10050 6325 9525 6325
Text Label 9525 6225 0    50   ~ 0
MCP5
Wire Wire Line
	10050 6225 9525 6225
Text Label 9525 6125 0    50   ~ 0
MCP4
Wire Wire Line
	10050 6125 9525 6125
Text Label 9525 6025 0    50   ~ 0
MCP3
Wire Wire Line
	10050 6025 9525 6025
Text Label 9525 5925 0    50   ~ 0
MCP2
Wire Wire Line
	10050 5925 9525 5925
Text Label 9525 5825 0    50   ~ 0
MCP1
Wire Wire Line
	10050 5825 9525 5825
Text Label 9525 5725 0    50   ~ 0
MCP0
Wire Wire Line
	10050 5725 9525 5725
$Comp
L dk_Pushbutton-Switches:GPTS203211B S0
U 1 1 5FE5F49C
P 1525 6250
F 0 "S0" H 1525 6525 50  0000 C CNN
F 1 "GPTS203211B" H 1525 6434 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 1725 6450 50  0001 L CNN
F 3 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 1725 6550 60  0001 L CNN
F 4 "CW181-ND" H 1725 6650 60  0001 L CNN "Digi-Key_PN"
F 5 "GPTS203211B" H 1725 6750 60  0001 L CNN "MPN"
F 6 "Switches" H 1725 6850 60  0001 L CNN "Category"
F 7 "Pushbutton Switches" H 1725 6950 60  0001 L CNN "Family"
F 8 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 1725 7050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cw-industries/GPTS203211B/CW181-ND/3190590" H 1725 7150 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH PUSHBUTTON SPST 1A 30V" H 1725 7250 60  0001 L CNN "Description"
F 11 "CW Industries" H 1725 7350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1725 7450 60  0001 L CNN "Status"
	1    1525 6250
	1    0    0    -1  
$EndComp
Text Label 6275 2975 0    50   ~ 0
D13
Wire Wire Line
	6675 2975 6275 2975
Text Label 6275 2875 0    50   ~ 0
D12
Wire Wire Line
	6675 2875 6275 2875
Text Label 6275 2775 0    50   ~ 0
D11
Wire Wire Line
	6675 2775 6275 2775
Text Label 6275 2675 0    50   ~ 0
D10
Wire Wire Line
	6675 2675 6275 2675
Text Label 9525 4925 0    50   ~ 0
D13
Wire Wire Line
	10050 4925 9525 4925
Text Label 9525 4825 0    50   ~ 0
D12
Wire Wire Line
	10050 4825 9525 4825
Text Label 9525 4725 0    50   ~ 0
D11
Wire Wire Line
	10050 4725 9525 4725
Text Label 9525 4625 0    50   ~ 0
D10
Wire Wire Line
	10050 4625 9525 4625
$Comp
L Connector_Generic:Conn_01x08 J5
U 1 1 5FFA9616
P 10250 4625
F 0 "J5" H 10330 4617 50  0000 L CNN
F 1 "GPIO Header" H 10330 4526 50  0000 L CNN
F 2 "myDevices:KF2510-8P" H 10250 4625 50  0001 C CNN
F 3 "~" H 10250 4625 50  0001 C CNN
	1    10250 4625
	1    0    0    -1  
$EndComp
Wire Wire Line
	9975 5025 9975 5075
Wire Wire Line
	10050 5025 9975 5025
$Comp
L IFS-Power:GND #PWR031
U 1 1 5FF92286
P 9975 5075
F 0 "#PWR031" H 9975 4825 60  0001 C CNN
F 1 "GND" H 9980 4902 50  0000 C CNN
F 2 "" H 9975 5075 60  0000 C CNN
F 3 "" H 9975 5075 60  0000 C CNN
	1    9975 5075
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5300 6500 5300 7025
Text Label 5300 7025 1    50   ~ 0
ROTSW_PUSH
$Comp
L Device:LED D2
U 1 1 603264C1
P 5175 2750
F 0 "D2" V 5214 2632 50  0000 R CNN
F 1 "LED" V 5123 2632 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5175 2750 50  0001 C CNN
F 3 "~" H 5175 2750 50  0001 C CNN
	1    5175 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 603271E0
P 4850 2750
F 0 "D1" V 4889 2632 50  0000 R CNN
F 1 "LED" V 4798 2632 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4850 2750 50  0001 C CNN
F 3 "~" H 4850 2750 50  0001 C CNN
	1    4850 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 6032784C
P 4850 3100
F 0 "R4" H 4780 3054 50  0000 R CNN
F 1 "560Ω" H 4780 3145 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 3100 50  0001 C CNN
F 3 "~" H 4850 3100 50  0001 C CNN
	1    4850 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 6032865F
P 5175 3100
F 0 "R5" H 5105 3054 50  0000 R CNN
F 1 "560Ω" H 5105 3145 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5105 3100 50  0001 C CNN
F 3 "~" H 5175 3100 50  0001 C CNN
	1    5175 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 2900 4850 2950
Wire Wire Line
	5175 2900 5175 2950
Wire Wire Line
	5175 2600 5175 2575
Wire Wire Line
	4850 2475 4850 2600
$Comp
L IFS-Power:GND #PWR016
U 1 1 60350AD9
P 5025 3325
F 0 "#PWR016" H 5025 3075 60  0001 C CNN
F 1 "GND" H 5030 3152 50  0000 C CNN
F 2 "" H 5025 3325 60  0000 C CNN
F 3 "" H 5025 3325 60  0000 C CNN
	1    5025 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3250 4850 3300
Wire Wire Line
	4850 3300 5025 3300
Wire Wire Line
	5175 3300 5175 3250
Wire Wire Line
	5025 3325 5025 3300
Connection ~ 5025 3300
Wire Wire Line
	5025 3300 5175 3300
$Comp
L Timer_RTC:DS3231M U1
U 1 1 6038CEA5
P 2825 4200
F 0 "U1" H 3025 3850 50  0000 C CNN
F 1 "DS3231M" H 3150 3775 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 2825 3600 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 3095 4250 50  0001 C CNN
	1    2825 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3575 2725 3575
Wire Wire Line
	2725 3575 2725 3800
Connection ~ 2250 3575
Wire Wire Line
	2250 3475 2250 3575
NoConn ~ 3325 4000
Text Label 3350 4300 0    50   ~ 0
RTC_INT
Text Label 5200 7025 1    50   ~ 0
RTC_INT
Wire Wire Line
	5200 7025 5200 6500
Connection ~ 2825 3575
Wire Wire Line
	2825 3575 2825 3800
$Comp
L myDevices:ATMEGA328P-AU_Arduino U4
U 1 1 604B4539
P 7175 3075
F 0 "U4" H 7853 3178 60  0000 L CNN
F 1 "ATMEGA328P-AU_Arduino" H 7853 3072 60  0000 L CNN
F 2 "digikey-footprints:TQFP-32_7x7mm" H 7825 5525 60  0001 L CNN
F 3 "" H 8075 2875 60  0001 L CNN
	1    7175 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	3075 3575 2825 3575
Wire Wire Line
	3375 3625 3375 3575
$Comp
L IFS-Power:GND #PWR08
U 1 1 604908AF
P 3375 3625
F 0 "#PWR08" H 3375 3375 60  0001 C CNN
F 1 "GND" H 3380 3452 50  0000 C CNN
F 2 "" H 3375 3625 60  0000 C CNN
F 3 "" H 3375 3625 60  0000 C CNN
	1    3375 3625
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 604908A9
P 3225 3575
F 0 "C3" V 2973 3575 50  0000 C CNN
F 1 "100nF" V 3064 3575 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3263 3425 50  0001 C CNN
F 3 "~" H 3225 3575 50  0001 C CNN
	1    3225 3575
	0    -1   1    0   
$EndComp
Wire Wire Line
	1375 3625 1375 3575
$Comp
L IFS-Power:GND #PWR02
U 1 1 5FE060D6
P 1375 3625
F 0 "#PWR02" H 1375 3375 60  0001 C CNN
F 1 "GND" H 1380 3452 50  0000 C CNN
F 2 "" H 1375 3625 60  0000 C CNN
F 3 "" H 1375 3625 60  0000 C CNN
	1    1375 3625
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FE022A7
P 1525 3575
F 0 "C1" V 1273 3575 50  0000 C CNN
F 1 "100nF" V 1364 3575 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1563 3425 50  0001 C CNN
F 3 "~" H 1525 3575 50  0001 C CNN
	1    1525 3575
	0    1    1    0   
$EndComp
Text Label 1700 4000 0    50   ~ 0
SCL
Text Label 1700 4100 0    50   ~ 0
SDA
Wire Wire Line
	2250 4100 1700 4100
Wire Wire Line
	2325 4100 2250 4100
Connection ~ 2250 4100
Wire Wire Line
	2250 3900 2250 4100
Wire Wire Line
	1925 4000 1700 4000
Wire Wire Line
	2325 4000 1925 4000
Connection ~ 1925 4000
Wire Wire Line
	1925 3900 1925 4000
Wire Wire Line
	1675 3575 1925 3575
Wire Wire Line
	1925 3575 2250 3575
Connection ~ 1925 3575
Wire Wire Line
	1925 3575 1925 3600
Wire Wire Line
	2250 3575 2250 3600
$Comp
L Device:R R2
U 1 1 5FDFEDA2
P 2250 3750
F 0 "R2" H 2320 3796 50  0000 L CNN
F 1 "10kΩ" H 2320 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2180 3750 50  0001 C CNN
F 3 "~" H 2250 3750 50  0001 C CNN
	1    2250 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FDFF2A2
P 1925 3750
F 0 "R1" H 1995 3796 50  0000 L CNN
F 1 "10kΩ" H 1995 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1855 3750 50  0001 C CNN
F 3 "~" H 1925 3750 50  0001 C CNN
	1    1925 3750
	-1   0    0    -1  
$EndComp
Text Label 9600 3625 0    50   ~ 0
SCL
Wire Wire Line
	10050 3625 9600 3625
Text Label 9600 3525 0    50   ~ 0
SDA
Wire Wire Line
	10050 3525 9600 3525
Wire Wire Line
	9425 3725 10050 3725
$Comp
L power:VCC #PWR027
U 1 1 604FF04F
P 9425 3725
F 0 "#PWR027" H 9425 3575 50  0001 C CNN
F 1 "VCC" H 9440 3898 50  0000 C CNN
F 2 "" H 9425 3725 50  0001 C CNN
F 3 "" H 9425 3725 50  0001 C CNN
	1    9425 3725
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 604FFCC1
P 7675 1425
F 0 "#PWR023" H 7675 1275 50  0001 C CNN
F 1 "VCC" H 7690 1598 50  0000 C CNN
F 2 "" H 7675 1425 50  0001 C CNN
F 3 "" H 7675 1425 50  0001 C CNN
	1    7675 1425
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 60500B9C
P 2250 3475
F 0 "#PWR03" H 2250 3325 50  0001 C CNN
F 1 "VCC" H 2265 3648 50  0000 C CNN
F 2 "" H 2250 3475 50  0001 C CNN
F 3 "" H 2250 3475 50  0001 C CNN
	1    2250 3475
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR010
U 1 1 60509CE1
P 3875 3800
F 0 "#PWR010" H 3875 3650 50  0001 C CNN
F 1 "VCC" H 3890 3973 50  0000 C CNN
F 2 "" H 3875 3800 50  0001 C CNN
F 3 "" H 3875 3800 50  0001 C CNN
	1    3875 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 6051BF57
P 4125 5675
F 0 "#PWR011" H 4125 5525 50  0001 C CNN
F 1 "VCC" H 4140 5848 50  0000 C CNN
F 2 "" H 4125 5675 50  0001 C CNN
F 3 "" H 4125 5675 50  0001 C CNN
	1    4125 5675
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR026
U 1 1 6052E269
P 9425 2100
F 0 "#PWR026" H 9425 1950 50  0001 C CNN
F 1 "VCC" H 9440 2273 50  0000 C CNN
F 2 "" H 9425 2100 50  0001 C CNN
F 3 "" H 9425 2100 50  0001 C CNN
	1    9425 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9425 2100 9825 2100
Connection ~ 9825 2100
Wire Wire Line
	9825 2100 10050 2100
$Comp
L Device:C C9
U 1 1 60542330
P 9425 2250
F 0 "C9" H 9310 2204 50  0000 R CNN
F 1 "1µF" H 9310 2295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9463 2100 50  0001 C CNN
F 3 "~" H 9425 2250 50  0001 C CNN
	1    9425 2250
	-1   0    0    1   
$EndComp
Connection ~ 9425 2100
Wire Wire Line
	9425 2400 9425 2450
Wire Wire Line
	9975 2400 9425 2400
Wire Wire Line
	9975 2200 9975 2400
Connection ~ 9425 2400
$Comp
L power:VCC #PWR0101
U 1 1 60556F88
P 2800 1825
F 0 "#PWR0101" H 2800 1675 50  0001 C CNN
F 1 "VCC" H 2815 1998 50  0000 C CNN
F 2 "" H 2800 1825 50  0001 C CNN
F 3 "" H 2800 1825 50  0001 C CNN
	1    2800 1825
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 605580C2
P 5950 3650
F 0 "#PWR0102" H 5950 3500 50  0001 C CNN
F 1 "VCC" H 5965 3823 50  0000 C CNN
F 2 "" H 5950 3650 50  0001 C CNN
F 3 "" H 5950 3650 50  0001 C CNN
	1    5950 3650
	1    0    0    -1  
$EndComp
Text Label 4800 7025 1    50   ~ 0
BUTTON3
Wire Wire Line
	4850 2475 5500 2475
Wire Wire Line
	5500 2475 5500 2375
Wire Wire Line
	5500 2375 6675 2375
Wire Wire Line
	5175 2575 5575 2575
Wire Wire Line
	5575 2575 5575 2475
Wire Wire Line
	5575 2475 6675 2475
Text Label 6275 2575 0    50   ~ 0
D9
Wire Wire Line
	6675 2575 6275 2575
Text Label 6275 2275 0    50   ~ 0
D6
Wire Wire Line
	6675 2275 6275 2275
Text Label 6275 2175 0    50   ~ 0
D5
Wire Wire Line
	6675 2175 6275 2175
Text Label 9525 4525 0    50   ~ 0
D9
Wire Wire Line
	10050 4525 9525 4525
Text Label 9525 4425 0    50   ~ 0
D6
Wire Wire Line
	10050 4425 9525 4425
Text Label 9525 4325 0    50   ~ 0
D5
Wire Wire Line
	10050 4325 9525 4325
Wire Wire Line
	6675 1775 6300 1775
Wire Wire Line
	6300 1775 6300 1525
Wire Wire Line
	6500 1525 6500 1875
Wire Wire Line
	6500 1875 6675 1875
Connection ~ 5950 3650
Wire Wire Line
	5825 3650 5950 3650
Wire Wire Line
	5825 4275 5825 3650
$EndSCHEMATC
