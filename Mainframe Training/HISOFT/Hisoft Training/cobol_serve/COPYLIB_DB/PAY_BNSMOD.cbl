000010************************************************
000020* (PAY_BNSMOD)
000030************************************************
000040 01  PAY_BNSMOD-JOBTYP PIC  X(001).
000050 01  PAY_BNSMOD-JOBTIM PIC  X(006).
000060 01  PAY_BNSMOD-CNTNUM PIC  X(009).
000070 01  PAY_BNSMOD-RELEAS PIC  X(001).
000080 01  PAY_BNSMOD-PLNDAY PIC  X(008).
000090 01  PAY_BNSMOD-CNTDAY PIC  X(008).
000100 01  PAY_BNSMOD-DIVCOD PIC  X(004).
000110 01  PAY_BNSMOD-CLTCOD PIC  X(008).
000120 01  PAY_BNSMOD-CLTNAM PIC  X(060).
000130 01  PAY_BNSMOD-PAYCLT PIC  X(008).
000140 01  PAY_BNSMOD-PAYNAM PIC  X(060).
000150 01  PAY_BNSMOD-RCVBGN PIC  X(008).
000160 01  PAY_BNSMOD-RCVCYC PIC  X(002).
000170 01  PAY_BNSMOD-RCVCNT PIC S9(003) COMP-3.
000180 01  PAY_BNSMOD-RCVDAY PIC  X(002).
000190 01  PAY_BNSMOD-PAYBGN PIC  X(008).
000200 01  PAY_BNSMOD-PAYCYC PIC  X(002).
000210 01  PAY_BNSMOD-PAYCNT PIC S9(003) COMP-3.
000220 01  PAY_BNSMOD-CLTCNT PIC S9(002) COMP-3.
000230 01  PAY_BNSMOD-CHCKYN PIC  X(001).
000240 01  PAY_BNSMOD-REMARK PIC  X(046).
000250 01  PAY_BNSMOD-TRNAMT PIC S9(013) COMP-3.
000260 01  PAY_BNSMOD-TRNTAX PIC S9(013) COMP-3.
000270 01  PAY_BNSMOD-CHGAMT PIC S9(013) COMP-3.
000280 01  PAY_BNSMOD-CHGTAX PIC S9(013) COMP-3.
000290 01  PAY_BNSMOD-DEMFLG PIC  X(001).
000300 01  PAY_BNSMOD-CNTDAY_O PIC  X(008).
000310 01  PAY_BNSMOD-DIVCOD_O PIC  X(004).
000320 01  PAY_BNSMOD-CLTCOD_O PIC  X(008).
000330 01  PAY_BNSMOD-CLTNAM_O PIC  X(060).
000340 01  PAY_BNSMOD-PAYCLT_O PIC  X(008).
000350 01  PAY_BNSMOD-PAYNAM_O PIC  X(060).
000360 01  PAY_BNSMOD-RCVBGN_O PIC  X(008).
000370 01  PAY_BNSMOD-RCVCYC_O PIC  X(002).
000380 01  PAY_BNSMOD-RCVCNT_O PIC S9(003) COMP-3.
000390 01  PAY_BNSMOD-RCVDAY_O PIC  X(002).
000400 01  PAY_BNSMOD-PAYBGN_O PIC  X(008).
000410 01  PAY_BNSMOD-PAYCYC_O PIC  X(002).
000420 01  PAY_BNSMOD-PAYCNT_O PIC S9(003) COMP-3.
000430 01  PAY_BNSMOD-CLTCNT_O PIC S9(002) COMP-3.
000440 01  PAY_BNSMOD-CHCKYN_O PIC  X(001).
000450 01  PAY_BNSMOD-REMARK_O PIC  X(046).
000460 01  PAY_BNSMOD-TRNAMT_O PIC S9(013) COMP-3.
000470 01  PAY_BNSMOD-TRNTAX_O PIC S9(013) COMP-3.
000480 01  PAY_BNSMOD-CHGAMT_O PIC S9(013) COMP-3.
000490 01  PAY_BNSMOD-CHGTAX_O PIC S9(013) COMP-3.
000500 01  PAY_BNSMOD-DEMFLG_O PIC  X(001).
000510 01  PAY_BNSMOD-CNTDAY_M PIC  X(001).
000520 01  PAY_BNSMOD-DIVCOD_M PIC  X(001).
000530 01  PAY_BNSMOD-CLTCOD_M PIC  X(001).
000540 01  PAY_BNSMOD-CLTNAM_M PIC  X(001).
000550 01  PAY_BNSMOD-PAYCLT_M PIC  X(001).
000560 01  PAY_BNSMOD-PAYNAM_M PIC  X(001).
000570 01  PAY_BNSMOD-RCVBGN_M PIC  X(001).
000580 01  PAY_BNSMOD-RCVCYC_M PIC  X(001).
000590 01  PAY_BNSMOD-RCVCNT_M PIC  X(001).
000600 01  PAY_BNSMOD-RCVDAY_M PIC  X(001).
000610 01  PAY_BNSMOD-PAYBGN_M PIC  X(001).
000620 01  PAY_BNSMOD-PAYCYC_M PIC  X(001).
000630 01  PAY_BNSMOD-PAYCNT_M PIC  X(001).
000640 01  PAY_BNSMOD-CLTCNT_M PIC  X(001).
000650 01  PAY_BNSMOD-CHCKYN_M PIC  X(001).
000660 01  PAY_BNSMOD-REMARK_M PIC  X(001).
000670 01  PAY_BNSMOD-TRNAMT_M PIC  X(001).
000680 01  PAY_BNSMOD-TRNTAX_M PIC  X(001).
000690 01  PAY_BNSMOD-CHGAMT_M PIC  X(001).
000700 01  PAY_BNSMOD-CHGTAX_M PIC  X(001).
000710 01  PAY_BNSMOD-DEMFLG_M PIC  X(001).
000720 01  PAY_BNSMOD-REGDAY PIC  X(008).
000730 01  PAY_BNSMOD-REGTIM PIC  X(006).
000740 01  PAY_BNSMOD-REGPSN PIC  X(004).
000750 01  PAY_BNSMOD-MODDAY PIC  X(008).
000760 01  PAY_BNSMOD-MODTIM PIC  X(006).
000770 01  PAY_BNSMOD-MODPSN PIC  X(004).