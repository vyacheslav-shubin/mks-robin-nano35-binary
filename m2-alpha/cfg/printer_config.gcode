M117 SHUI M2001 X220 Y220 Z250      ;set machine size
M92 X80.4 Y80.4 Z1600 T0 E412       ;axis steps per unit

M117 SHUI M2003 X1 Y1 Z1 T0 E1    ;Axis invertion (1 - inverted)

M117 SHUI M2004 S1 X0 Y1 Z0       ;Endstop passive level (S-1-MAX/0-MIN XYZ - 1/0 VCC/GND enstop)
M117 SHUI M2004 S0 X1 Y0 Z1   

M145 S0 B61 H201 ;Material preset
M145 S1 B91 H231
M145 S2 B76 H241
M145 S3 B111 H210


M117 SHUI M2002 S0 X20 Y20          ;set manual leveling point
M117 SHUI M2002 S1 X200 Y20
M117 SHUI M2002 S2 X20 Y200
M117 SHUI M2002 S3 X200 Y200
M117 SHUI M2002 S4 X100 Y100


M603 T0 L800 U850				;Filament load/unload config
M603 T1 L801 U851

; Power control
;F - flags. 
;	1 - module exists, 
;	2 - auto power off
;	4 - wait cooling hotend
;S - delay before bower off (0-255 sec)
;T - hotend temperature (0-255 celsius)

M117 SHUI M2005	F7 S20 T50 

M500
M0 S2 Configured

