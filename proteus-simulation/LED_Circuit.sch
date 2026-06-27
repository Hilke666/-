[Meta]
FileVersion=4.0

[GUIDE]
Name=LED_Circuit
Description=Simple LED Circuit - 5V Power Supply with 220Ω Resistor and Red LED
Author=Hilke666
Company=Educational
Revision=1.0
Date=27/06/2026

[SHEET]
Number=1
Name=Main Circuit

[COMPONENT:U1]
Type=VSRC
Value=5
Unit=V
X=50
Y=100
Orientation=0
Reference=VCC
Description=5V Voltage Source

[COMPONENT:R1]
Type=RES
Value=220
Unit=Ω
X=150
Y=100
Orientation=0
Reference=R1
Tolerance=5%
Package=0805
Description=Current Limiting Resistor

[COMPONENT:D1]
Type=LED
Value=RED
X=280
Y=100
Orientation=0
Reference=D1
Color=Red
Vf=2.0V
If=20mA
Description=Red Light Emitting Diode

[COMPONENT:GND1]
Type=GND
X=100
Y=150
Orientation=0
Reference=GND1
Description=Ground Reference

[COMPONENT:GND2]
Type=GND
X=280
Y=150
Orientation=0
Reference=GND2
Description=Ground Reference

[NET:1]
Name=VCC
Nodes=U1:+,R1:1

[NET:2]
Name=NET1
Nodes=R1:2,D1:A

[NET:3]
Name=GND
Nodes=U1:-,D1:K,GND1,GND2

[SIMULATION]
AnalysisType=Transient
StartTime=0
EndTime=1s
TimeStep=0.1ms
MaxStepSize=1ms
Tolerance=1e-6
UseInitialConditions=true
AutoTimeStep=true

[PARAMETERS]
Temperature=25C
VCC=5V
R1_Value=220Ω
LED_Type=Red
LED_Vf=2.0V
LED_If=20mA