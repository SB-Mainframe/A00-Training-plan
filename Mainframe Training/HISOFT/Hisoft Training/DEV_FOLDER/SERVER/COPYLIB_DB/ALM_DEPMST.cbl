000010************************************************
000020* (ALM_DEPMST)
000030************************************************
000040 01  ALM_DEPMST-CTLNUM PIC  X(006).
000050 01  ALM_DEPMST-CLTNAM PIC  X(040).
000060 01  ALM_DEPMST-BALCAP PIC S9(013) COMP-3.
000070 01  ALM_DEPMST-COLAMT PIC S9(013) COMP-3.
000080 01  ALM_DEPMST-ISUDAY PIC  X(008).
000090 01  ALM_DEPMST-DUEDAY PIC  X(008).
000100 01  ALM_DEPMST-UPDCYC PIC  X(002).
000110 01  ALM_DEPMST-AVEBAL PIC S9(013) COMP-3.
000120 01  ALM_DEPMST-COLRAT PIC S9(002)V9(5) COMP-3.
000130 01  ALM_DEPMST-CHARGE PIC S9(002)V9(5) COMP-3.
000140 01  ALM_DEPMST-REFNUM PIC  X(020).
000150 01  ALM_DEPMST-FIXFLT PIC  X(001).
000160 01  ALM_DEPMST-TRMTYP PIC  X(001).