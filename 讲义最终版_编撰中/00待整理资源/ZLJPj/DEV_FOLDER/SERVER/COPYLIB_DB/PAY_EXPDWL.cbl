000010************************************************
000020* (PAY_EXPDWL)
000030************************************************
000040 01  PAY_EXPDWL-DATTYP PIC  X(001).
000050 01  PAY_EXPDWL-CNTNUM PIC  X(009).
000060 01  PAY_EXPDWL-RELEAS PIC  X(001).
000070 01  PAY_EXPDWL-CNTDAY PIC  X(008).
000080 01  PAY_EXPDWL-OFCCOD PIC  X(004).
000090 01  PAY_EXPDWL-PLNDAY PIC  X(008).
000100 01  PAY_EXPDWL-TRNDAY PIC  X(008).
000110 01  PAY_EXPDWL-RCVBGN PIC  X(008).
000120 01  PAY_EXPDWL-RCVCYC PIC  X(002).
000130 01  PAY_EXPDWL-RCVDAY PIC  X(002).
000140 01  PAY_EXPDWL-RCVCNT PIC S9(003) COMP-3.
000150 01  PAY_EXPDWL-CLTCOD PIC  X(008).
000160 01  PAY_EXPDWL-TRNAMT PIC S9(013) COMP-3.
000170 01  PAY_EXPDWL-DEMCOD PIC  X(003).
000180 01  PAY_EXPDWL-REMARK PIC  X(046).
000190 01  PAY_EXPDWL-CLTNAM PIC  X(060).
000200 01  PAY_EXPDWL-ERRFLG PIC  X(001).
000210 01  PAY_EXPDWL-REGDAY PIC  X(008).
000220 01  PAY_EXPDWL-REGTIM PIC  X(006).
000230 01  PAY_EXPDWL-REGPSN PIC  X(004).
000240 01  PAY_EXPDWL-MODDAY PIC  X(008).
000250 01  PAY_EXPDWL-MODTIM PIC  X(006).
000260 01  PAY_EXPDWL-MODPSN PIC  X(004).
