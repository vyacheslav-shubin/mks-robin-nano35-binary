M117 SHUI M1 X220 Y220 Z250      		;set machine size
M92 X80.4 Y80.4 Z1600 T0 E412       ;axis steps per unit

M117 SHUI M3 X1 Y1 Z1 T0 E1    ;Axis invertion (1 - inverted)

M117 SHUI M4 S1 X0 Y1 Z0       ;Endstop passive level (S-1-MAX/0-MIN XYZ - 1/0 VCC/GND enstop)
M117 SHUI M4 S0 X1 Y0 Z1 

M117 SHUI M5 X21 Y22 Z23 F1001	;Filament change point (X, Y, dZ, feedrate)    

M145 S0 B61 H201 ;Material preset
M145 S1 B91 H231
M145 S2 B76 H241
M145 S3 B111 H210


M117 SHUI M2 S0 X20 Y20          ;set manual leveling point
M117 SHUI M2 S1 X200 Y20
M117 SHUI M2 S2 X20 Y200
M117 SHUI M2 S3 X200 Y200
M117 SHUI M2 S4 X100 Y100


M603 T0 L800 U850				;Filament load/unload config
M603 T1 L801 U851

; Power control
;F - flags. 
;	1 - module exists, 
;	2 - auto power off
;	4 - wait cooling hotend
;S - delay before power off (0-255 sec)
;T - hotend temperature (0-255 celsius)

M117 SHUI M6 F7 S20 T50 

M500

M117 SHUI M10 S-1
;MOVE_X_INC 0
M117 SHUI M10 S0|G91|G1 X%3.1f F2000|G90
;MOVE_X_DEC 1
M117 SHUI M10 S1|G91|G1 X-%3.1f F1000|G90
;MOVE_Y_INC 2
M117 SHUI M10 S2|G91|G1 Y%3.1f F1000|G90
;MOVE_Y_DEC 3
M117 SHUI M10 S3|G91|G1 Y-%3.1f F1000|G90
;MOVE_Z_INC 4
M117 SHUI M10 S4|G91|G1 Z%3.1f F1000|G90
;MOVE_Z_DEC 5
M117 SHUI M10 S5|G91|G1 Z-%3.1f F1000|G90
;MOVE_E0_INC 6
M117 SHUI M10 S6|G91|G1 T0 E%3.1f F1000|G90
;MOVE_E0_DEC 7
M117 SHUI M10 S7|G91|G1 T0 E-%3.1f F1000|G90
;MOVE_E1_INC 8
M117 SHUI M10 S8|G91|G1 T1 E%3.1f F1000|G90
;MOVE_E1_DEC 9
M117 SHUI M10 S9|G91|G1 T1 E-%3.1f F1000|G90
;HOME_X 10
M117 SHUI M10 S10|G28 X0|M0 S2 Homed
;HOME_Y 11
M117 SHUI M10 S11|G28 Y0|M0 S2 Homed
;HOME_Z 12
M117 SHUI M10 S12|G28 Z0|M0 S2 Homed
;HOME_ALL 13
M117 SHUI M10 S13|G28|M0 S2 Homed
;HOME_B 14
M117 SHUI M10 S14|G1 Z200 F2000|M0 S2 Bed homed
;HOME_T 15
M117 SHUI M10 S15|G91|G1 Z20 F2000|G90|G1 X20 Y20|M0 S2 Tool homed
;POWER_OFF 16
M117 SHUI M10 S16|M81
;FILAMENT_LOAD 17
M117 SHUI M10 S17|G91|G1 T%d E%3.1f F2000|G90
;FILAMENT_UNLOAD 18
M117 SHUI M10 S18|G91|G1 T%d E-%3.1f F2000|G90


M117 SHUI M10 S-2

M0 S2 Configured

