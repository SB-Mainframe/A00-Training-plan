//ST015T01 JOB  (TESTING),'ST015',CLASS=A,
// MSGCLASS=A,MSGLEVEL=(1,1),NOTIFY=ST015
//*******************************************************************//
//*                                                                 *//
//* JCL OF RUNNING PLI BATCH PROGRAM                                *//
//*                                                                 *//
//*                                         2005.12.28              *//
//*                                             L.Y.P               *//
//*******************************************************************//
//*
//JOBLIB   DD DSN=ST015.TEST.LOAD,DISP=SHR
//*------------------------------------------------
//*    RUN PLI TEST0001
//*------------------------------------------------
//SF001   EXEC PGM=PL1021S
//****SF001   EXEC PGM=PL1021S
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//ASSGNOUT DD DSN=ST015.TEST.ASSGNOUT,DISP=OLD
//***TRANS    DD DSN=ST015.TEST.TRANS,DISP=SHR
//
