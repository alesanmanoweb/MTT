%
O3002 (ALESSIO SANGALLI BISHOP SEPTEMBER 11 2024)
(T0101 1/64R OD 80DEG TURNING AND FACING TOOL)
(T0202 1/64R 35DEG PROFILING TOOL)
(T0707 STOCK PULLER)
(T1020 1/8 PARTING TOOL)
(2.75IN STOCK STICKOUT)
N10 G00 G18 G80 G40 G99 (G18 select XZ plane)
N20 G28 U0 (return to X home)
N30 G28 W0 (return to Z home)

(ROUGH AND FINISH THE OUTER CONTOUR)
N40 T0101 (1/64 OD TURNING AND FACING TOOL)
N50 G97 S300 M03 (constant surface speed off rotate spindle at straight 300RPM for oil slinger)
N60 G00 Z.250
N70 X1.325 / M08 (STOCK + 0.2)
N80 G50 S4500 (limit spindle to a max RPM)
N90 G96 S500 (constant surface speed 500feet/min)
/ N100 G71 P120 Q220 U0.020 W0.003 D0.0750 F0.010 (U W D and F are a given)
N110 G42
N120 G00 X-0.0313 (2x tool radius)
N130 G01 Z0. F0.005 (on the face)
N140 X0.4000 R-0.005 (first face)
N150 Z-0.3629
N160 G02 X0.4146 Z-0.3830 R0.0312
N170 G01 X0.7477 Z-0.5815
N180 G03 X0.7500 Z-5847 R0.005
N190 G01 Z-1.0829 R0.040
N200 X1.0000 R-0.005
N210 Z-1.9579 (.25 longer than the part)
N220 G40 X1.3250
N230 G00 Z.250
/ N240 G70 P110 Q220
N230 M09
N240 G00 Z.250 M05
N250 G28 U0
N260 G28 W0
N270 M01

(CUT LARGE RADIUS)
N300 G00 G18 G80 G40 G99
N310 G28 U0
N320 G28 W0
N330 T0202 (35DEG profiling tool)
N340 G97 S300 M3
N350 Z.250
N360 X1.325 / M08 (stock + 0.2)
N370 G50 S4500
N380 G96 S500
N390 G00 Z-0.8329 (Start of contour + .25)
N400 G42
N410 G01 X1.0000 F0.005
N420 Z-1.2074
N430 G03 X0.9998 Z-1.2083 R0.005
N440 G02 X0.9645 Z-1.3954 R1.0000
N450 G02 X0.9998 Z-1.5824 R1.0000
N460 G03 X1.0000 Z-1.5833 R0.005
N470 G01 Z-1.9579 (.25 longer than the part)
N471 X1.325 M09
N472 G00 Z.250 M05
N473 G28 U0
N474 G28 W0
N475 M01

(PART OFF WITH .015 CHAMFER)
N500 G00 G18 G80 G40 G99
N510 G28 U0 (WHY DO WE HOME AGAIN?)
N520 G28 W0
N530 T1020 (1/8 PARTING TOOL)
N540 G97 S300 M03
N550 G00 Z-1.7079 (CALCULATED LENGTH OF PART)
N560 X1.325 / M08 (1.125+.2)
N570 G50 S3500 (LIMIT MAX SPEED)
N580 G96 S300 (300SFM)
N590 M36 (RAISE PARTS CATCHER)
N600 G01 X0.95 F.003 (1.0 -.03 -.02) (FIRST INDENTATION)
N610 G04 P0.143 (4x300/0.95=1263 RPM) (3x60/1263) (DWELL 3 REVS)
N620 U0.2500 F.020 (ENDS UP 0.100 ABOVE PART)
N630 W0.1209 (BIG FORMULA SEE SLIDES)
N640 U-0.2418 W-0.1209 F.003 (CUT CHAMFER)
N650 X0 (PART OFF)
N660 X1.325 F.020 M09 (GO .2 ABOVE STOCK)
N670 M37 (LOWER PARTS CATCHER)
N681 G00 Z0.2500
N690 G28 U0 M05
N700 G28 W0
N710 M01

N720 G00 G18 G80 G40 G99 M05 (STOCK PULL)
N730 G28 U0
N740 G28 W0
N750 T0707(STOCK PULLER)
N760 G00 Z-2.3329 (Z=PART LENGTH + PARTING TOOL + .500)
N770 X4.125 (STOCK DIA. + 3.0)
N780 G01 G98 X0 F50.
N790 M11 (UNCLAMP CHUCK)
N800 G04 P.5
N810 W1.8629 (W= PART LENGTH + PART OFF TOOL + AMOUNT TO BE FACED OFF[.030])
N820 M10 (CLAMP CHUCK)
N830 G04 P.5
N840 G99 (RETURN TO IPR)
N850 G00 G28 U0
N860 G28 W0
N870 M30
%
