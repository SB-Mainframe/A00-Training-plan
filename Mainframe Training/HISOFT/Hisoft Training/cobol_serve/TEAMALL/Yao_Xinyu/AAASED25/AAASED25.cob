000010******************************************************************
000020*         ＜海輝軟件(大連)＞                                     *
000030*      1. プログラム名  : 前受金受払残高ファイル作成             *
000040*      2. プログラムID  : AAASED25                               *
000050*      3. 処理概要      : 前受情報ＤＢをメインに、マスタと表     *
000060*                         結合して読込み、前受金受払残高中間     *
000070*                         ファイルを作成する。                   *
000080*                                                                *
000090*      4. 作成者        :  姚欣雨                                  *
000100*      5. 作成日        : 2005.03.26                             *
000110******************************************************************
000120*                                                                 
000130******************************************************************
000140*    ＩＤＥＮＴＩＦＩＣＡＴＩＯＮ  ＤＩＶＩＳＩＯＮ              *
000150******************************************************************
000160 IDENTIFICATION                       DIVISION.                   
000170*                                                                 
000180 PROGRAM-ID.                          AAASED25.                   
000190******************************************************************
000200*    ＥＮＶＩＲＯＮＭＥＮＴ        ＤＩＶＩＳＩＯＮ              *
000210******************************************************************
000220 ENVIRONMENT                          DIVISION.                   
000230******************************************************************
000240*    ＩＮＰＵＴ−ＯＵＴＰＵＴ      ＳＥＣＴＩＯＮ                *
000250******************************************************************
000260 INPUT-OUTPUT                         SECTION.                    
000270*                                                                 
000280 FILE-CONTROL.                                                    
000290     SELECT    出力ファイル           ASSIGN    TO     U11        
000300     FILE      STATUS     IS          Ｗ−状態                    
000310     ORGANIZATION         IS          LINE      SEQUENTIAL.       
000320*                                                                 
000330******************************************************************
000340*    ＤＡＴＡ                      ＤＩＶＩＳＩＯＮ              *
000350******************************************************************
000360 DATA                                 DIVISION.                   
000370******************************************************************
000380*    ＦＩＬＥ                      ＳＥＣＴＩＯＮ                *
000390******************************************************************
000400 FILE                                 SECTION.                    
000410*----------------------------------------------------------------*
000420*    出力ファイル                                                *
000430*----------------------------------------------------------------*
000440 FD  出力ファイル                                                 
000450     LABEL     RECORD     IS          STANDARD                    
000460     BLOCK     CONTAINS   0           RECORDS.                    
000470*                                                                 
000480 01  出力−レコード.                                              
000490     COPY  CPSCE50  REPLACING  ==()==  BY  ==出力−==.            
000500*                                                                 
000510******************************************************************
000520*  ＷＯＲＫＩＮＧ−ＳＴＯＲＡＧＥ  ＳＥＣＴＩＯＮ                *
000530******************************************************************
000540  WORKING-STORAGE                     SECTION.                    
000550*----------------------------------------------------------------*
000560*    ホスト変数定義エリア                                        *
000570*----------------------------------------------------------------*
000580     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\AAASED25\AA
      -    "ASED25.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(81) VALUE "select バッチ用業務年月   into :b
      -    "1  from D70GYM_TBL where 業務管理ＩＤ='GYMKNRRC'".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(91) VALUE "select 名称   into :b1  from D19M
      -    "SY_TBL where (コードＮＯ='038' and SUBSTR(コード,1,1)=:b2)".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(91) VALUE "select 名称   into :b1  from D19M
      -    "SY_TBL where (コードＮＯ='005' and SUBSTR(コード,1,2)=:b2)".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(160) VALUE "select 状態フラグ  ,債権契約件名
      -     "  ,担保区分   into :b1,:b2,:b3  from M01SAJ_TBL where (((レ
      -     "コード区分='1' and 契約番号=:b4) and 再リース回数=:b5) and 
      -    "契約種類=:".

           02  FILLER PIC X(3) VALUE "b6)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +157234284.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +28.
           02  SQL-ITERS    PIC S9(9) COMP-5.
           02  SQL-OFFSET   PIC S9(9) COMP-5.
           02  SQL-SELERR   PIC S9(4) COMP-5.
           02  SQL-SQLETY   PIC S9(4) COMP-5.
           02  SQL-OCCURS   PIC S9(9) COMP-5.
           02  SQL-CUD      PIC S9(9) COMP-5.
           02  SQL-SQLEST   PIC S9(9) COMP-5.
           02  SQL-STMT     PIC S9(9) COMP-5.
           02  SQL-SQLADTP  PIC S9(9) COMP-5 VALUE 0.
           02  SQL-SQLTDSP  PIC S9(9) COMP-5 VALUE 0.
           02  SQL-SQPHSV   PIC S9(9) COMP-5.
           02  SQL-SQPHSL   PIC S9(9) COMP-5.
           02  SQL-SQPHSS   PIC S9(9) COMP-5.
           02  SQL-SQPIND   PIC S9(9) COMP-5.
           02  SQL-SQPINS   PIC S9(9) COMP-5.
           02  SQL-SQPARM   PIC S9(9) COMP-5.
           02  SQL-SQPARC   PIC S9(9) COMP-5.
           02  SQL-SQPADTO  PIC S9(9) COMP-5.
           02  SQL-SQPTDSO  PIC S9(9) COMP-5.
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 28 TIMES.


       01  SQ0002 GLOBAL.
           02  FILLER PIC X(160) VALUE "select M40MAB_TBL.レコード区分  
      -    ",M40MAB_TBL.経理用主契約区分  ,M40MAB_TBL.顧客区分  ,NVL(D01
      -    "TRS_TBL.名寄せコード,' ')  ,M40MAB_TBL.請求先取引先コード  ,
      -     "M40MAB_T".

           02  FILLER PIC X(159) VALUE  "BL.請求先コード  ,M40MAB_TBL.契
      -    "約番号  ,M40MAB_TBL.契約種類  ,M40MAB_TBL.担当部課コード  ,M
      -    "40MAB_TBL.再リース回数  ,M40MAB_TBL.充当開始年月  ,M40MAB_TB
      -    "L.充当月".

           02  FILLER PIC X(160) VALUE "数  ,M40MAB_TBL.前払回収方法  ,M
      -    "40MAB_TBL.入金日  ,M40MAB_TBL.入金区分  ,D01TRS_TBL.取引先名
      -    "称  ,D02SQS_TBL.請求先名称  ,M40MAB_TBL.前月末残高  ,M40MAB_
      -    "TBL.当月".

           02  FILLER PIC X(160) VALUE "回収額  ,M40MAB_TBL.当月消化額  
      -    ",M40MAB_TBL.当月末残高  ,M40MAB_TBL.協調区分  ,M40MAB_TBL.前
      -    "月末残高他社  ,M40MAB_TBL.当月回収額他社  ,M40MAB_TBL.当月消
      -    "化額他社".

           02  FILLER PIC X(159) VALUE "  ,M40MAB_TBL.当月他社解約分料金
      -    "  ,M40MAB_TBL.当月他社解約分消費税  ,M40MAB_TBL.当月末残高他
      -    "社   from M40MAB_TBL ,D01TRS_TBL ,D02SQS_TBL where (((M40MAB
      -     "_TBL.前".

           02  FILLER PIC X(160) VALUE "受金受払残高表対象フラグ='1' and
      -    " M40MAB_TBL.請求先取引先コード=D01TRS_TBL.取引先コード(+)) a
      -    "nd M40MAB_TBL.請求先取引先コード=D02SQS_TBL.取引先コード(+))
      -    " and M40".

           02  FILLER PIC X(112) VALUE "MAB_TBL.請求先コード=D02SQS_TBL.
      -    "請求先コード(+)) order by M40MAB_TBL.レコード区分,M40MAB_TBL
      -    ".契約番号           ".

       01  SQL-RUNTIME-VARS.
           02  SQL-IAPXIT-SUCCESS  PIC S9(9) COMP-5 VALUE    +0.
           02  SQL-IAPXIT-FAILURE  PIC S9(9) COMP-5 VALUE +1403.
           02  SQL-IAPXIT-FATALERR PIC S9(9) COMP-5 VALUE  +535.

       01  SQLCUD GLOBAL.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +4192.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +27.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +27.
           02     FILLER PIC S9(4) COMP-5 VALUE +230.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +36.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +27.
           02     FILLER PIC S9(4) COMP-5 VALUE +234.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +67.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +81.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +263.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +86.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1070.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +341.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +101.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +390.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +28.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +228.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +91.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +477.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +251.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +91.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +502.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +274.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +163.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +534.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1120.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +313.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +717.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000590*                                                                 
000600 01  ＷＳ−名称１                     PIC  X(060).                
000610 01  ＷＳ−名称２                     PIC  X(060).                
000620*                                                                 
000630*--< ＯＲＡＣＬＥ共通変数 >                                       
000640     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000650*                                                                 
000660*--< ＯＲＡＣＬＥ  ＳＱＬ実行情報 >                               
000010*--＜ＳＱＬ共通変数＞
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000670     
      *    EXEC  SQL  INCLUDE  SQLCA.COB             END-EXEC.
       01  SQLCA GLOBAL.
           05  SQLCAID               PIC X(8).
           05  SQLCABC               PIC S9(9) COMP-5.
           05  SQLCODE               PIC S9(9) COMP-5.
           05  SQLERRM.
               49 SQLERRML           PIC S9(4) COMP-5.
               49 SQLERRMC           PIC X(70).
           05  SQLERRP               PIC X(8).
           05  SQLERRD OCCURS 6 TIMES
                                     PIC S9(9) COMP-5.
           05  SQLWARN.
               10 SQLWARN0           PIC X(1).
               10 SQLWARN1           PIC X(1).
               10 SQLWARN2           PIC X(1).
               10 SQLWARN3           PIC X(1).
               10 SQLWARN4           PIC X(1).
               10 SQLWARN5           PIC X(1).
               10 SQLWARN6           PIC X(1).
               10 SQLWARN7           PIC X(1).
           05  SQLEXT                PIC X(8).
000680*                                                                 
000690*--< 前受情報ＤＢ >                                               
000700     
      *    EXEC  SQL  INCLUDE  M40MAB.CBL            END-EXEC.
000710*                                                                 
000720*--< 業務管理テーブル >                                           
000010************************************************
000020* 前受情報(M40MAB)
000030************************************************
000040 01  Ｍ４０−レコード区分           PIC  X(1).
000050 01  Ｍ４０−契約番号               PIC  X(15).
000060 01  Ｍ４０−再リース回数           PIC S9(2) COMP-3.
000070 01  Ｍ４０−契約種類               PIC  X(3).
000080 01  Ｍ４０−仮受金入金日           PIC  X(8).
000090 01  Ｍ４０−仮受金ＳＥＱ−ＮＯ     PIC S9(6) COMP-3.
000100 01  Ｍ４０−前払回収方法           PIC  X(1).
000110 01  Ｍ４０−前払回収サイト         PIC S9(2) COMP-3.
000120 01  Ｍ４０−前払回収日             PIC  X(2).
000130 01  Ｍ４０−充当開始回             PIC S9(3) COMP-3.
000140 01  Ｍ４０−充当月数               PIC S9(3) COMP-3.
000150 01  Ｍ４０−充当開始年月           PIC  X(6).
000160 01  Ｍ４０−振込手数料             PIC S9(13) COMP-3.
000170 01  Ｍ４０−前払金額               PIC S9(13) COMP-3.
000180 01  Ｍ４０−前払金額消費税         PIC S9(13) COMP-3.
000190 01  Ｍ４０−他社前払金額           PIC S9(13) COMP-3.
000200 01  Ｍ４０−他社前払金額消費税     PIC S9(13) COMP-3.
000210 01  Ｍ４０−解約分料金累計         PIC S9(13) COMP-3.
000220 01  Ｍ４０−解約分消費税累計       PIC S9(13) COMP-3.
000230 01  Ｍ４０−他社解約分料金累計     PIC S9(13) COMP-3.
000240 01  Ｍ４０−他社解約分消費税累計   PIC S9(13) COMP-3.
000250 01  Ｍ４０−未回収額               PIC S9(13) COMP-3.
000260 01  Ｍ４０−他社未回収額           PIC S9(13) COMP-3.
000270 01  Ｍ４０−状態コード             PIC  N(2).
000280 01  Ｍ４０−銀行コード             PIC  X(4).
000290 01  Ｍ４０−支店コード             PIC  X(4).
000300 01  Ｍ４０−振込依頼人名           PIC  X(48).
000310 01  Ｍ４０−前受金受払残高表対象フラグ PIC  X(1).
000320 01  Ｍ４０−仮受金内訳表対象フラグ PIC  X(1).
000330 01  Ｍ４０−会計部門コード         PIC  X(2).
000340 01  Ｍ４０−仕訳フラグ−振替前受リース料 PIC  X(1).
000350 01  Ｍ４０−仕訳フラグ−振替前受   PIC  X(1).
000360 01  Ｍ４０−仕訳フラグ−振替仮受   PIC  X(1).
000370 01  Ｍ４０−契約開始日             PIC  X(8).
000380 01  Ｍ４０−請求先取引先コード     PIC  X(9).
000390 01  Ｍ４０−顧客区分               PIC  X(2).
000400 01  Ｍ４０−ＴＡＳＳコード         PIC  X(7).
000410 01  Ｍ４０−貸倒年月日             PIC  X(8).
000420 01  Ｍ４０−特定取引先区分         PIC  X(1).
000430 01  Ｍ４０−最大督促回数           PIC  X(1).
000440 01  Ｍ４０−請求先コード           PIC  X(5).
000450 01  Ｍ４０−契約先取引先コード     PIC  X(9).
000460 01  Ｍ４０−契約先コード           PIC  X(5).
000470 01  Ｍ４０−担当部課コード         PIC  X(4).
000480 01  Ｍ４０−担当者コード           PIC  X(8).
000490 01  Ｍ４０−協調区分               PIC  X(1).
000500 01  Ｍ４０−管理債権レベル         PIC  X(1).
000510 01  Ｍ４０−主契約区分             PIC  X(1).
000520 01  Ｍ４０−経理用主契約区分       PIC  X(1).
000530 01  Ｍ４０−取消区分               PIC  X(1).
000540 01  Ｍ４０−前月末残高             PIC S9(13) COMP-3.
000550 01  Ｍ４０−前月末残高他社         PIC S9(13) COMP-3.
000560 01  Ｍ４０−前月迄解約分料金累計   PIC S9(13) COMP-3.
000570 01  Ｍ４０−前月迄解約分消費税累計 PIC S9(13) COMP-3.
000580 01  Ｍ４０−前月迄他社解約分料金累計 PIC S9(13) COMP-3.
000590 01  Ｍ４０−前月迄他社解約分消費税累計 PIC S9(13) COMP-3.
000600 01  Ｍ４０−前月迄消化額累計       PIC S9(13) COMP-3.
000610 01  Ｍ４０−前月迄消化額累計他社   PIC S9(13) COMP-3.
000620 01  Ｍ４０−前月迄振替額累計       PIC S9(13) COMP-3.
000630 01  Ｍ４０−前月迄振替額累計他社   PIC S9(13) COMP-3.
000640 01  Ｍ４０−当月解約分料金         PIC S9(13) COMP-3.
000650 01  Ｍ４０−当月解約分消費税       PIC S9(13) COMP-3.
000660 01  Ｍ４０−当月他社解約分料金     PIC S9(13) COMP-3.
000670 01  Ｍ４０−当月他社解約分消費税   PIC S9(13) COMP-3.
000680 01  Ｍ４０−回収額                 PIC S9(13) COMP-3.
000690 01  Ｍ４０−他社回収額             PIC S9(13) COMP-3.
000700 01  Ｍ４０−他社回収額消費税       PIC S9(13) COMP-3.
000710 01  Ｍ４０−入金日                 PIC  X(8).
000720 01  Ｍ４０−費目                   PIC  X(1).
000730 01  Ｍ４０−入金区分               PIC  X(2).
000740 01  Ｍ４０−当月回収額             PIC S9(13) COMP-3.
000750 01  Ｍ４０−当月回収額他社         PIC S9(13) COMP-3.
000760 01  Ｍ４０−当月消化額             PIC S9(13) COMP-3.
000770 01  Ｍ４０−当月消化額他社         PIC S9(13) COMP-3.
000780 01  Ｍ４０−消化額累計             PIC S9(13) COMP-3.
000790 01  Ｍ４０−消化額累計他社         PIC S9(13) COMP-3.
000800 01  Ｍ４０−消化日                 PIC  X(8).
000810 01  Ｍ４０−当月振替額             PIC S9(13) COMP-3.
000820 01  Ｍ４０−当月振替額他社         PIC S9(13) COMP-3.
000830 01  Ｍ４０−振替日                 PIC  X(8).
000840 01  Ｍ４０−振替額累計             PIC S9(13) COMP-3.
000850 01  Ｍ４０−振替額累計他社         PIC S9(13) COMP-3.
000860 01  Ｍ４０−当月末残高             PIC S9(13) COMP-3.
000870 01  Ｍ４０−当月末残高他社         PIC S9(13) COMP-3.
000880 01  Ｍ４０−残前受月数             PIC S9(3)V9(2) COMP-3.
000730     
      *    EXEC  SQL  INCLUDE  D70GYM.CBL            END-EXEC.
000740*                                                                 
000750*--< 取引先マスタ>                                                
000010************************************************
000020* 業務管理(D70GYM)
000030************************************************
000040 01  Ｄ７０−業務管理ＩＤ           PIC  X(8).
000050 01  Ｄ７０−業務年月               PIC  X(6).
000060 01  Ｄ７０−期首年月               PIC  X(6).
000070 01  Ｄ７０−期末年月               PIC  X(6).
000080 01  Ｄ７０−旬処理日               PIC  X(8).
000090 01  Ｄ７０−旬次締日               PIC  X(8).
000100 01  Ｄ７０−旬次処理日             PIC  X(8).
000110 01  Ｄ７０−口振締日１             PIC  X(2).
000120 01  Ｄ７０−口振日１               PIC  X(8).
000130 01  Ｄ７０−口振仮締日１           PIC  X(8).
000140 01  Ｄ７０−口振本締日１           PIC  X(8).
000150 01  Ｄ７０−口振締日２             PIC  X(2).
000160 01  Ｄ７０−口振日２               PIC  X(8).
000170 01  Ｄ７０−口振仮締日２           PIC  X(8).
000180 01  Ｄ７０−口振本締日２           PIC  X(8).
000190 01  Ｄ７０−月次締日               PIC  X(8).
000200 01  Ｄ７０−月次処理日             PIC  X(8).
000210 01  Ｄ７０−年末締日               PIC  X(8).
000220 01  Ｄ７０−年末処理日             PIC  X(8).
000230 01  Ｄ７０−期末締日               PIC  X(8).
000240 01  Ｄ７０−期末処理日             PIC  X(8).
000250 01  Ｄ７０−最新請求書番号         PIC S9(7) COMP-3.
000260 01  Ｄ７０−更新年月日             PIC  X(8).
000270 01  Ｄ７０−更新時間               PIC  X(8).
000280 01  Ｄ７０−更新者                 PIC  X(8).
000290 01  Ｄ７０−入力担当者コード       PIC  X(8).
000300 01  Ｄ７０−バッチ用業務年月       PIC  X(6).
000310 01  Ｄ７０−バッチ用期首年月       PIC  X(6).
000320 01  Ｄ７０−バッチ用期末年月       PIC  X(6).
000330 01  Ｄ７０−督促処理年月日         PIC  X(8).
000340 01  Ｄ７０−チェックリスト処理年月日 PIC  X(8).
000350 01  Ｄ７０−最高支払依頼番号       PIC S9(10) COMP-3.
000360 01  Ｄ７０−月次処理開始年月日     PIC  X(8).
000370 01  Ｄ７０−月次処理開始時刻       PIC  X(8).
000380 01  Ｄ７０−月次処理終了年月日     PIC  X(8).
000390 01  Ｄ７０−月次処理終了時刻       PIC  X(8).
000400 01  Ｄ７０−前回督促処理年月日     PIC  X(8).
000410 01  Ｄ７０−バッチ処理状況フラグ   PIC  X(1).
000760     
      *    EXEC  SQL  INCLUDE  D01TRS.CBL            END-EXEC.
000770*                                                                 
000780*--< 請求先マスタ>                                                
      *****************************************************************
      *   取引先マスタ(D01TRS_TBL)
      *****************************************************************
       01  取引先マスタ.
           03  Ｄ０１−取引先コード  PIC  X(009).
           03  Ｄ０１−名寄せコード  PIC  X(040).
           03  Ｄ０１−取引先名称    PIC  X(080).
           03  Ｄ０１−取引先短名称  PIC  X(016).
           03  Ｄ０１−取引先カナ名称
                                     PIC  X(040).
           03  Ｄ０１−郵便番号      PIC  X(007).
           03  Ｄ０１−納付先コード  PIC  X(011).
           03  Ｄ０１−住所１        PIC  X(060).
           03  Ｄ０１−住所２        PIC  X(060).
           03  Ｄ０１−住所３        PIC  X(060).
           03  Ｄ０１−電話番号      PIC  X(015).
           03  Ｄ０１−旧社名        PIC  X(080).
           03  Ｄ０１−資本金        PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０１−設立年        PIC S9(004) PACKED-DECIMAL.
           03  Ｄ０１−設立月        PIC S9(002) PACKED-DECIMAL.
           03  Ｄ０１−顧客区分      PIC  X(002).
           03  Ｄ０１−企業区分      PIC  X(001).
           03  Ｄ０１−従業員数      PIC S9(006) PACKED-DECIMAL.
           03  Ｄ０１−業種コード    PIC  X(005).
           03  Ｄ０１−格付ランク    PIC  X(003).
           03  Ｄ０１−現担当者      PIC  X(008).
           03  Ｄ０１−請求先最終番号
                                     PIC S9(005) PACKED-DECIMAL.
           03  Ｄ０１−支払先最終番号
                                     PIC S9(005) PACKED-DECIMAL.
           03  Ｄ０１−主担当部課コード
                                     PIC  X(004).
           03  Ｄ０１−格付ランク２  PIC  X(003).
           03  Ｄ０１−代表者名称    PIC  X(020).
           03  Ｄ０１−アドレス      PIC  X(040).
           03  Ｄ０１−顧客使用不可フラグ
                                     PIC  X(001).
           03  Ｄ０１−与信括りコード
                                     PIC  X(007).
           03  Ｄ０１−初回請求据置区分
                                     PIC  X(001).
           03  Ｄ０１−満了案内送付区分
                                     PIC  X(001).
           03  Ｄ０１−再リース自動継続区分
                                     PIC  X(001).
           03  Ｄ０１−特定取引先区分
                                     PIC  X(001).
           03  Ｄ０１−事業所名称    PIC  X(080).
           03  Ｄ０１−事業所郵便番号
                                     PIC  X(007).
           03  Ｄ０１−事業所住所コード
                                     PIC  X(011).
           03  Ｄ０１−事業所住所２  PIC  X(060).
           03  Ｄ０１−事業所電話番号
                                     PIC  X(015).
           03  Ｄ０１−生年月日      PIC  X(008).
           03  Ｄ０１−管理債権レベル
                                     PIC  X(001).
           03  Ｄ０１−貸倒年月日    PIC  X(008).
           03  Ｄ０１−貸倒金額      PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０１−貸倒理由コード
                                     PIC  X(002).
           03  Ｄ０１−貸倒コメント  PIC  X(100).
           03  Ｄ０１−貸倒申請年月日
                                     PIC  X(008).
           03  Ｄ０１−自動請求データ作成要否
                                     PIC  X(001).
           03  Ｄ０１−開示帳票取得価格区分
                                     PIC  X(001).
           03  Ｄ０１−取引開始年月  PIC  X(006).
           03  Ｄ０１−創業年月      PIC  X(006).
           03  Ｄ０１−系列          PIC  X(030).
           03  Ｄ０１−販売先        PIC  X(030).
           03  Ｄ０１−仕入先        PIC  X(030).
           03  Ｄ０１−主要株主      PIC  X(020).
           03  Ｄ０１−主要株主持率  PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０１−保証人管理債権レベル
                                     PIC  X(001).
           03  Ｄ０１−過去最高督促段階
                                     PIC  X(001).
           03  Ｄ０１−過去最高督促段階更新日
                                     PIC  X(008).
           03  Ｄ０１−現在最高督促段階
                                     PIC  X(001).
           03  Ｄ０１−現在最高督促段階更新日
                                     PIC  X(008).
           03  Ｄ０１−売却現在最高督促段階
                                     PIC  X(001).
           03  Ｄ０１−売却現在最高督促段階更新日
                                     PIC  X(008).
           03  Ｄ０１−リース督促交渉出力フラグ
                                     PIC  X(001).
           03  Ｄ０１−中途解約督促交渉出力フラグ
                                     PIC  X(001).
           03  Ｄ０１−売却督促交渉出力フラグ
                                     PIC  X(001).
           03  Ｄ０１−銀行コード    PIC  X(004).
           03  Ｄ０１−支店コード    PIC  X(003).
           03  Ｄ０１−代表者役職名  PIC  X(020).
           03  Ｄ０１−従業種名      PIC  X(020).
           03  Ｄ０１−住所名カナ    PIC  X(040).
           03  Ｄ０１−コメント欄    PIC  X(120).
           03  Ｄ０１−帝国コード    PIC  X(009).
           03  Ｄ０１−主要株主持株数
                                     PIC S9(010) PACKED-DECIMAL.
           03  Ｄ０１−株主数        PIC S9(010) PACKED-DECIMAL.
           03  Ｄ０１−全国業界順位  PIC S9(007) PACKED-DECIMAL.
           03  Ｄ０１−全国業界会社数
                                     PIC S9(007) PACKED-DECIMAL.
           03  Ｄ０１−県内業界順位  PIC S9(007) PACKED-DECIMAL.
           03  Ｄ０１−県内業界会社数
                                     PIC S9(007) PACKED-DECIMAL.
           03  Ｄ０１−事業所数      PIC S9(005) PACKED-DECIMAL.
           03  Ｄ０１−主要事業所名  PIC  X(120).
           03  Ｄ０１−利用リース会社名
                                     PIC  X(040).
           03  Ｄ０１−スコアリング評点
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ０１−帝国評点      PIC S9(003) PACKED-DECIMAL.
           03  Ｄ０１−格付申請中フラグ
                                     PIC  X(001).
           03  Ｄ０１−格付調整申請理由
                                     PIC  X(200).
           03  Ｄ０１−格付日        PIC  X(008).
           03  Ｄ０１−与信限度額適用日
                                     PIC  X(008).
           03  Ｄ０１−当社取引開始経緯
                                     PIC  X(160).
           03  Ｄ０１−企業目的      PIC  X(100).
           03  Ｄ０１−表示単位区分  PIC  X(001).
           03  Ｄ０１−ＢＴＭ取引区分
                                     PIC  X(001).
           03  Ｄ０１−ＢＴＭ担当支店コード
                                     PIC  X(003).
           03  Ｄ０１−情報交換通知区分
                                     PIC  X(001).
           03  Ｄ０１−情報交換通知設定日
                                     PIC  X(008).
           03  Ｄ０１−ＢＴＭ連結対象区分
                                     PIC  X(001).
           03  Ｄ０１−ＢＯＴＬ連結対象区分
                                     PIC  X(001).
           03  Ｄ０１−親密先区分    PIC  X(001).
           03  Ｄ０１−ＮＥＴＬＥＡＳＩＮＧ利用対象区分
                                     PIC  X(001).
           03  Ｄ０１−転リース提携先コード
                                     PIC  X(003).
           03  Ｄ０１−事業所住所１  PIC  X(060).
           03  Ｄ０１−事業所住所３  PIC  X(060).
           03  Ｄ０１−企業決算月    PIC  X(002).
           03  Ｄ０１−一般大口区分  PIC  X(001).
           03  Ｄ０１−借入金識別区分
                                     PIC  X(001).
           03  Ｄ０１−借入先種別    PIC  X(002).
           03  Ｄ０１−担保差入率    PIC S9(003) PACKED-DECIMAL.
           03  Ｄ０１−旧名寄せコード
                                     PIC  X(008).
           03  Ｄ０１−更新年月日    PIC  X(008).
           03  Ｄ０１−更新時間      PIC  X(008).
           03  Ｄ０１−更新者        PIC  X(008).
           03  Ｄ０１−登録年月日    PIC  X(008).
           03  Ｄ０１−登録時間      PIC  X(008).
           03  Ｄ０１−登録担当者    PIC  X(008).
           03  Ｄ０１−入力担当者コード
                                     PIC  X(008).
000790     
      *    EXEC  SQL  INCLUDE  D02SQS.CBL            END-EXEC.
000800*                                                                 
000810*--< 項目名称マスタ>                                              
      *****************************************************************
      *   請求先マスタ(D02SQS_TBL)
      *****************************************************************
       01  請求先マスタ.
           03  Ｄ０２−取引先コード  PIC  X(009).
           03  Ｄ０２−請求先コード  PIC  X(005).
           03  Ｄ０２−請求先名称    PIC  X(080).
           03  Ｄ０２−部門名称      PIC  X(060).
           03  Ｄ０２−担当者名称    PIC  X(020).
           03  Ｄ０２−請求書表示    PIC  X(001).
           03  Ｄ０２−振込人名      PIC  X(040).
           03  Ｄ０２−郵便番号      PIC  X(007).
           03  Ｄ０２−納付先コード  PIC  X(011).
           03  Ｄ０２−住所２        PIC  X(060).
           03  Ｄ０２−住所３        PIC  X(060).
           03  Ｄ０２−電話番号      PIC  X(015).
           03  Ｄ０２−一括入金コード
                                     PIC  X(005).
           03  Ｄ０２−送付先名称    PIC  X(060).
           03  Ｄ０２−送付先部門    PIC  X(060).
           03  Ｄ０２−送付先担当者  PIC  X(020).
           03  Ｄ０２−送付先カナ名称
                                     PIC  X(040).
           03  Ｄ０２−送付先郵便番号
                                     PIC  X(007).
           03  Ｄ０２−送付先市町村コード
                                     PIC  X(011).
           03  Ｄ０２−送付先住所２  PIC  X(060).
           03  Ｄ０２−送付先住所３  PIC  X(060).
           03  Ｄ０２−送付先電話番号
                                     PIC  X(015).
           03  Ｄ０２−自動マッチング対象外区分
                                     PIC  X(001).
           03  Ｄ０２−回収サイト    PIC S9(002) PACKED-DECIMAL.
           03  Ｄ０２−回収日        PIC  X(002).
           03  Ｄ０２−回収方法      PIC  X(001).
           03  Ｄ０２−回収間隔      PIC S9(002) PACKED-DECIMAL.
           03  Ｄ０２−請求サイト    PIC S9(002) PACKED-DECIMAL.
           03  Ｄ０２−請求締日      PIC  X(002).
           03  Ｄ０２−請求間隔      PIC S9(002) PACKED-DECIMAL.
           03  Ｄ０２−請求基準月    PIC S9(002) PACKED-DECIMAL.
           03  Ｄ０２−作成通数      PIC S9(002) PACKED-DECIMAL.
           03  Ｄ０２−作成単位      PIC  X(001).
           03  Ｄ０２−請求書作成区分
                                     PIC  X(001).
           03  Ｄ０２−請求指定様式区分
                                     PIC  X(001).
           03  Ｄ０２−送付区分      PIC  X(001).
           03  Ｄ０２−受取側金融機関コード
                                     PIC  X(004).
           03  Ｄ０２−受取側支店コード
                                     PIC  X(003).
           03  Ｄ０２−受取側口座種類
                                     PIC  X(001).
           03  Ｄ０２−受取側口座番号
                                     PIC  X(010).
           03  Ｄ０２−口振銀行コード
                                     PIC  X(004).
           03  Ｄ０２−口振支店コード
                                     PIC  X(003).
           03  Ｄ０２−口振口座種類  PIC  X(001).
           03  Ｄ０２−口振口座番号  PIC  X(010).
           03  Ｄ０２−口振名義人    PIC  X(030).
           03  Ｄ０２−請求宛名印刷  PIC  X(001).
           03  Ｄ０２−請求日付印刷  PIC  X(001).
           03  Ｄ０２−回収期限印刷  PIC  X(001).
           03  Ｄ０２−使用月印刷    PIC  X(001).
           03  Ｄ０２−内訳印刷      PIC  X(001).
           03  Ｄ０２−請求番号印刷  PIC  X(001).
           03  Ｄ０２−摘要欄印刷    PIC  X(001).
           03  Ｄ０２−摘要欄        PIC  X(060).
           03  Ｄ０２−備考欄印刷    PIC  X(001).
           03  Ｄ０２−口振ご案内書作成区分
                                     PIC  X(001).
           03  Ｄ０２−集約区分      PIC  X(001).
           03  Ｄ０２−更新日時      PIC  X(016).
           03  Ｄ０２−更新者        PIC  X(008).
           03  Ｄ０２−送付先コード  PIC  X(003).
           03  Ｄ０２−仮想口座連番  PIC S9(003) PACKED-DECIMAL.
           03  Ｄ０２−顧客使用不可フラグ
                                     PIC  X(001).
           03  Ｄ０２−コメント欄    PIC  X(060).
           03  Ｄ０２−入力担当者コード
                                     PIC  X(008).
           03  Ｄ０２−部門カナ名称  PIC  X(030).
           03  Ｄ０２−契約先コード  PIC  X(005).
           03  Ｄ０２−共有フラグ    PIC  X(001).
           03  Ｄ０２−住所１        PIC  X(060).
           03  Ｄ０２−住所カナ名称  PIC  X(060).
           03  Ｄ０２−ＦＡＸ番号    PIC  X(015).
           03  Ｄ０２−振替銀行コード
                                     PIC  X(004).
           03  Ｄ０２−自振引落日    PIC  X(002).
           03  Ｄ０２−受取側口座コード
                                     PIC  X(002).
           03  Ｄ０２−振込手数料負担区分
                                     PIC  X(001).
           03  Ｄ０２−現担当者      PIC  X(008).
           03  Ｄ０２−主担当部課コード
                                     PIC  X(004).
           03  Ｄ０２−登録年月日    PIC  X(008).
           03  Ｄ０２−登録時間      PIC  X(008).
           03  Ｄ０２−登録担当者    PIC  X(008).
           03  Ｄ０２−更新年月日    PIC  X(008).
           03  Ｄ０２−更新時間      PIC  X(008).
           03  Ｄ０２−旧請求先コード
                                     PIC  X(008).
           03  Ｄ０２−口座引落依頼書受領日
                                     PIC  X(008).
           03  Ｄ０２−口座引落開始日
                                     PIC  X(008).
000820     
      *    EXEC  SQL  INCLUDE  D19MSY.CBL            END-EXEC.
000830*                                                                 
000840*--< 債権情報（一般）ＤＢ>                                        
      *****************************************************************
      *   項目名称マスタ(D19MSY_TBL)
      *****************************************************************
       01  項目名称マスタ.
           03  Ｄ１９−コードＮＯ    PIC  X(012).
           03  Ｄ１９−コード        PIC  X(005).
           03  Ｄ１９−コード名      PIC  X(040).
           03  Ｄ１９−名称          PIC  X(060).
           03  Ｄ１９−更新日時      PIC  X(016).
           03  Ｄ１９−更新者        PIC  X(008).
           03  Ｄ１９−デフォルト区分
                                     PIC  X(001).
           03  Ｄ１９−パスワード入力区分
                                     PIC  X(001).
           03  Ｄ１９−ソート順      PIC S9(003) PACKED-DECIMAL.
           03  Ｄ１９−入力担当者コード
                                     PIC  X(008).
           03  Ｄ１９−登録年月日    PIC  X(008).
           03  Ｄ１９−登録時間      PIC  X(008).
           03  Ｄ１９−登録担当者    PIC  X(008).
           03  Ｄ１９−更新年月日    PIC  X(008).
           03  Ｄ１９−更新時間      PIC  X(008).
000850     
      *    EXEC  SQL  INCLUDE  M01SAJ.CBL            END-EXEC.
000860*                                                                 
000100************************************************
000200* 債権情報(一般)(M01SAJ)
000300************************************************
000400 01  Ｍ０１−レコード区分           PIC  X(1).
000500 01  Ｍ０１−契約番号               PIC  X(15).
000600 01  Ｍ０１−再リース回数           PIC S9(2) COMP-3.
000700 01  Ｍ０１−契約種類               PIC  X(3).
000800 01  Ｍ０１−連番                   PIC S9(3) COMP-3.
000900 01  Ｍ０１−請求区分               PIC  X(1).
001000 01  Ｍ０１−解約売却取消区分       PIC  X(1).
001100 01  Ｍ０１−処理年月               PIC  X(6).
001200 01  Ｍ０１−請求先取引先コード     PIC  X(9).
001300 01  Ｍ０１−顧客区分               PIC  X(2).
001400 01  Ｍ０１−ＴＡＳＳコード         PIC  X(7).
001500 01  Ｍ０１−貸倒年月日             PIC  X(8).
001600 01  Ｍ０１−特定取引先区分         PIC  X(1).
001700 01  Ｍ０１−最大督促回数           PIC  X(1).
001800 01  Ｍ０１−契約日                 PIC  X(8).
001900 01  Ｍ０１−引渡年月日             PIC  X(8).
002000 01  Ｍ０１−契約開始日             PIC  X(8).
002100 01  Ｍ０１−契約終了日             PIC  X(8).
002200 01  Ｍ０１−期間                   PIC S9(3) COMP-3.
002300 01  Ｍ０１−契約区分               PIC  X(1).
002400 01  Ｍ０１−リース開始区分         PIC  X(1).
002500 01  Ｍ０１−担当部課コード         PIC  X(4).
002600 01  Ｍ０１−担当者コード           PIC  X(8).
002700 01  Ｍ０１−協調区分               PIC  X(1).
002800 01  Ｍ０１−状態フラグ             PIC  X(1).
002900 01  Ｍ０１−主契約区分             PIC  X(1).
003000 01  Ｍ０１−遡及処理区分           PIC  X(1).
003100 01  Ｍ０１−遡及処理年月           PIC  X(6).
003200 01  Ｍ０１−成約年月               PIC  X(6).
003300 01  Ｍ０１−成約取消年月           PIC  X(6).
003400 01  Ｍ０１−検収処理年月           PIC  X(6).
003500 01  Ｍ０１−検収取消日             PIC  X(8).
003600 01  Ｍ０１−検収取消処理年月       PIC  X(6).
003700 01  Ｍ０１−最新回収期間           PIC S9(3) COMP-3.
003800 01  Ｍ０１−総回収回数             PIC S9(3) COMP-3.
003900 01  Ｍ０１−請求間隔               PIC S9(2) COMP-3.
004000 01  Ｍ０１−回収間隔               PIC S9(2) COMP-3.
004100 01  Ｍ０１−制度転登録年月         PIC  X(6).
004200 01  Ｍ０１−制度転確定フラグ       PIC  X(1).
004300 01  Ｍ０１−回収サイト             PIC S9(2) COMP-3.
004400 01  Ｍ０１−回収方法               PIC  X(1).
004500 01  Ｍ０１−再リース区分           PIC  X(1).
004600 01  Ｍ０１−管理債権レベル         PIC  X(1).
004700 01  Ｍ０１−前払フラグ             PIC  X(1).
004800 01  Ｍ０１−督促回数               PIC S9(1) COMP-3.
004900 01  Ｍ０１−請求先コード           PIC  X(5).
005000 01  Ｍ０１−契約先取引先コード     PIC  X(9).
005100 01  Ｍ０１−契約先コード           PIC  X(5).
005200 01  Ｍ０１−支払取引先コード       PIC  X(9).
005300 01  Ｍ０１−支払先コード           PIC  X(5).
005400 01  Ｍ０１−雑費販促費             PIC S9(13) COMP-3.
005500 01  Ｍ０１−最新月額料金           PIC S9(13) COMP-3.
005600 01  Ｍ０１−最新消費率             PIC S9(2)V9(7) COMP-3.
005700 01  Ｍ０１−最新消費税額           PIC S9(13) COMP-3.
005800 01  Ｍ０１−当初契約総額           PIC S9(13) COMP-3.
005900 01  Ｍ０１−当初消費税総額         PIC S9(13) COMP-3.
006000 01  Ｍ０１−最新契約総額           PIC S9(13) COMP-3.
006100 01  Ｍ０１−最新消費税総額         PIC S9(13) COMP-3.
006200 01  Ｍ０１−保守無償期間           PIC S9(3) COMP-3.
006300 01  Ｍ０１−回収額                 PIC S9(13) COMP-3.
006400 01  Ｍ０１−消費税回収額           PIC S9(13) COMP-3.
006500 01  Ｍ０１−最新回収日             PIC  X(8).
006600 01  Ｍ０１−割賦原価総額           PIC S9(13) COMP-3.
006700 01  Ｍ０１−割賦利益総額           PIC S9(13) COMP-3.
006800 01  Ｍ０１−当初取得価額           PIC S9(13) COMP-3.
006900 01  Ｍ０１−満了フラグ             PIC  X(1).
007000 01  Ｍ０１−満了日                 PIC  X(8).
007100 01  Ｍ０１−資産種類               PIC  X(5).
007200 01  Ｍ０１−合算先契約種類         PIC  X(3).
007300 01  Ｍ０１−貸付利率               PIC S9(2)V9(7) COMP-3.
007400 01  Ｍ０１−再リース手数料         PIC S9(13) COMP-3.
007500 01  Ｍ０１−委託保守区分           PIC  X(1).
007600 01  Ｍ０１−委託保守相当月額       PIC S9(13) COMP-3.
007700 01  Ｍ０１−制度転支払月額         PIC S9(13) COMP-3.
007800 01  Ｍ０１−前払月数               PIC S9(3) COMP-3.
007900 01  Ｍ０１−その他契約種類区分     PIC  X(1).
008000 01  Ｍ０１−契約種類区分           PIC  X(1).
008100 01  Ｍ０１−契約種類内部コード     PIC  X(2).
008200 01  Ｍ０１−支払利息               PIC S9(13) COMP-3.
008300 01  Ｍ０１−原価調整額             PIC S9(13) COMP-3.
008400 01  Ｍ０１−固定資産税             PIC S9(13) COMP-3.
008500 01  Ｍ０１−年利回り               PIC S9(2)V9(3) COMP-3.
008600 01  Ｍ０１−運用利回り             PIC S9(2)V9(3) COMP-3.
008700 01  Ｍ０１−粗利益額               PIC S9(13) COMP-3.
008800 01  Ｍ０１−粗利益額−表           PIC S9(13) COMP-3.
008900 01  Ｍ０１−粗利益額−裏           PIC S9(13) COMP-3.
009000 01  Ｍ０１−規定損害金基本額       PIC S9(13) COMP-3.
009100 01  Ｍ０１−信用保険料             PIC S9(13) COMP-3.
009200 01  Ｍ０１−動産保険料             PIC S9(13) COMP-3.
009300 01  Ｍ０１−保守料                 PIC S9(13) COMP-3.
009400 01  Ｍ０１−その他雑費             PIC S9(13) COMP-3.
009500 01  Ｍ０１−手数料                 PIC S9(13) COMP-3.
009600 01  Ｍ０１−手形受取日             PIC  X(8).
009700 01  Ｍ０１−手形枚数               PIC S9(3) COMP-3.
009800 01  Ｍ０１−格付区分               PIC  X(2).
009900 01  Ｍ０１−取得価額               PIC S9(13) COMP-3.
010000 01  Ｍ０１−自社分月額料金         PIC S9(13) COMP-3.
010100 01  Ｍ０１−自社分月額消費税       PIC S9(13) COMP-3.
010200 01  Ｍ０１−自社分契約総額         PIC S9(13) COMP-3.
010300 01  Ｍ０１−自社分消費税総額       PIC S9(13) COMP-3.
010400 01  Ｍ０１−他社購入額             PIC S9(13) COMP-3.
010500 01  Ｍ０１−残価設定額             PIC S9(13) COMP-3.
010600 01  Ｍ０１−他社残価設定額         PIC S9(13) COMP-3.
010700 01  Ｍ０１−他社回収額             PIC S9(13) COMP-3.
010800 01  Ｍ０１−他社回収額消費税       PIC S9(13) COMP-3.
010900 01  Ｍ０１−他社割賦原価総額       PIC S9(13) COMP-3.
011000 01  Ｍ０１−他社割賦利益総額       PIC S9(13) COMP-3.
011100 01  Ｍ０１−解約フラグ             PIC  X(1).
011200 01  Ｍ０１−解約日                 PIC  X(8).
011300 01  Ｍ０１−解約回数               PIC S9(3) COMP-3.
011400 01  Ｍ０１−解約区分               PIC  X(1).
011500 01  Ｍ０１−解約理由               PIC  X(2).
011600 01  Ｍ０１−解約処理年月           PIC  X(6).
011700 01  Ｍ０１−取消区分               PIC  X(1).
011800 01  Ｍ０１−解約取消処理年月       PIC  X(6).
011900 01  Ｍ０１−解約年月               PIC  X(6).
012000 01  Ｍ０１−解約月数               PIC S9(3) COMP-3.
012100 01  Ｍ０１−前月債権総額           PIC S9(13) COMP-3.
012200 01  Ｍ０１−前月売上総額           PIC S9(13) COMP-3.
012300 01  Ｍ０１−前月売上総額他社       PIC S9(13) COMP-3.
012400 01  Ｍ０１−前月消費税総額         PIC S9(13) COMP-3.
012500 01  Ｍ０１−前月消費税総額他社     PIC S9(13) COMP-3.
012600 01  Ｍ０１−売上総額               PIC S9(13) COMP-3.
012700 01  Ｍ０１−売上総額他社           PIC S9(13) COMP-3.
012800 01  Ｍ０１−売上消費税総額         PIC S9(13) COMP-3.
012900 01  Ｍ０１−売上消費税総額他社     PIC S9(13) COMP-3.
013000 01  Ｍ０１−前期末未実現残高       PIC S9(13) COMP-3.
013100 01  Ｍ０１−前期末未実現残高他社   PIC S9(13) COMP-3.
013200 01  Ｍ０１−前期迄売上額累計       PIC S9(13) COMP-3.
013300 01  Ｍ０１−前期迄売上額累計他社   PIC S9(13) COMP-3.
013400 01  Ｍ０１−前期迄消費税額累計     PIC S9(13) COMP-3.
013500 01  Ｍ０１−前期迄消費税額累計他社 PIC S9(13) COMP-3.
013600 01  Ｍ０１−当月売上額             PIC S9(13) COMP-3.
013700 01  Ｍ０１−当月売上額２           PIC S9(13) COMP-3.
013800 01  Ｍ０１−当月売上額他社         PIC S9(13) COMP-3.
013900 01  Ｍ０１−当月消費税相当額       PIC S9(13) COMP-3.
014000 01  Ｍ０１−当月消費税相当額２     PIC S9(13) COMP-3.
014100 01  Ｍ０１−当月消費税相当額他社   PIC S9(13) COMP-3.
014200 01  Ｍ０１−当月消費税率           PIC S9(2)V9(7) COMP-3.
014300 01  Ｍ０１−当月消費税率２         PIC S9(2)V9(7) COMP-3.
014400 01  Ｍ０１−当月消費税率他社       PIC S9(2)V9(7) COMP-3.
014500 01  Ｍ０１−当月迄売上額累計       PIC S9(13) COMP-3.
014600 01  Ｍ０１−当月迄売上額累計他社   PIC S9(13) COMP-3.
014700 01  Ｍ０１−当月迄消費税額累計     PIC S9(13) COMP-3.
014800 01  Ｍ０１−当月迄消費税額累計他社 PIC S9(13) COMP-3.
014900 01  Ｍ０１−当期売上額累計         PIC S9(13) COMP-3.
015000 01  Ｍ０１−当期売上額累計他社     PIC S9(13) COMP-3.
015100 01  Ｍ０１−当月末未実現残高       PIC S9(13) COMP-3.
015200 01  Ｍ０１−当月末未実現残高他社   PIC S9(13) COMP-3.
015300 01  Ｍ０１−当月売上増加額         PIC S9(13) COMP-3.
015400 01  Ｍ０１−当月売上増加額他社     PIC S9(13) COMP-3.
015500 01  Ｍ０１−当月消費税増加額       PIC S9(13) COMP-3.
015600 01  Ｍ０１−当月消費税増加額他社   PIC S9(13) COMP-3.
015700 01  Ｍ０１−当月売上減少額         PIC S9(13) COMP-3.
015800 01  Ｍ０１−当月売上減少額他社     PIC S9(13) COMP-3.
015900 01  Ｍ０１−当月消費税減少額       PIC S9(13) COMP-3.
016000 01  Ｍ０１−当月消費税減少額他社   PIC S9(13) COMP-3.
016100 01  Ｍ０１−当月遡及分増加自売上年月 PIC  X(6).
016200 01  Ｍ０１−当月遡及分増加至売上年月 PIC  X(6).
016300 01  Ｍ０１−当月遡及分売上増加額   PIC S9(13) COMP-3.
016400 01  Ｍ０１−当月遡及分売上増加額２ PIC S9(13) COMP-3.
016500 01  Ｍ０１−当月遡及分売上増加額他社 PIC S9(13) COMP-3.
016600 01  Ｍ０１−当月遡及分消費税増加額 PIC S9(13) COMP-3.
016700 01  Ｍ０１−当月遡及分消費税増加額２ PIC S9(13) COMP-3.
016800 01  Ｍ０１−当月遡及分消費税増加額他社 PIC S9(13) COMP-3.
016900 01  Ｍ０１−当月遡及分減少自売上年月 PIC  X(6).
017000 01  Ｍ０１−当月遡及分減少至売上年月 PIC  X(6).
017100 01  Ｍ０１−当月遡及分売上減少額   PIC S9(13) COMP-3.
017200 01  Ｍ０１−当月遡及分売上減少額２ PIC S9(13) COMP-3.
017300 01  Ｍ０１−当月遡及分売上減少額他社 PIC S9(13) COMP-3.
017400 01  Ｍ０１−当月遡及分消費税減少額 PIC S9(13) COMP-3.
017500 01  Ｍ０１−当月遡及分消費税減少額２ PIC S9(13) COMP-3.
017600 01  Ｍ０１−当月遡及分消費税減少額他社 PIC S9(13) COMP-3.
017700 01  Ｍ０１−当月遡及分消費税率     PIC S9(2)V9(7) COMP-3.
017800 01  Ｍ０１−当月遡及分消費税率２   PIC S9(2)V9(7) COMP-3.
017900 01  Ｍ０１−前月売上額             PIC S9(13) COMP-3.
018000 01  Ｍ０１−前月売上額２           PIC S9(13) COMP-3.
018100 01  Ｍ０１−前月売上額他社         PIC S9(13) COMP-3.
018200 01  Ｍ０１−前月消費税相当額       PIC S9(13) COMP-3.
018300 01  Ｍ０１−前月消費税相当額２     PIC S9(13) COMP-3.
018400 01  Ｍ０１−前月消費税相当額他社   PIC S9(13) COMP-3.
018500 01  Ｍ０１−前月迄売上額累計       PIC S9(13) COMP-3.
018600 01  Ｍ０１−前月迄売上額累計他社   PIC S9(13) COMP-3.
018700 01  Ｍ０１−前月迄消費税額累計     PIC S9(13) COMP-3.
018800 01  Ｍ０１−前月迄消費税額累計他社 PIC S9(13) COMP-3.
018900 01  Ｍ０１−前期末元本残高         PIC S9(13) COMP-3.
019000 01  Ｍ０１−前期末利息残高         PIC S9(13) COMP-3.
019100 01  Ｍ０１−前月迄元本回収額累計   PIC S9(13) COMP-3.
019200 01  Ｍ０１−前月迄利息回収額累計   PIC S9(13) COMP-3.
019300 01  Ｍ０１−前月末元本残高         PIC S9(13) COMP-3.
019400 01  Ｍ０１−前月末利息残高         PIC S9(13) COMP-3.
019500 01  Ｍ０１−新規増加分元本額       PIC S9(13) COMP-3.
019600 01  Ｍ０１−新規増加分利息額       PIC S9(13) COMP-3.
019700 01  Ｍ０１−当月元本入金額         PIC S9(13) COMP-3.
019800 01  Ｍ０１−当月利息入金額         PIC S9(13) COMP-3.
019900 01  Ｍ０１−当月末元本残高         PIC S9(13) COMP-3.
020000 01  Ｍ０１−当月末利息残高         PIC S9(13) COMP-3.
020100 01  Ｍ０１−当月迄元本収入予定額累計 PIC S9(13) COMP-3.
020200 01  Ｍ０１−当月迄利息収入予定額累計 PIC S9(13) COMP-3.
020300 01  Ｍ０１−当月迄元本回収額累計   PIC S9(13) COMP-3.
020400 01  Ｍ０１−当月迄利息回収額累計   PIC S9(13) COMP-3.
020500 01  Ｍ０１−当月迄元本回収額累計他社 PIC S9(13) COMP-3.
020600 01  Ｍ０１−当月迄利息回収額累計他社 PIC S9(13) COMP-3.
020700 01  Ｍ０１−当月回収予定額         PIC S9(13) COMP-3.
020800 01  Ｍ０１−元本未経過リース料     PIC S9(13) COMP-3.
020900 01  Ｍ０１−利息未経過リース料     PIC S9(13) COMP-3.
021000 01  Ｍ０１−元本未収リース料       PIC S9(13) COMP-3.
021100 01  Ｍ０１−利息未収リース料       PIC S9(13) COMP-3.
021200 01  Ｍ０１−当月前受リース料入金額 PIC S9(13) COMP-3.
021300 01  Ｍ０１−当月迄前受リース料入金額 PIC S9(13) COMP-3.
021400 01  Ｍ０１−当月前受リース料消化額 PIC S9(13) COMP-3.
021500 01  Ｍ０１−当月前受金消化額       PIC S9(13) COMP-3.
021600 01  Ｍ０１−元本前受金             PIC S9(13) COMP-3.
021700 01  Ｍ０１−利息前受金             PIC S9(13) COMP-3.
021800 01  Ｍ０１−当月末前受リース料残高 PIC S9(13) COMP-3.
021900 01  Ｍ０１−貸倒損失額             PIC S9(13) COMP-3.
022000 01  Ｍ０１−現在簿価               PIC S9(13) COMP-3.
022100 01  Ｍ０１−耐用年数               PIC S9(2) COMP-3.
022200 01  Ｍ０１−保険料率               PIC S9(2) COMP-3.
022300 01  Ｍ０１−拘束期間後当月レンタル料 PIC S9(13) COMP-3.
022400 01  Ｍ０１−当月売上対象フラグ     PIC  X(1).
022500 01  Ｍ０１−新契約番号             PIC  X(15).
022600 01  Ｍ０１−当月売上調整フラグ     PIC  X(1).
022700 01  Ｍ０１−当月条件変更フラグ     PIC  X(1).
022800 01  Ｍ０１−営業概要契約抽出フラグ PIC  X(1).
022900 01  Ｍ０１−営業概要検収抽出フラグ PIC  X(1).
023000 01  Ｍ０１−営業所区分             PIC  X(1).
023100 01  Ｍ０１−契約内容契約件名       PIC  N(20).
023200 01  Ｍ０１−債権契約件名           PIC  N(20).
023300 01  Ｍ０１−成約日                 PIC  X(8).
023400 01  Ｍ０１−社内金利               PIC S9(2)V9(3) COMP-3.
023500 01  Ｍ０１−年粗利率               PIC S9(2)V9(3) COMP-3.
023600 01  Ｍ０１−販売促進費             PIC S9(13) COMP-3.
023700 01  Ｍ０１−雑費                   PIC S9(13) COMP-3.
023800 01  Ｍ０１−最終回収予定日         PIC  X(8).
023900 01  Ｍ０１−会計部門コード         PIC  X(2).
024000 01  Ｍ０１−満了売却フラグ         PIC  X(1).
024100 01  Ｍ０１−債権譲渡支払額         PIC S9(13) COMP-3.
024200 01  Ｍ０１−仕訳フラグ−売上       PIC  X(1).
024300 01  Ｍ０１−仕訳フラグ−検収       PIC  X(1).
024400 01  Ｍ０１−再リース取消エントリ日 PIC  X(8).
024500 01  Ｍ０１−消費税区分             PIC  X(2).
024600 01  Ｍ０１−当初他社購入額         PIC S9(13) COMP-3.
024700 01  Ｍ０１−他社最新契約総額       PIC S9(13) COMP-3.
024800 01  Ｍ０１−他社最新消費税総額     PIC S9(13) COMP-3.
024900 01  Ｍ０１−他社契約総額           PIC S9(13) COMP-3.
025000 01  Ｍ０１−成約取消エントリ日     PIC  X(8).
025100 01  Ｍ０１−売廃フラグ             PIC  X(1).
025200 01  Ｍ０１−再リース処理年月       PIC  X(6).
025300 01  Ｍ０１−再リース自動継続区分   PIC  X(1).
025400 01  Ｍ０１−再リース申請書有無区分 PIC  X(1).
025500 01  Ｍ０１−再リース申請フラグ     PIC  X(1).
025600 01  Ｍ０１−解約申請フラグ         PIC  X(1).
025700 01  Ｍ０１−自動請求区分           PIC  X(1).
025800 01  Ｍ０１−前月割賦原価総額       PIC S9(13) COMP-3.
025900 01  Ｍ０１−前月他社割賦原価総額   PIC S9(13) COMP-3.
026000 01  Ｍ０１−頭金区分               PIC  X(1).
026100 01  Ｍ０１−コンスーマ法人区分     PIC  X(1).
026200 01  Ｍ０１−申請連番               PIC S9(4) COMP-3.
026300 01  Ｍ０１−未収残高対象外フラグ   PIC  X(1).
026400 01  Ｍ０１−前月状態フラグ         PIC  X(1).
026500 01  Ｍ０１−入金回数               PIC S9(3) COMP-3.
026600 01  Ｍ０１−実現回数               PIC S9(3) COMP-3.
026700 01  Ｍ０１−当月遡及分増加自売上年月２ PIC  X(6).
026800 01  Ｍ０１−当月遡及分増加至売上年月２ PIC  X(6).
026900 01  Ｍ０１−当月遡及分減少自売上年月２ PIC  X(6).
027000 01  Ｍ０１−当月遡及分減少至売上年月２ PIC  X(6).
027100 01  Ｍ０１−初回回収予定日         PIC  X(8).
027200 01  Ｍ０１−前月迄元本収入予定額累計 PIC S9(13) COMP-3.
027300 01  Ｍ０１−前月迄利息収入予定額累計 PIC S9(13) COMP-3.
027400 01  Ｍ０１−最新対外契約番号       PIC  X(15).
027500 01  Ｍ０１−割賦頭金               PIC S9(13) COMP-3.
027600 01  Ｍ０１−割賦頭金他社           PIC S9(13) COMP-3.
027700 01  Ｍ０１−割賦頭金消費税         PIC S9(13) COMP-3.
027800 01  Ｍ０１−割賦頭金消費税他社     PIC S9(13) COMP-3.
027900 01  Ｍ０１−前月他社最新契約総額   PIC S9(13) COMP-3.
028000 01  Ｍ０１−前月他社最新消費税総額 PIC S9(13) COMP-3.
028100 01  Ｍ０１−前期末元本残高他社     PIC S9(13) COMP-3.
028200 01  Ｍ０１−前期末利息残高他社     PIC S9(13) COMP-3.
028300 01  Ｍ０１−前月迄元本回収額累計他社 PIC S9(13) COMP-3.
028400 01  Ｍ０１−前月迄利息回収額累計他社 PIC S9(13) COMP-3.
028500 01  Ｍ０１−前月末元本残高他社     PIC S9(13) COMP-3.
028600 01  Ｍ０１−前月末利息残高他社     PIC S9(13) COMP-3.
028700 01  Ｍ０１−新規増加分元本額他社   PIC S9(13) COMP-3.
028800 01  Ｍ０１−新規増加分利息額他社   PIC S9(13) COMP-3.
028900 01  Ｍ０１−当月元本入金額他社     PIC S9(13) COMP-3.
029000 01  Ｍ０１−当月利息入金額他社     PIC S9(13) COMP-3.
029100 01  Ｍ０１−当月末元本残高他社     PIC S9(13) COMP-3.
029200 01  Ｍ０１−当月末利息残高他社     PIC S9(13) COMP-3.
029300 01  Ｍ０１−当月迄元本収入予定額累計他社 PIC S9(13) COMP-3.
029400 01  Ｍ０１−当月迄利息収入予定額累計他社 PIC S9(13) COMP-3.
029500 01  Ｍ０１−当月回収予定額他社     PIC S9(13) COMP-3.
029600 01  Ｍ０１−元本未経過リース料他社 PIC S9(13) COMP-3.
029700 01  Ｍ０１−利息未経過リース料他社 PIC S9(13) COMP-3.
029800 01  Ｍ０１−元本未収リース料他社   PIC S9(13) COMP-3.
029900 01  Ｍ０１−利息未収リース料他社   PIC S9(13) COMP-3.
030000 01  Ｍ０１−当月前受リース料入金額他社 PIC S9(13) COMP-3.
030100 01  Ｍ０１−当月迄前受リース料入金額他社 PIC S9(13) COMP-3.
030200 01  Ｍ０１−元本前受金他社         PIC S9(13) COMP-3.
030300 01  Ｍ０１−利息前受金他社         PIC S9(13) COMP-3.
030400 01  Ｍ０１−検収エントリ日         PIC  X(8).
030500 01  Ｍ０１−前月売上総額再リース   PIC S9(13) COMP-3.
030600 01  Ｍ０１−売上総額再リース       PIC S9(13) COMP-3.
030700 01  Ｍ０１−前期迄売上額累計再リース PIC S9(13) COMP-3.
030800 01  Ｍ０１−当月売上額再リース     PIC S9(13) COMP-3.
030900 01  Ｍ０１−当月迄売上額累計再リース PIC S9(13) COMP-3.
031000 01  Ｍ０１−当期売上額累計再リース PIC S9(13) COMP-3.
031100 01  Ｍ０１−当月遡及分売上増加額再リース PIC S9(13) COMP-3.
031200 01  Ｍ０１−当月遡及分売上減少額再リース PIC S9(13) COMP-3.
031300 01  Ｍ０１−前月迄売上額累計再リース PIC S9(13) COMP-3.
031400 01  Ｍ０１−今回再リース料金区分   PIC  X(1).
031500 01  Ｍ０１−当月末未実現残高再リース PIC S9(13) COMP-3.
031600 01  Ｍ０１−前期末未実現残高再リース PIC S9(13) COMP-3.
031700 01  Ｍ０１−前月債権消費税総額     PIC S9(13) COMP-3.
031800 01  Ｍ０１−当月前受リース料消化額他社 PIC S9(13) COMP-3.
031900 01  Ｍ０１−当月前受金消化額他社   PIC S9(13) COMP-3.
032000 01  Ｍ０１−当月末前受リース料残高他社 PIC S9(13) COMP-3.
032100 01  Ｍ０１−貸倒損失額利息相当額   PIC S9(13) COMP-3.
032200 01  Ｍ０１−経理用主契約区分       PIC  X(1).
032300 01  Ｍ０１−違約金分割回収売上額   PIC S9(13) COMP-3.
032400 01  Ｍ０１−違約金分割回収売上額消費税 PIC S9(13) COMP-3.
032500 01  Ｍ０１−検収取消エントリ日     PIC  X(8).
032600 01  Ｍ０１−当月前受金入金額       PIC S9(13) COMP-3.
032700 01  Ｍ０１−当月前受金入金額他社   PIC S9(13) COMP-3.
032800 01  Ｍ０１−当月末前受金残高       PIC S9(13) COMP-3.
032900 01  Ｍ０１−当月末前受金残高他社   PIC S9(13) COMP-3.
033000 01  Ｍ０１−検収エントリ処理年月   PIC  X(6).
033100 01  Ｍ０１−台帳−当月入金回収額     PIC S9(13) COMP-3.
033200 01  Ｍ０１−台帳−当月入金回収額他社 PIC S9(13) COMP-3.
033300 01  Ｍ０１−台帳−当月入金前受額     PIC S9(13) COMP-3.
033400 01  Ｍ０１−台帳−当月入金前受額他社 PIC S9(13) COMP-3.
033500 01  Ｍ０１−担保区分               PIC  X(1).
033600 01  Ｍ０１−頭金回収サイト         PIC S9(02) COMP-3.
033700 01  Ｍ０１−頭金計上年月日         PIC  X(8).
033800 01  Ｍ０１−契約内容−解約処理年月 PIC  X(6).
033900 01  Ｍ０１−債権−解約処理年月     PIC  X(6).
034000 01  Ｍ０１−解約履歴−貸倒損失額   PIC  S9(13) COMP-3.
034100 01  Ｍ０１−解約履歴−貸倒損失額利益相当額 PIC S9(13) COMP-3.
034200 01  Ｍ０１−割賦頭金消費税率       PIC S9(2)V9(7) COMP-3.
000870     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000880*----------------------------------------------------------------*
000890*    ＷＯＲＫエリア                                              *
000900*----------------------------------------------------------------*
000910 01  ＷＯＲＫ−エリア.                                            
000920*                                                                 
000930*--< ファイル状態 >                                               
000940     03  Ｗ−状態エリア.                                          
000950         05  Ｗ−状態                 PIC  X(02).                 
000960*--< エラー判定用 >                                               
000970     03  Ｗ−エラーコード             PIC S9(04).                 
000980*                                                                 
000990*--< フラグアリア >                                               
001000     03  フラグアリア.                                            
001010         05  Ｗ−終了−フラグ         PIC  X(01).                 
001020         05  Ｗ−異常終了−フラグ     PIC  X(01).                 
001030*                                                                 
001040*--< 件数エリア >                                                 
001050     03  件数エリア.                                              
001060         05  Ｗ−入力−件数           PIC  9(09).                 
001070         05  Ｗ−出力−件数           PIC  9(09).                 
001080*                                                                 
001090*--< 共通情報 >                                                   
001100 01  Ｗ−共通情報.                                                
001110     03  Ｗ−システム日付.                                        
001120         05  Ｗ−世紀                 PIC  X(02) VALUE  "20".     
001130         05  Ｗ−年月日               PIC  X(06).                 
001140     03  Ｗ−システム時刻             PIC  X(08).                 
001150     03  Ｗ−担当者                   PIC  X(08) VALUE "IKOPG   ".
001160*                                                                 
001170*----------------------------------------------------------------*
001180*    サブルーチン名                                              *
001190*----------------------------------------------------------------*
001200 01  CALL-AREA.                                                   
001210*--< 共通ログサブルーチン >                                       
001220     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001230     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001240*                                                                 
001250*----------------------------------------------------------------*
001260*    ＣＯＰＹ領域                                                *
001270*----------------------------------------------------------------*
001280*--< 共通ログ用パラメータ >                                       
001290 01  IF-CHOCO001.                                                 
001300     COPY  CHOCO001  REPLACING  ==()==  BY  ==共１−==.           
001310*                                                                 
001320*----------------------------------------------------------------*
001330*    ＩＮＩファイル読込サブルーチン用パラメタ領域                *
001340*----------------------------------------------------------------*
001350 01  PARA-AREA.                                                   
001360     COPY CPBCO001.                                               
001370******************************************************************
001380*    定数用データ定義エリア                                      *
001390******************************************************************
001400 CONSTANT                             SECTION.                    
001410 01  定数領域.                                                    
001420     03  定数−プログラムＩＤ         PIC  X(08) VALUE "AAASED25".
001430     03  定数−プログラム名           PIC  X(80)                  
001440                              VALUE  "前受金受払残高ファイル作成".
001450     03  定数−ＳＱＬＯＫ             PIC S9(04)  VALUE  ZERO.    
001460     03  定数−ＳＱＬＥＮＤ           PIC S9(04)  VALUE  0100.    
001470     03  定数−正常状態               PIC S9(04)  VALUE  ZERO.    
001480     03  定数−異常状態               PIC S9(04)  VALUE  0009.    
001490******************************************************************
001500*    ＰＲＯＣＥＤＵＲＥ            ＤＩＶＩＳＩＯＮ              *
001510******************************************************************
001520 PROCEDURE                            DIVISION.                   
001530*                                                                 
001540     PERFORM  初期処理.                                           
001550*                                                                 
001560     PERFORM  主処理  UNTIL  Ｗ−終了−フラグ  =  "Y".            
001570*                                                                 
001580     PERFORM  終了処理.                                           
001590*                                                                 
001600     STOP     RUN.                                                
001610*                                                                 
001620******************************************************************
001630*    初期処理                                                    *
001640*******************************************************************                                                                 
001650 初期処理                             SECTION.                    
001660 初期処理−ＳＴＡＲＴ.                                            
001670*                                                                 
001680*----------------------------------------------------------------*
001690*    開始メッセージ出力処理                                      *
001700*----------------------------------------------------------------*
001710     INITIALIZE                       IF-CHOCO001.                
001720     MOVE  "3"                        TO  共１−イベント種別.     
001730     MOVE  定数−プログラムＩＤ       TO  共１−ソースＩＤ.       
001740     MOVE  "0"                        TO  共１−復帰コード.       
001750     MOVE  "START"                    TO  共１−処理識別.         
001760     MOVE  定数−プログラム名         TO  共１−その他メッセージ. 
001770     CALL  CLOCO001                USING  IF-CHOCO001.            
001780*                                                                 
001790*----------------------------------------------------------------*
001800*    作業領域の初期値処理                                        *
001810*----------------------------------------------------------------*
001820     MOVE  SPACE                      TO  ＷＯＲＫ−エリア.       
001830     INITIALIZE                           ＷＯＲＫ−エリア.       
001840*                                                                 
001850*--< ＣＰＵ日付を取得 >                                           
001860     ACCEPT  Ｗ−年月日               FROM  DATE.                 
001870*                                                                 
001880*--< ＣＰＵ時刻を取得 >                                           
001890     ACCEPT  Ｗ−システム時刻         FROM  TIME.                 
001900*----------------------------------------------------------------*
001910*    ＯＲＡＣＬＥ接続                                            *
001920*----------------------------------------------------------------*
001930     PERFORM   ＯＲＡＣＬＥ接続.                                  
001940*----------------------------------------------------------------*
001950*    業務管理テーブル読込                                        *
001960*----------------------------------------------------------------*
001970     PERFORM    業務管理テーブル読込.                             
001980*----------------------------------------------------------------*
001990*    結合テーブルカーソル定義                                    *
002000*----------------------------------------------------------------*
002010     PERFORM  結合テーブルカーソル定義.                           
002020*----------------------------------------------------------------*
002030*    ファイルオープン                                            *
002040*----------------------------------------------------------------*
002050     PERFORM  ファイルオープン.                                   
002060*----------------------------------------------------------------*
002070*    結合テーブルカーソル読込                                    *
002080*----------------------------------------------------------------*
002090     PERFORM 結合テーブルカーソル読込.                            
002100*                                                                 
002110 初期処理−ＥＸＩＴ.                                              
002120     EXIT.                                                        
002130******************************************************************
002140*    ＯＲＡＣＬＥ接続                                            *
002150******************************************************************
002160 ＯＲＡＣＬＥ接続                     SECTION.                    
002170 ＯＲＡＣＬＥ接続−ＳＴＡＲＴ.                                    
002180*                                                                 
002190*--< ＤＢ接続用情報を取得処理 >                                   
002200     CALL  COBCO001                USING  PARA-AREA.              
002210*                                                                 
002220     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002230     MOVE  PARA-USERNAME              TO  USERNAME.               
002240     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002250*                                                                 
002260*----------------------------------------------------------------*
002270*    開始接続                                                    *
002280*----------------------------------------------------------------*
002290     IF    DB-STRING  =  SPACE                                    
002300        
      *       EXEC SQL                                                  
002310*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002320*       END-EXEC 
              CALL "ORASQL8"
              MOVE 10 TO SQL-ITERS
              MOVE 5 TO SQL-OFFSET
              MOVE 0 TO SQL-OCCURS
              CALL "SQLADR" USING
                  SQLCUD
                  SQL-CUD
              CALL "SQLADR" USING
                  SQLCA
                  SQL-SQLEST
              MOVE 256 TO SQL-SQLETY
              CALL "SQLADR" USING
                  USERNAME
                  SQL-SQHSTV(1)
              MOVE 10 TO SQL-SQHSTL(1)
              MOVE 0 TO SQL-SQHSTS(1)
              MOVE 0 TO SQL-SQINDV(1)
              MOVE 0 TO SQL-SQINDS(1)
              MOVE 0 TO SQL-SQHARM(1)
              CALL "SQLADR" USING
                  PASSWD
                  SQL-SQHSTV(2)
              MOVE 10 TO SQL-SQHSTL(2)
              MOVE 0 TO SQL-SQHSTS(2)
              MOVE 0 TO SQL-SQINDV(2)
              MOVE 0 TO SQL-SQINDS(2)
              MOVE 0 TO SQL-SQHARM(2)
              CALL "SQLADR" USING
                  SQL-SQHSTV(1)
                  SQL-SQPHSV
              CALL "SQLADR" USING
                  SQL-SQHSTL(1)
                  SQL-SQPHSL
              CALL "SQLADR" USING
                  SQL-SQHSTS(1)
                  SQL-SQPHSS
              CALL "SQLADR" USING
                  SQL-SQINDV(1)
                  SQL-SQPIND
              CALL "SQLADR" USING
                  SQL-SQINDS(1)
                  SQL-SQPINS
              CALL "SQLADR" USING
                  SQL-SQHARM(1)
                  SQL-SQPARM
              CALL "SQLADR" USING
                  SQL-SQHARC(1)
                  SQL-SQPARC

              CALL "SQLBEX" USING
                  SQLCTX
                  SQLEXD
                  SQLFPN

              CALL "SQLGSS" USING
                 SQLSTATE
002330     ELSE                                                         
002340        
      *       EXEC SQL                                                  
002350*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002360*            USING  :DB-STRING                                    
002370*       END-EXEC 
              CALL "ORASQL8"
              MOVE 10 TO SQL-ITERS
              MOVE 36 TO SQL-OFFSET
              MOVE 0 TO SQL-OCCURS
              CALL "SQLADR" USING
                  SQLCUD
                  SQL-CUD
              CALL "SQLADR" USING
                  SQLCA
                  SQL-SQLEST
              MOVE 256 TO SQL-SQLETY
              CALL "SQLADR" USING
                  USERNAME
                  SQL-SQHSTV(1)
              MOVE 10 TO SQL-SQHSTL(1)
              MOVE 0 TO SQL-SQHSTS(1)
              MOVE 0 TO SQL-SQINDV(1)
              MOVE 0 TO SQL-SQINDS(1)
              MOVE 0 TO SQL-SQHARM(1)
              CALL "SQLADR" USING
                  PASSWD
                  SQL-SQHSTV(2)
              MOVE 10 TO SQL-SQHSTL(2)
              MOVE 0 TO SQL-SQHSTS(2)
              MOVE 0 TO SQL-SQINDV(2)
              MOVE 0 TO SQL-SQINDS(2)
              MOVE 0 TO SQL-SQHARM(2)
              CALL "SQLADR" USING
                  DB-STRING
                  SQL-SQHSTV(3)
              MOVE 20 TO SQL-SQHSTL(3)
              MOVE 0 TO SQL-SQHSTS(3)
              MOVE 0 TO SQL-SQINDV(3)
              MOVE 0 TO SQL-SQINDS(3)
              MOVE 0 TO SQL-SQHARM(3)
              CALL "SQLADR" USING
                  SQL-SQHSTV(1)
                  SQL-SQPHSV
              CALL "SQLADR" USING
                  SQL-SQHSTL(1)
                  SQL-SQPHSL
              CALL "SQLADR" USING
                  SQL-SQHSTS(1)
                  SQL-SQPHSS
              CALL "SQLADR" USING
                  SQL-SQINDV(1)
                  SQL-SQPIND
              CALL "SQLADR" USING
                  SQL-SQINDS(1)
                  SQL-SQPINS
              CALL "SQLADR" USING
                  SQL-SQHARM(1)
                  SQL-SQPARM
              CALL "SQLADR" USING
                  SQL-SQHARC(1)
                  SQL-SQPARC

              CALL "SQLBEX" USING
                  SQLCTX
                  SQLEXD
                  SQLFPN

              CALL "SQLGSS" USING
                 SQLSTATE
002380     END-IF.                                                      
002390*                                                                 
002400*----------------------------------------------------------------*
002410*    接続確認                                                    *
002420*----------------------------------------------------------------*
002430     EVALUATE  SQLCODE                                            
002440        WHEN   定数−ＳＱＬＯＫ                                   
002450           CONTINUE                                               
002460        WHEN   OTHER                                              
002470*--<       接続エラー >                                           
002480           MOVE     -1                TO  Ｗ−エラーコード        
002490           PERFORM  エラー処理                                    
002500     END-EVALUATE.                                                
002510*                                                                 
002520 ＯＲＡＣＬＥ接続−ＥＸＩＴ.                                      
002530     EXIT.                                                        
002540******************************************************************
002550*    業務管理テーブル読込                                        *
002560******************************************************************
002570 業務管理テーブル読込                 SECTION.                    
002580 業務管理テーブル読込−ＳＴＡＲＴ.                                
002590*                                                                 
002600*----------------------------------------------------------------*
002610*    業務管理テーブル読込                                        *
002620*----------------------------------------------------------------*
002630     
      *    EXEC SQL                                                     
002640*       SELECT  バッチ用業務年月                                  
002650*         INTO :Ｄ７０−バッチ用業務年月                          
002660*         FROM  D70GYM_TBL                                        
002670*        WHERE  業務管理ＩＤ = 'GYMKNRRC'                         
002680*    END-EXEC.
           CALL "SQLADR" USING SQ0001 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 67 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               Ｄ７０−バッチ用業務年月
               SQL-SQHSTV(1)
           MOVE 6 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
002690*----------------------------------------------------------------*
002700*    業務管理テーブル検索を確認                                  *
002710*----------------------------------------------------------------*
002720     EVALUATE   SQLCODE                                           
002730        WHEN   定数−ＳＱＬＯＫ                                   
002740*--<       正常の時 >                                             
002750           CONTINUE                                               
002760        WHEN   OTHER                                              
002770*--<       存在しない >                                           
002780           MOVE     -2                TO  Ｗ−エラーコード        
002790           MOVE     "Y"               TO  Ｗ−異常終了−フラグ    
002800           PERFORM  エラー処理                                    
002810     END-EVALUATE.                                                
002820*                                                                 
002830 業務管理テーブル読込−ＥＸＩＴ.                                  
002840     EXIT.                                                        
002850******************************************************************
002860*        結合テーブルカーソル定義                                *
002870******************************************************************
002880 結合テーブルカーソル定義             SECTION.                    
002890 結合テーブルカーソル定義−ＳＴＡＲＴ.                            
002900*                                                                 
002910*----------------------------------------------------------------*
002920*    カーソル定義処理                                            *
002930*----------------------------------------------------------------*
002940     
      *    EXEC SQL                                                     
002950*       DECLARE CUR1  CURSOR FOR                                  
002960*          SELECT  M40MAB_TBL.レコード区分                        
002970*                 ,M40MAB_TBL.経理用主契約区分                    
002980*                 ,M40MAB_TBL.顧客区分                            
002990*                 ,NVL(D01TRS_TBL.名寄せコード,' ')               
003000*                 ,M40MAB_TBL.請求先取引先コード                  
003010*                 ,M40MAB_TBL.請求先コード                        
003020*                 ,M40MAB_TBL.契約番号                            
003030*                 ,M40MAB_TBL.契約種類                            
003040*                 ,M40MAB_TBL.担当部課コード                      
003050*                 ,M40MAB_TBL.再リース回数                        
003060*                 ,M40MAB_TBL.充当開始年月                        
003070*                 ,M40MAB_TBL.充当月数                            
003080*                 ,M40MAB_TBL.前払回収方法                        
003090*                 ,M40MAB_TBL.入金日                              
003100*                 ,M40MAB_TBL.入金区分                            
003110*                 ,D01TRS_TBL.取引先名称                          
003120*                 ,D02SQS_TBL.請求先名称                          
003130*                 ,M40MAB_TBL.前月末残高                          
003140*                 ,M40MAB_TBL.当月回収額                          
003150*                 ,M40MAB_TBL.当月消化額                          
003160*                 ,M40MAB_TBL.当月末残高                          
003170*                 ,M40MAB_TBL.協調区分                            
003180*                 ,M40MAB_TBL.前月末残高他社                      
003190*                 ,M40MAB_TBL.当月回収額他社                      
003200*                 ,M40MAB_TBL.当月消化額他社                      
003210*                 ,M40MAB_TBL.当月他社解約分料金                  
003220*                 ,M40MAB_TBL.当月他社解約分消費税                
003230*                 ,M40MAB_TBL.当月末残高他社                      
003240*            FROM  M40MAB_TBL                                     
003250*                 ,D01TRS_TBL                                     
003260*                 ,D02SQS_TBL                                     
003270*           WHERE  M40MAB_TBL.前受金受払残高表対象フラグ  =  '1'  
003280*             AND  M40MAB_TBL.請求先取引先コード =                
003290*                                   D01TRS_TBL.取引先コード ( + ) 
003300*             AND  M40MAB_TBL.請求先取引先コード =                
003310*                                   D02SQS_TBL.取引先コード ( + ) 
003320*             AND  M40MAB_TBL.請求先コード =                      
003330*                                   D02SQS_TBL.請求先コード ( + ) 
003340*        ORDER BY  M40MAB_TBL.レコード区分                        
003350*                 ,M40MAB_TBL.契約番号                            
003360*    END-EXEC.
003370*                                                                 
003380*----------------------------------------------------------------*
003390*    カーソルＯＰＥＮ処理                                        *
003400*----------------------------------------------------------------*
003410     
      *    EXEC  SQL                                                    
003420*       OPEN  CUR1                                                
003430*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 86 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
003440*                                                                 
003450*----------------------------------------------------------------*
003460*    カーソルＯＰＥＮ確認                                        *
003470*----------------------------------------------------------------*
003480     EVALUATE  SQLCODE                                            
003490        WHEN  定数−ＳＱＬＯＫ                                    
003500*--<       正常 >                                                 
003510           CONTINUE                                               
003520        WHEN  OTHER                                               
003530*--<       カーソルＯＰＥＮエラー >                               
003540           MOVE -3                    TO  Ｗ−エラーコード        
003550           PERFORM  エラー処理                                    
003560     END-EVALUATE.                                                
003570*                                                                 
003580 結合テーブルカーソル定義−ＥＸＩＴ.                              
003590     EXIT.                                                        
003600******************************************************************
003610*    ファイルオープン                                            *
003620******************************************************************
003630 ファイルオープン                     SECTION.                    
003640 ファイルオープン−ＳＴＡＲＴ.                                    
003650*                                                                 
003660*----------------------------------------------------------------*
003670*    前受金受払残高中間ファイルのオープン                        *
003680*----------------------------------------------------------------*
003690     OPEN  OUTPUT   出力ファイル.                                 
003700*                                                                 
003710*--< ファイルオープンの状態判定 >                                 
003720     EVALUATE  Ｗ−状態                                           
003730        WHEN  ZERO                                                
003740           CONTINUE                                               
003750        WHEN  OTHER                                               
003760*--<       ファイルオープンエラー >                               
003770           MOVE     -4                TO  Ｗ−エラーコード        
003780           PERFORM  エラー処理                                    
003790     END-EVALUATE.                                                
003800*                                                                 
003810 ファイルオープン−ＥＸＩＴ.                                      
003820     EXIT.                                                        
003830******************************************************************
003840*    結合テーブルカーソル読込                                    *
003850******************************************************************
003860 結合テーブルカーソル読込             SECTION.                    
003870 結合テーブルカーソル読込−ＳＴＡＲＴ.                            
003880*                                                                 
003890*--< 結合テーブルカーソル読込 >                                   
003900     
      *    EXEC SQL                                                     
003910*        FETCH   CUR1                                             
003920*         INTO   :Ｍ４０−レコード区分                            
003930*               ,:Ｍ４０−経理用主契約区分                        
003940*               ,:Ｍ４０−顧客区分                                
003950*               ,:Ｄ０１−名寄せコード                            
003960*               ,:Ｍ４０−請求先取引先コード                      
003970*               ,:Ｍ４０−請求先コード                            
003980*               ,:Ｍ４０−契約番号                                
003990*               ,:Ｍ４０−契約種類                                
004000*               ,:Ｍ４０−担当部課コード                          
004010*               ,:Ｍ４０−再リース回数                            
004020*               ,:Ｍ４０−充当開始年月                            
004030*               ,:Ｍ４０−充当月数                                
004040*               ,:Ｍ４０−前払回収方法                            
004050*               ,:Ｍ４０−入金日                                  
004060*               ,:Ｍ４０−入金区分                                
004070*               ,:Ｄ０１−取引先名称                              
004080*               ,:Ｄ０２−請求先名称                              
004090*               ,:Ｍ４０−前月末残高                              
004100*               ,:Ｍ４０−当月回収額                              
004110*               ,:Ｍ４０−当月消化額                              
004120*               ,:Ｍ４０−当月末残高                              
004130*               ,:Ｍ４０−協調区分                                
004140*               ,:Ｍ４０−前月末残高他社                          
004150*               ,:Ｍ４０−当月回収額他社                          
004160*               ,:Ｍ４０−当月消化額他社                          
004170*               ,:Ｍ４０−当月他社解約分料金                      
004180*               ,:Ｍ４０−当月他社解約分消費税                    
004190*               ,:Ｍ４０−当月末残高他社                          
004200*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 101 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               Ｍ４０−レコード区分
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               Ｍ４０−経理用主契約区分
               SQL-SQHSTV(2)
           MOVE 1 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               Ｍ４０−顧客区分
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               Ｄ０１−名寄せコード IN
               取引先マスタ
               SQL-SQHSTV(4)
           MOVE 40 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               Ｍ４０−請求先取引先コード
               SQL-SQHSTV(5)
           MOVE 9 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               Ｍ４０−請求先コード
               SQL-SQHSTV(6)
           MOVE 5 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               Ｍ４０−契約番号
               SQL-SQHSTV(7)
           MOVE 15 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               Ｍ４０−契約種類
               SQL-SQHSTV(8)
           MOVE 3 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               Ｍ４０−担当部課コード
               SQL-SQHSTV(9)
           MOVE 4 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               Ｍ４０−再リース回数
               SQL-SQHSTV(10)
           MOVE 2 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               Ｍ４０−充当開始年月
               SQL-SQHSTV(11)
           MOVE 6 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               Ｍ４０−充当月数
               SQL-SQHSTV(12)
           MOVE 2 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               Ｍ４０−前払回収方法
               SQL-SQHSTV(13)
           MOVE 1 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               Ｍ４０−入金日
               SQL-SQHSTV(14)
           MOVE 8 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               Ｍ４０−入金区分
               SQL-SQHSTV(15)
           MOVE 2 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               Ｄ０１−取引先名称 IN
               取引先マスタ
               SQL-SQHSTV(16)
           MOVE 80 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               Ｄ０２−請求先名称 IN
               請求先マスタ
               SQL-SQHSTV(17)
           MOVE 80 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               Ｍ４０−前月末残高
               SQL-SQHSTV(18)
           MOVE 7 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               Ｍ４０−当月回収額
               SQL-SQHSTV(19)
           MOVE 7 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
           CALL "SQLADR" USING
               Ｍ４０−当月消化額
               SQL-SQHSTV(20)
           MOVE 7 TO SQL-SQHSTL(20)
           MOVE 0 TO SQL-SQHSTS(20)
           MOVE 0 TO SQL-SQINDV(20)
           MOVE 0 TO SQL-SQINDS(20)
           MOVE 0 TO SQL-SQHARM(20)
           CALL "SQLADR" USING
               Ｍ４０−当月末残高
               SQL-SQHSTV(21)
           MOVE 7 TO SQL-SQHSTL(21)
           MOVE 0 TO SQL-SQHSTS(21)
           MOVE 0 TO SQL-SQINDV(21)
           MOVE 0 TO SQL-SQINDS(21)
           MOVE 0 TO SQL-SQHARM(21)
           CALL "SQLADR" USING
               Ｍ４０−協調区分
               SQL-SQHSTV(22)
           MOVE 1 TO SQL-SQHSTL(22)
           MOVE 0 TO SQL-SQHSTS(22)
           MOVE 0 TO SQL-SQINDV(22)
           MOVE 0 TO SQL-SQINDS(22)
           MOVE 0 TO SQL-SQHARM(22)
           CALL "SQLADR" USING
               Ｍ４０−前月末残高他社
               SQL-SQHSTV(23)
           MOVE 7 TO SQL-SQHSTL(23)
           MOVE 0 TO SQL-SQHSTS(23)
           MOVE 0 TO SQL-SQINDV(23)
           MOVE 0 TO SQL-SQINDS(23)
           MOVE 0 TO SQL-SQHARM(23)
           CALL "SQLADR" USING
               Ｍ４０−当月回収額他社
               SQL-SQHSTV(24)
           MOVE 7 TO SQL-SQHSTL(24)
           MOVE 0 TO SQL-SQHSTS(24)
           MOVE 0 TO SQL-SQINDV(24)
           MOVE 0 TO SQL-SQINDS(24)
           MOVE 0 TO SQL-SQHARM(24)
           CALL "SQLADR" USING
               Ｍ４０−当月消化額他社
               SQL-SQHSTV(25)
           MOVE 7 TO SQL-SQHSTL(25)
           MOVE 0 TO SQL-SQHSTS(25)
           MOVE 0 TO SQL-SQINDV(25)
           MOVE 0 TO SQL-SQINDS(25)
           MOVE 0 TO SQL-SQHARM(25)
           CALL "SQLADR" USING
               Ｍ４０−当月他社解約分料金
               SQL-SQHSTV(26)
           MOVE 7 TO SQL-SQHSTL(26)
           MOVE 0 TO SQL-SQHSTS(26)
           MOVE 0 TO SQL-SQINDV(26)
           MOVE 0 TO SQL-SQINDS(26)
           MOVE 0 TO SQL-SQHARM(26)
           CALL "SQLADR" USING
               Ｍ４０−当月他社解約分消費税
               SQL-SQHSTV(27)
           MOVE 7 TO SQL-SQHSTL(27)
           MOVE 0 TO SQL-SQHSTS(27)
           MOVE 0 TO SQL-SQINDV(27)
           MOVE 0 TO SQL-SQINDS(27)
           MOVE 0 TO SQL-SQHARM(27)
           CALL "SQLADR" USING
               Ｍ４０−当月末残高他社
               SQL-SQHSTV(28)
           MOVE 7 TO SQL-SQHSTL(28)
           MOVE 0 TO SQL-SQHSTS(28)
           MOVE 0 TO SQL-SQINDV(28)
           MOVE 0 TO SQL-SQINDS(28)
           MOVE 0 TO SQL-SQHARM(28)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
004210*                                                                 
004220*----------------------------------------------------------------*
004230*    結合テーブルカーソル読込を確認                              *
004240*----------------------------------------------------------------*
004250     EVALUATE   SQLCODE                                           
004260        WHEN   定数−ＳＱＬＯＫ                                   
004270*--<       正常 >                                                 
004280           COMPUTE  Ｗ−入力−件数  =  Ｗ−入力−件数  +  1       
004290        WHEN   定数−ＳＱＬＥＮＤ                                 
004300*--<       読込終了 >                                             
004310           MOVE  "Y"                  TO  Ｗ−終了−フラグ        
004320        WHEN   OTHER                                              
004330*--<       読込エラー >                                           
004340           MOVE     -5                TO  Ｗ−エラーコード        
004350           PERFORM  エラー処理                                    
004360     END-EVALUATE.                                                
004370*                                                                 
004380 結合テーブルカーソル読込−ＥＸＩＴ.                              
004390     EXIT.                                                        
004400******************************************************************
004410*    主処理                                                      *
004420******************************************************************
004430 主処理                               SECTION.                    
004440 主処理−ＳＴＡＲＴ.                                              
004450*----------------------------------------------------------------*
004460*    項目名称マスタより項目の抽出処理                            *
004470*----------------------------------------------------------------*
004480     PERFORM  項目名称マスタ抽出処理.                             
004490*----------------------------------------------------------------*
004500*    債権情報（一般）ＤＢより項目の抽出処理                      *
004510*----------------------------------------------------------------*
004520     PERFORM  債権情報ＤＢ抽出処理.                               
004530*----------------------------------------------------------------*
004540*    前受金受払残高中間ファイル出力判定処理                      *
004550*----------------------------------------------------------------*
004560     IF  Ｍ０１−担保区分  NOT = "1"                              
004570*--<     前受金受払残高中間ファイル項目編集、出力処理>            
004580        PERFORM  前受金受払残高中間ファイル編集出力               
004590     END-IF.                                                      
004600*----------------------------------------------------------------*
004610*    結合テーブルカーソル読込（２件目以降）                      *
004620*----------------------------------------------------------------*
004630     PERFORM  結合テーブルカーソル読込.                           
004640*                                                                 
004650 主処理−ＥＸＩＴ.                                                
004660     EXIT.                                                        
004670******************************************************************
004680*    項目名称マスタより項目の抽出処理                            *
004690******************************************************************
004700 項目名称マスタ抽出処理               SECTION.                    
004710 項目名称マスタ抽出処理−ＳＴＡＲＴ.                              
004720*                                                                 
004730*項目名称マスタより主契約区分名称の抽出処理                       
004740*----------------------------------------------------------------*
004750*    項目名称マスタ読込                                          *
004760*----------------------------------------------------------------*
004770     
      *    EXEC SQL                                                     
004780*       SELECT  名称                                              
004790*         INTO :ＷＳ−名称１                                      
004800*         FROM  D19MSY_TBL                                        
004810*        WHERE  コードＮＯ = '038'                                
004820*          AND  SUBSTR(コード,1,1) = :Ｍ４０−経理用主契約区分    
004830*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 228 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               ＷＳ−名称１
               SQL-SQHSTV(1)
           MOVE 60 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               Ｍ４０−経理用主契約区分
               SQL-SQHSTV(2)
           MOVE 1 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
004840*----------------------------------------------------------------*
004850*    項目名称マスタ検索を確認                                    *
004860*----------------------------------------------------------------*
004870     EVALUATE   SQLCODE                                           
004880        WHEN   定数−ＳＱＬＯＫ                                   
004890*--<       正常の時 >                                             
004900           CONTINUE                                               
004910        WHEN   OTHER                                              
004920*--<       存在しない >                                           
004930           MOVE     SPACE             TO  ＷＳ−名称１            
004940           MOVE     -6                TO  Ｗ−エラーコード        
004950           PERFORM  エラー処理                                    
004960     END-EVALUATE.                                                
004970*                                                                 
004980*項目名称マスタより顧客区分名称の抽出処理                         
004990*----------------------------------------------------------------*
005000*    項目名称マスタ読込                                          *
005010*----------------------------------------------------------------*
005020     
      *    EXEC SQL                                                     
005030*       SELECT  名称                                              
005040*         INTO :ＷＳ−名称２                                      
005050*         FROM  D19MSY_TBL                                        
005060*        WHERE  コードＮＯ = '005'                                
005070*          AND  SUBSTR(コード,1,2) = :Ｍ４０−顧客区分            
005080*    END-EXEC.
           CALL "SQLADR" USING SQ0004 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 251 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               ＷＳ−名称２
               SQL-SQHSTV(1)
           MOVE 60 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               Ｍ４０−顧客区分
               SQL-SQHSTV(2)
           MOVE 2 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
005090*----------------------------------------------------------------*
005100*    項目名称マスタ検索を確認                                    *
005110*----------------------------------------------------------------*
005120     EVALUATE   SQLCODE                                           
005130        WHEN   定数−ＳＱＬＯＫ                                   
005140*--<       正常の時 >                                             
005150           CONTINUE                                               
005160        WHEN   OTHER                                              
005170*--<       存在しない >                                           
005180           MOVE     SPACE             TO  ＷＳ−名称２            
005190           MOVE     -6                TO  Ｗ−エラーコード        
005200           PERFORM  エラー処理                                    
005210     END-EVALUATE.                                                
005220*                                                                 
005230 項目名称マスタ抽出処理−ＥＸＩＴ.                                
005240     EXIT.                                                        
005250******************************************************************
005260*    債権情報（一般）ＤＢより項目の抽出処理                      *
005270******************************************************************
005280 債権情報ＤＢ抽出処理                 SECTION.                    
005290 債権情報ＤＢ抽出処理−ＳＴＡＲＴ.                                
005300*                                                                 
005310*----------------------------------------------------------------*
005320*    債権情報ＤＢ読込                                            *
005330*----------------------------------------------------------------*
005340     
      *    EXEC SQL                                                     
005350*       SELECT  状態フラグ                                        
005360*              ,債権契約件名                                      
005370*              ,担保区分                                          
005380*         INTO :Ｍ０１−状態フラグ                                
005390*             ,:Ｍ０１−債権契約件名                              
005400*             ,:Ｍ０１−担保区分                                  
005410*         FROM  M01SAJ_TBL                                        
005420*        WHERE  レコード区分 = '1'                                
005430*          AND  契約番号 = :Ｍ４０−契約番号                      
005440*          AND  再リース回数 = :Ｍ４０−再リース回数              
005450*          AND  契約種類 = :Ｍ４０−契約種類                      
005460*    END-EXEC.
           CALL "SQLADR" USING SQ0005 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 274 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               Ｍ０１−状態フラグ
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               Ｍ０１−債権契約件名
               SQL-SQHSTV(2)
           MOVE 40 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               Ｍ０１−担保区分
               SQL-SQHSTV(3)
           MOVE 1 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               Ｍ４０−契約番号
               SQL-SQHSTV(4)
           MOVE 15 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               Ｍ４０−再リース回数
               SQL-SQHSTV(5)
           MOVE 2 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               Ｍ４０−契約種類
               SQL-SQHSTV(6)
           MOVE 3 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
005470*----------------------------------------------------------------*
005480*    債権情報ＤＢ検索を確認                                      *
005490*----------------------------------------------------------------*
005500     EVALUATE   SQLCODE                                           
005510        WHEN   定数−ＳＱＬＯＫ                                   
005520*--<       正常の時 >                                             
005530           CONTINUE                                               
005540        WHEN   OTHER                                              
005550*--<       存在しない >                                           
005560           MOVE     SPACE             TO  Ｍ０１−状態フラグ      
005570           MOVE     SPACE             TO  Ｍ０１−債権契約件名    
005580           MOVE     "0"               TO  Ｍ０１−担保区分        
005590           MOVE     -7                TO  Ｗ−エラーコード        
005600           PERFORM  エラー処理                                    
005610     END-EVALUATE.                                                
005620*                                                                 
005630 債権情報ＤＢ抽出処理−ＥＸＩＴ.                                  
005640     EXIT.                                                        
005650******************************************************************
005660*    前受金受払残高中間ファイル項目編集、出力処理                *
005670******************************************************************
005680 前受金受払残高中間ファイル編集出力   SECTION.                    
005690 前受金受払残高中間ファイル編集出力−ＳＴＡＲＴ.                  
005700*                                                                 
005710*--< 出力レコードの初期化処理 >                                   
005720     MOVE  SPACE                      TO  出力−レコード.         
005730     INITIALIZE                           出力−レコード.         
005740*--< 自社分個別の編集 >                                           
005750     PERFORM  自社分編集.                                         
005760*--< 自社分出力判定 >                                             
005770     IF      出力−前月末残高  NOT  =  0                          
005780         OR  出力−当月入金額  NOT  =  0                          
005790         OR  出力−当月消化額  NOT  =  0                          
005800         OR  出力−当月末残高  NOT  =  0                          
005810         PERFORM  前受金受払残高中間ファイル出力処理.             
005820*--< 他社分個別の編集 >                                           
005830     IF  Ｍ４０−協調区分 = "2"                                   
005840        PERFORM  他社分編集出力.                                  
005850*                                                                 
005860 前受金受払残高中間ファイル編集出力−ＥＸＩＴ.                    
005870     EXIT.                                                        
005880******************************************************************
005890*    自社分編集                                                  *
005900******************************************************************
005910 自社分編集                             SECTION.                  
005920 自社分編集−ＳＴＡＲＴ.                                          
005930*                                                                 
005940*--< No.1 >                                                       
005950     IF  Ｍ０１−状態フラグ < 3                                   
005960        MOVE  3                       TO  出力−自他社区分        
005970     ELSE                                                         
005980        MOVE  1                       TO  出力−自他社区分        
005990     END-IF.                                                      
006000*--< No.2 >                                                       
006010     MOVE  Ｍ４０−レコード区分       TO  出力−前受区分.         
006020*--< No.3 >                                                       
006030     MOVE  Ｍ４０−経理用主契約区分   TO  出力−主契約区分.       
006040*--< No.4 >                                                       
006050     MOVE  Ｍ４０−顧客区分           TO  出力−連結区分.         
006060*--< No.5 >                                                       
006070     MOVE  Ｄ０１−名寄せコード       TO  出力−名寄せコード.     
006080*--< No.6 >                                                       
006090     MOVE  Ｍ４０−請求先取引先コード TO  出力−取引先コード.     
006100*--< No.7 >                                                       
006110     MOVE  Ｍ４０−請求先コード       TO  出力−請求先コード.     
006120*--< No.8 >                                                       
006130     MOVE  Ｍ４０−契約番号           TO  出力−契約番号.         
006140*--< No.9 >                                                       
006150     MOVE  Ｍ４０−契約種類           TO  出力−契約種類.         
006160*--< No.10 >                                                      
006170     MOVE  Ｄ７０−バッチ用業務年月   TO  出力−業務年月.         
006180*--< No.11 >                                                      
006190     MOVE  Ｍ４０−担当部課コード     TO  出力−担当部課コード.   
006200*--< No.12 >                                                      
006210     MOVE  Ｍ０１−債権契約件名       TO  出力−契約件名.         
006220*--< No.13 >                                                      
006230     MOVE  Ｍ４０−再リース回数       TO  出力−再リース回数.     
006240*--< No.14 >                                                      
006250     MOVE  Ｍ４０−充当開始年月       TO  出力−充当開始年月.     
006260*--< No.15 >                                                      
006270     MOVE  Ｍ４０−充当月数           TO  出力−充当月数.         
006280*--< No.16 >                                                      
006290     MOVE  Ｍ４０−前払回収方法       TO  出力−前払回収方法.     
006300*--< No.17 >                                                      
006310     MOVE  Ｍ４０−入金日             TO  出力−入金日.           
006320*--< No.18 >                                                      
006330     MOVE  Ｍ４０−入金区分           TO  出力−入金区分.         
006340*--< No.19 >                                                      
006350     MOVE  Ｄ０１−取引先名称         TO  出力−取引先名称.       
006360*--< No.20 >                                                      
006370     MOVE  Ｄ０２−請求先名称         TO  出力−請求先名称.       
006380*--< No.21 >                                                      
006390     MOVE  ＷＳ−名称１               TO  出力−主契約区分名称.   
006400*--< No.22 >                                                      
006410     MOVE  ＷＳ−名称２               TO  出力−連結区分名称.     
006420*--< No.23 >                                                      
006430     MOVE  Ｍ４０−前月末残高         TO  出力−前月末残高.       
006440*--< No.24 >                                                      
006450     MOVE  Ｍ４０−当月回収額         TO  出力−当月入金額.       
006460*--< No.25 >                                                      
006470     MOVE  Ｍ４０−当月消化額         TO  出力−当月消化額.       
006480*--< No.26 >                                                      
006490     MOVE  Ｍ４０−当月末残高         TO  出力−当月末残高.       
006500*                                                                 
006510 自社分編集−ＥＸＩＴ.                                            
006520     EXIT.                                                        
006530******************************************************************
006540*    他社分個別部分の編集出力                                    *
006550******************************************************************
006560 他社分編集出力                       SECTION.                    
006570 他社分編集出力−ＳＴＡＲＴ.                                      
006580*                                                                 
006590*--< 他社分編集 >                                                 
006600*--< No.1 >                                                       
006610     IF  Ｍ０１−状態フラグ < 3                                   
006620        MOVE  4                       TO  出力−自他社区分        
006630     ELSE                                                         
006640        MOVE  2                       TO  出力−自他社区分        
006650     END-IF.                                                      
006660*--< No.23 >                                                      
006670     MOVE  Ｍ４０−前月末残高他社     TO  出力−前月末残高.       
006680*--< No.24 >                                                      
006690     MOVE  Ｍ４０−当月回収額他社     TO  出力−当月入金額.       
006700*--< No.25 >                                                      
006710     COMPUTE  出力−当月消化額  =  Ｍ４０−当月消化額他社         
006720                                +  Ｍ４０−当月他社解約分料金     
006730                                +  Ｍ４０−当月他社解約分消費税.  
006740*--< No.26 >                                                      
006750     COMPUTE  出力−当月末残高  =  Ｍ４０−当月末残高他社         
006760                                -  Ｍ４０−当月他社解約分料金     
006770                                -  Ｍ４０−当月他社解約分消費税.  
006780*--< 他社分出力判定 >                                             
006790     IF      出力−前月末残高  NOT  =  0                          
006800         OR  出力−当月入金額  NOT  =  0                          
006810         OR  出力−当月消化額  NOT  =  0                          
006820         OR  出力−当月末残高  NOT  =  0                          
006830         PERFORM  前受金受払残高中間ファイル出力処理.             
006840*                                                                 
006850 他社分編集出力−ＥＸＩＴ.                                        
006860     EXIT.                                                        
006870******************************************************************
006880*    前受金受払残高中間ファイル出力処理                          *
006890******************************************************************
006900 前受金受払残高中間ファイル出力処理   SECTION.                    
006910 前受金受払残高中間ファイル出力処理−ＳＴＡＲＴ.                  
006920*                                                                 
006930     WRITE  出力−レコード.                                       
006940*                                                                 
006950*--< 前受金受払残高中間ファイル出力の状態判定 >                   
006960     EVALUATE  Ｗ−状態                                           
006970        WHEN  ZERO                                                
006980*--<       前受金受払残高中間ファイル出力件数の加算 >             
006990           COMPUTE  Ｗ−出力−件数 =  Ｗ−出力−件数 + 1          
007000        WHEN  OTHER                                               
007010*--<       ファイル出力エラー >                                   
007020           MOVE     -8                TO  Ｗ−エラーコード        
007030           PERFORM  エラー処理                                    
007040     END-EVALUATE.                                                
007050*                                                                 
007060 前受金受払残高中間ファイル出力処理−ＥＸＩＴ.                    
007070     EXIT.                                                        
007080******************************************************************
007090*    終了処理                                                    *
007100******************************************************************
007110 終了処理                             SECTION.                    
007120 終了処理−ＳＴＡＲＴ.                                            
007130*                                                                 
007140*----------------------------------------------------------------*
007150*    ＤＢクローズ                                                *
007160*----------------------------------------------------------------*
007170     
      *    EXEC SQL                                                     
007180*       CLOSE  CUR1                                               
007190*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 313 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
007200*----------------------------------------------------------------*
007210*    ファイルクローズ                                            *
007220*----------------------------------------------------------------*
007230     CLOSE  出力ファイル.                                         
007240*----------------------------------------------------------------*
007250*    件数メッセージ出力                                          *
007260*----------------------------------------------------------------*
007270     PERFORM  件数メッセージ出力処理.                             
007280*----------------------------------------------------------------*
007290*    終了メッセージ出力                                          *
007300*----------------------------------------------------------------*
007310     PERFORM  終了メッセージ出力.                                 
007320*--< プログラム正常終了 >                                         
007330     MOVE  定数−正常状態             TO  PROGRAM-STATUS.         
007340*                                                                 
007350 終了処理−ＥＸＩＴ.                                              
007360     EXIT.                                                        
007370******************************************************************
007380*    終了メッセージ出力処理                                      *
007390******************************************************************
007400 終了メッセージ出力                   SECTION.                    
007410 終了メッセージ出力−ＳＴＡＲＴ.                                  
007420*                                                                 
007430     INITIALIZE                       IF-CHOCO001.                
007440     MOVE  "3"                        TO  共１−イベント種別.     
007450     MOVE  定数−プログラムＩＤ       TO  共１−ソースＩＤ.       
007460     MOVE  "0"                        TO  共１−復帰コード.       
007470     MOVE  "END"                      TO  共１−処理識別.         
007480     MOVE  定数−プログラム名         TO  共１−その他メッセージ. 
007490     CALL  CLOCO001                USING  IF-CHOCO001.            
007500*                                                                 
007510 終了メッセージ出力−ＥＸＩＴ.                                    
007520     EXIT.                                                        
007530******************************************************************
007540*    件数メッセージ出力処理                                      *
007550******************************************************************
007560 件数メッセージ出力処理               SECTION.                    
007570 件数メッセージ出力処理−ＳＴＡＲＴ.                              
007580*                                                                 
007590     INITIALIZE                       IF-CHOCO001.                
007600     MOVE  "3"                        TO  共１−イベント種別.     
007610     MOVE  定数−プログラムＩＤ       TO  共１−ソースＩＤ.       
007620     MOVE  "0"                        TO  共１−復帰コード.       
007630     MOVE  "M40MAB"                   TO  共１−処理テーブルＩＤ. 
007640     MOVE  "COUNT"                    TO  共１−処理識別.         
007650     MOVE  Ｗ−入力−件数             TO  共１−データ内容.       
007660     MOVE  "前受情報ＤＢ入力件数"     TO  共１−その他メッセージ. 
007670     CALL  CLOCO001                USING  IF-CHOCO001.            
007680*                                                                 
007690     INITIALIZE                       IF-CHOCO001.                
007700     MOVE  "3"                        TO  共１−イベント種別.     
007710     MOVE  定数−プログラムＩＤ       TO  共１−ソースＩＤ.       
007720     MOVE  "0"                        TO  共１−復帰コード.       
007730     MOVE  "SFHSED25"                 TO  共１−処理テーブルＩＤ. 
007740     MOVE  "COUNT"                    TO  共１−処理識別.         
007750     MOVE  Ｗ−出力−件数             TO  共１−データ内容.       
007760     MOVE  "前受金受払残高中間ファイル出力件数"                   
007770                                      TO  共１−その他メッセージ. 
007780     CALL  CLOCO001                USING  IF-CHOCO001.            
007790*                                                                 
007800 件数メッセージ出力処理−ＥＸＩＴ.                                
007810     EXIT.                                                        
007820******************************************************************
007830*    エラー処理                                                  *
007840******************************************************************
007850 エラー処理                           SECTION.                    
007860 エラー処理−ＳＴＡＲＴ.                                          
007870*                                                                 
007880     MOVE  "Y"                        TO Ｗ−異常終了−フラグ.    
007890     INITIALIZE                           IF-CHOCO001.            
007900*                                                                 
007910     EVALUATE  Ｗ−エラーコード                                   
007920        WHEN  -1                                                  
007930*--<       ＯＲＡＣＬＥ接続失敗 >                                 
007940           MOVE  "1"                  TO  共１−イベント種別      
007950           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
007960           MOVE  "9"                  TO  共１−復帰コード        
007970           MOVE  "CONNECT"            TO  共１−処理識別          
007980           MOVE  SQLCODE              TO  共１−データ内容        
007990           MOVE  SQLERRMC             TO  共１−その他メッセージ  
008000           CALL  CLOCO001          USING  IF-CHOCO001             
008010*                                                                 
008020        WHEN  -2                                                  
008030*--<       業務管理テーブルオープンエラー >                       
008040           MOVE  "1"                  TO  共１−イベント種別      
008050           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
008060           MOVE  "9"                  TO  共１−復帰コード        
008070           MOVE  "D70GYM"             TO  共１−処理テーブルＩＤ  
008080           MOVE  "SELECT"             TO  共１−処理識別          
008090           MOVE  SQLCODE              TO  共１−データ内容        
008100           MOVE  SQLERRMC             TO  共１−その他メッセージ  
008110           CALL  CLOCO001          USING  IF-CHOCO001             
008120*                                                                 
008130        WHEN  -3                                                  
008140*--<       結合テーブルカーソルオープン失敗 >                     
008150           MOVE  "1"                  TO  共１−イベント種別      
008160           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
008170           MOVE  "9"                  TO  共１−復帰コード        
008180           MOVE  "M40MAB"             TO  共１−処理テーブルＩＤ  
008190           MOVE  "SELECT"             TO  共１−処理識別          
008200           MOVE  SQLCODE              TO  共１−データ内容        
008210           MOVE  SQLERRMC             TO  共１−その他メッセージ  
008220           CALL  CLOCO001          USING  IF-CHOCO001             
008230*                                                                 
008240        WHEN  -4                                                  
008250*--<       前受金受払残高中間ファイルオープンエラー >             
008260           MOVE  "1"                  TO  共１−イベント種別      
008270           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
008280           MOVE  "9"                  TO  共１−復帰コード        
008290           MOVE  "SFHSED25"           TO  共１−処理テーブルＩＤ  
008300           MOVE  "OPEN"               TO  共１−処理識別          
008310           MOVE  SQLCODE              TO  共１−データ内容        
008320           MOVE  "前受金受払残高中間ファイルオープンエラー"       
008330                                      TO  共１−その他メッセージ  
008340           CALL  CLOCO001          USING  IF-CHOCO001             
008350*                                                                 
008360        WHEN  -5                                                  
008370*--<       結合テーブル読込失敗 >                                 
008380           MOVE  "1"                  TO  共１−イベント種別      
008390           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
008400           MOVE  "9"                  TO  共１−復帰コード        
008410           MOVE  "M40MAB"             TO  共１−処理テーブルＩＤ  
008420           MOVE  "FETCH"              TO  共１−処理識別          
008430           MOVE  SQLCODE              TO  共１−データ内容        
008440           MOVE  SQLERRMC             TO  共１−その他メッセージ  
008450           CALL  CLOCO001          USING  IF-CHOCO001             
008460*                                                                 
008470        WHEN  -6                                                  
008480*--<       項目名称マスタオープンエラー >                         
008490           MOVE  "1"                  TO  共１−イベント種別      
008500           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
008510           MOVE  "9"                  TO  共１−復帰コード        
008520           MOVE  "D19MSY"             TO  共１−処理テーブルＩＤ  
008530           MOVE  "SELECT"             TO  共１−処理識別          
008540           MOVE  SQLCODE              TO  共１−データ内容        
008550           MOVE  SQLERRMC             TO  共１−その他メッセージ  
008560           CALL  CLOCO001          USING  IF-CHOCO001             
008570*                                                                 
008580        WHEN  -7                                                  
008590*--<       債権情報（一般）ＤＢオープンエラー >                   
008600           MOVE  "1"                  TO  共１−イベント種別      
008610           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
008620           MOVE  "9"                  TO  共１−復帰コード        
008630           MOVE  "M01SAJ"             TO  共１−処理テーブルＩＤ  
008640           MOVE  "SELECT"             TO  共１−処理識別          
008650           MOVE  SQLCODE              TO  共１−データ内容        
008660           MOVE  SQLERRMC             TO  共１−その他メッセージ  
008670           CALL  CLOCO001          USING  IF-CHOCO001             
008680*                                                                 
008690        WHEN  -8                                                  
008700*--<       前受金受払残高中間ファイル出力エラー >                 
008710           MOVE  "1"                  TO  共１−イベント種別      
008720           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
008730           MOVE  "9"                  TO  共１−復帰コード        
008740           MOVE  "SFHSED25"           TO  共１−処理テーブルＩＤ  
008750           MOVE  "WRITE"              TO  共１−処理識別          
008760           MOVE  Ｗ−状態             TO  共１−データ内容        
008770           MOVE  "前受金受払残高中間ファイル出力エラー "          
008780                                      TO  共１−その他メッセージ  
008790           CALL  CLOCO001          USING  IF-CHOCO001             
008800*                                                                 
008810        WHEN  OTHER                                               
008820           MOVE  "N"                  TO Ｗ−異常終了−フラグ     
008830     END-EVALUATE.                                                
008840*                                                                 
008850 エラー処理−ＥＸＩＴ.                                            
008860     EXIT.                                                        
008870******************************************************************
008880*                  END OF PROGRAM                                *
008890******************************************************************
