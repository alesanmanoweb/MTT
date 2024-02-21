%
O0241 (MILL THE SIDES OF THE PART TO 4.0")
N10 G01 G41 X0 (ZERO Ø CUTTER POSITIONING)
N20 Y1.5000 (2X CUTTER RADIUS PAST THE PART)
N30 G40 X-0.7500 (NEED TO COPENSATE FOR CUTTER RADIUS ONCE CUTTER COMP IS OFF)
N40 M99

O0242 (MILL THE SLOT)
N10 G01 Y0.675 F0.005 (MILL .55 PAST THE BACK/ BOTTOM OF THE PART WITHOUT CUTTER COMP)
N20 G01 G41 X-0.4375 (POSITION TO ½ OF .750" SLOT WITH CUTTER COMP)
N30 Y-.875 (MILL PART AND CLEAR THE PART IN Y BY 3X CUTTER RADIUS)
N40 X0.4375 (POSITION TO ½ OF .750" SLOT WITH CUTTER COMP)
N50 Y0.675 (MILL .055 PAST PART IN Y) 
N60 G40 X0 (POSITION TO CENTER, CUTTER COMP OFF)
N70 M99

O0024(FINGER TREADLE, ALESSIO SANGALLI 2024-02-14)
(T15 90 DEG SPOT DRILL)
(T16 .1200 DIA. DRILL)
(T17 .1250 DIA. REAMER)
(T18 .2100 DIA. + .3310 CB STEP DRILL)
(T19 .5000 DIA. 3 FL. END MILL)
N10 G00 G90 G80 G95 G17 G40 G49 G53 Z0 D0 H0 (SPOT DRILL, G95 SETS FEED TO INCH PER REVOLUTION [IPR])
N20 T15 M06 (90 DEG SPOT DRILL)
N30 G154 P1 X.3125 Y0.7500 A0.0 C0.0 S4558 M03 (S=4*400/(0.3310+0.0200))
N40 G43 Z.150 H15 M08
N50 G82 G99 G91 Z-0.1755 R+.150 F.002 P0.039 (NO XY BECAUSE OF G91; Z=(0.3310+0.0200)*0.5; F=0.001*2; P=3*60/4558)
N60 X0.8750
N70 Y-1.5000
N80 X-0.8750
N90 G80 M09
N100 G00 G49 G53 Z0 D0 M05
N110 M01
N120 G00 G90 G80 G95 G17 G40 G49 G53 Z0 D0 H0 (STEP DRILL CBORE HOLES)
N130 T18 M06 (T18 STEP DRILL .3310 COUNTERBORE)
N140 G154 P1 X.3125 Y-0.7500 A0.0 C0.0 S4834 M03 (S=4*400/(0.3310))  
N150 G43 Z.150 H18 M08
N160 G83 G99 G91 Z-.8713 R+.150 F.002 P0.037 Q.3310 (TIP TO CB = 0.6713, Z=0.2000+0.6713; 0.001 CHIP LOAD F=0.001*2; P=3*60/4834)
N170 G91 X0.8750
N180 Y1.5000
N190 X-0.8750
N200 G80 M09
N210 G00 G49 G53 Z0 M05
N220 M01
N230 G00 G90 G80 G95 G17 G40 G49 G53 Z0 H0 D0 (MILL SIDES TO SIZE)
N240 T19 M06 (T19 .50 DIA. 3 FL EM)
N250 G154 P1 X-0.7500 Y-1.7500 A0.0 C0.0 S4000 M03 (S=4*500/0.5)
(X= 3X CUTTER RADIUS AWAY FROM PART, Y= 3X CUTTER RADIUS AWAY FROM PART)
N260 G43 Z.250 H19 M08
N270 G01 Z-.250 F.0038 (F=3*0.0025/2 BECAUSE Z)
N280 D39 F.0075 (D=19+20 F=3*0.0025)
N290 M98 P241
N291 G00 Z.250
N300 X-0.7500 Y-1.7500
N310 G01 Z-.520 F.0038
N320 D39 F.0075
N330 M98 P241
N340 G00 Z.250
N341 X-0.7500 Y-1.7500
N342 G01 Z-.520 F.0038
N343 D19 F.0075 (D=FINISH PASS)
N344 M98 P241
N345 G00 Z.250
N346 C180. (ROTATE THE C AXIS 180°)
N350 X-0.7500 Y-1.7500
N360 G01 Z-.250 F.0038
N370 D39 F.0075
N380 M98 P241
N390 G00 Z.250
N400 X-0.7500 Y-1.7500
N410 G01 Z-.520 F.0038
N420 D39 F.0075
N430 M98 P241
N440 G00 Z.250
N450 X-0.7500 Y-1.7500
N460 G01 Z-.520 F.0038
N470 D19 F.0075
N480 M98 P241
N490 G00 Z.250
N550 G00 G49 G53 Z0 M05
N560 M01
N570 G00 G90 G80 G95 G17 G40 G49 G53 Z.0 D0 H0 (SPOT DRILL THE HOLE ON THE TOP)
N580 T15 M06 (T15 90 DEG SPOT DRILL)
N590 G154 P2 X-.1875 Y-.1250 A0.0 C0.0 S7500 M03 (S=4*400/.1450 CAP 7500)
N600 G43 Z2.0900 H15 M08 (Z=1.8400 FROM SOLIDWORKS + .2500)
N610 G82 G98 X-.1875 Y-.1250 Z-.0725 R+.150 F.002 P0.024 (Z=0.1450*0.5 F=2*0.001 P=60*3/7500) 
(???KEEP THE DRILL RAISED SLIGHTLY TO COMPENSATE FOR THE DRILL TIP CHISEL POINT)
N611 G154 P3 X0.1875 Y-.1250 A0 C0 
(ROTATE PART TO OPPOSITE SIDE FOR SPOT DRILL)
N620 G80 M09
N630 G00 G49 G53 Z0 M05
N640 M01
N650 G00 G90 G80 G95 G17 G40 G49 G53 Z.0 D0 H0 (DRILL THE HOLE ON THE TOP)
N660 T16 M06 (T16 .1200 DIA. DRILL)
N670 G154 P3 X-.1875 Y-.1250 A0.0 C0.0 S7500 M03 (S=4*500/.1200 CAP 7500)
N680 G43 Z2.3771 H16 M08
N690 G83 G98 X-.1875 Y-.1250 Z-.6174 R+.150 F.003 Q.1495 (Z= REAM DEPTH + .100 + DRILL TIP)
N691 G154 P2 X1.875 Y-.1250 A0. C0.
N700 G80 M09
N710 G00 G49 G53 Z0 M05
N720 M01
N730 G00 G90 G80 G95 G17 G40 G49 G53 Z.0 D0 H0 (REAM THE HOLE ON TOP)
N740 T4 M06 (T4 .1563 REAMER)
N750 G154 P2 X-.2000 Y-.2000 A0.0 C0.0 S3839 M03
N760 G43 Z2.1271 H4 M08
N770 G85 G98 X-.2000 Y-.2000 Z-.4725 R+0.15 F0.009 (Z= THRU DEPTH + .100 + CHAMFER[.060], 6 FLUTE REAMER)
N771 G154 P3 X.2000 Y-.2000 A0. C0.
N780 G80 M09
N790 G00 G49 G53 Z0 M05
N800 M01
N1050 G00 G90 G80 G95 G17 G40 G49 G53 Z.0 D0 H0 (ROUGH MILL THE END SLOT)
N1060 T6 M06 (.750 DIA 2 FL EM)
N1070 G154 P4 X0 Y-.875 A0 C0 S2667 M03 (POSITION TO CENTER OF .750 SLOT, 3X CUTTER RADIUS AWAY)
N1080 G43 Z.150 H6 M08
N1090 G01 Z-.3750 F0.0025 D26 (STEP DOWN ½ SLOT DEPTH TO REDUCE TOOL PRESSURE)
N1100 M98 P422
N1110 G00 Z.250
N1120 Y-.875
N1130 G01 Z-.75 F0.0025 D26
N1140 M98 P422
N1150 G00 Z.250 M09
N1160 G00 G49 G53 Z0 M05
N1170 M01 (MEASURE SLOT)
N1180 G00 G90 G80 G95 G17 G40 G49 G53 Z.0 D0 H0(FINISH MILL THE END SLOT)
N1190 T6 M06 (.750 DIA 2 FL EM)
N1200 G154 P4 X0 Y-.8750 A0 C0 S2667 M03
N1210 G43 Z.150 H6 M08
N1220 G01 Z-.75 F0.0025 D6
N1230 M98 P422
N1240 G00 Z.250 M09
N1250 G00 G49 G53 Z0 M05
N1260 G53 A0 C0 Y0 (RETURN TO A0 C0 AND BRING PART TO OPERATOR FOR REMOVAL) 
N1270 M30
%
