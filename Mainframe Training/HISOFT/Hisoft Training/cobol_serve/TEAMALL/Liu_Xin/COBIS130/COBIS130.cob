000010******************************************************************
000020*         ���m�m�m�m�m��                                         *
000030*      1. �v���O������    �F���Y�R�[�h�ϊ��}�X�^�ڍs����         *
000040*      2. �v���O����ID    �FCOBIS130                             *
000050*      3. �����T�v        �F��g��w��̃R�[�h����a�n�s�k���Y   *
000060*                           �R�[�h�̕ϊ��e�[�u��                 *
000070*                                                                *
000080*      4. �쐬��          �F�m�m                                 *
000090*      5. �쐬��          �FXXXX.XX.XX                           *
000100******************************************************************
000110*                                                                 
000120******************************************************************
000130*    �h�c�d�m�s�h�e�h�b�`�s�h�n�m  �c�h�u�h�r�h�n�m              *
000140******************************************************************
000150 IDENTIFICATION                       DIVISION.                   
000160*                                                                 
000170 PROGRAM-ID.                          COBIS130.                   
000180******************************************************************
000190*    �d�m�u�h�q�n�m�l�d�m�s        �c�h�u�h�r�h�n�m              *
000200******************************************************************
000210 ENVIRONMENT                          DIVISION.                   
000220******************************************************************
000230*    �h�m�o�t�s�|�n�t�s�o�t�s      �r�d�b�s�h�n�m                *
000240******************************************************************
000250 INPUT-OUTPUT                         SECTION.                    
000260 FILE-CONTROL.                                                    
000270*                                                                 
000280     SELECT         ���̓t�@�C��      ASSIGN    TO   U05          
000290     FILE STATUS    IS     �t�@�C�����                           
000300     ORGANIZATION   IS     LINE       SEQUENTIAL.                 
000310*                                                                 
000320******************************************************************
000330*    �c�`�s�`                      �c�h�u�h�r�h�n�m              *
000340******************************************************************
000350 DATA                                 DIVISION.                   
000360******************************************************************
000370*    �e�h�k�d                      �r�d�b�s�h�n�m                *
000380******************************************************************
000390 FILE                                 SECTION.                    
000400*----------------------------------------------------------------*
000410*    ���̓t�@�C��                                                *
000420*----------------------------------------------------------------*
000430 FD  ���̓t�@�C��                                                 
000440     LABEL  RECORD    IS              STANDARD                    
000450     BLOCK  CONTAINS  0               RECORDS.                    
000460*                                                                 
000470 01  ���́|���R�[�h.                                              
000480     COPY   CISPF001   REPLACING      ==()==  BY  ==���́|==.     
000490*                                                                 
000500******************************************************************
000510*  �v�n�q�j�h�m�f�|�r�s�n�q�`�f�d  �r�d�b�s�h�n�m                *
000520******************************************************************
000530 WORKING-STORAGE                      SECTION.                    
000540*----------------------------------------------------------------*
000550*    �z�X�g�ϐ���`�G���A                                        *
000560*----------------------------------------------------------------*
000570     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS130\CO
      -    "BIS130.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(77) VALUE "select �]���[�X��g��R�[�h   int
      -    "o :b1  from IKOTBL004 where �����R�[�h=:b2".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(160) VALUE "insert into D077SSH_TBL(�]���[�X
      -    "��g��R�[�h,������i�R�[�h,�K�p�N����,���Y�R�[�h,�����ی��R
      -    "�[�h,�M�p�ی��R�[�h�Q���[�X,�M�p�ی��R�[�h�Q����,�ŕ��S�敪,
      -    "���i����".

           02  FILLER PIC X(160) VALUE "��,����������,������,�@�햼,�o�^
      -    "�N����,�o�^����,�o�^�S����,�X�V�N����,�X�V����,�X�V��,���͒S
      -    "���҃R�[�h) values (:b1,:b2,:b3,:b4,:b5,:b6,:b7,:b8,:b9,:b10
      -    ",:b11,:b".

           02  FILLER PIC X(38) VALUE "12,:b13,:b14,:b15,:b16,:b17,:b18,
      -    ":b19)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +148558428.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +19.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 19 TIMES.


       01  SQ0001 GLOBAL.
           02  FILLER PIC X(160) VALUE "select �W�������i�R�[�h  ,�W����
      -     "���i���ޖ�  ,�������Q����  ,������  ,�@�햼  ,�ŋ敪  ,���Y
      -     "�R�[�h  ,�����ی��R�[�h  ,�M�p�ی��R�[�h�Q���[�X  ,�M�p�ی�
      -    "�R�[�h�Q��".

           02  FILLER PIC X(36) VALUE "��   from JOM_SYOHIN_MST         
      -    "   ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +349.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +353.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +196.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +402.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +82.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +427.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +137.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +77.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +577.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +160.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +358.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +605.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +19.
           02     FILLER PIC S9(4) COMP-5 VALUE +19.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +251.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +670.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +266.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +682.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +281.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +703.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000580*                                                                 
000590 01  �v�r�|�W�������i                 PIC  X(08) VALUE "K3401966".
000600*                                                                 
000610*--< �n�q�`�b�k�d���ʕϐ� >                                       
000620     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000630*                                                                 
000640*--< �W�������i�}�X�^ >                                           
000010*--���r�p�k���ʕϐ���
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000650     
      *    EXEC  SQL  INCLUDE  JOM_SYOHIN_MST.CBL    END-EXEC.
000660*                                                                 
000670*--< �]���[�X��g��R�[�h�ϊ��e�[�u�� >                           
000010************************************************
000020* (JOM_SYOHIN_MST)
000030************************************************
000040 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�W�������i�R�[�h PIC  X(004).
000050 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�W�������i���ޖ� PIC  X(030).
000060 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�������|���� PIC  X(040).
000070 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|������ PIC  X(020).
000080 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�@�햼 PIC  X(020).
000090 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|���Y�R�[�h PIC  X(007).
000100 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�ϗp�N�� PIC  X(002).
000110 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�ŋ敪 PIC  X(001).
000120 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�Œ莑�Y�ŗ� 
                                             PIC S9(002)V9(1) COMP-3.
000130 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�ی����� 
                                             PIC S9(002)V9(3) COMP-3.
000140 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�����ی��R�[�h PIC  X(004).
000150 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�M�p�ی��R�[�h�|���[�X 
                                             PIC  X(006).
000160 01  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�M�p�ی��R�[�h�|���� 
                                             PIC  X(006).
000680     
      *    EXEC  SQL  INCLUDE  IKOTBL004.CBL         END-EXEC.
000690*                                                                 
000700*--< ���Y�R�[�h�ϊ��}�X�^ >                                       
000010************************************************
000020* �]���[�X��g��R�[�h�ϊ��e�[�u��(IKOTBL004)
000030************************************************
000040 01  �h�j�n�O�O�S�|�����R�[�h PIC  X(008).
000050 01  �h�j�n�O�O�S�|�]���[�X��g��R�[�h PIC  X(003).
000710     
      *    EXEC  SQL  INCLUDE  D077SSH.CBL           END-EXEC.
000720*                                                                 
000730*--< �n�q�`�b�k�d �r�p�k���s��� (SQLCA) >                        
      *****************************************************************
      *   ���Y�R�[�h�ϊ��}�X�^(D077SSH_TBL)
      *****************************************************************
       01  ���Y�R�[�h�ϊ��}�X�^.
           03  �c�O�V�V�|�]���[�X��g��R�[�h
                                     PIC  X(003).
           03  �c�O�V�V�|������i�R�[�h
                                     PIC  X(010).
           03  �c�O�V�V�|�K�p�N����  PIC  X(008).
           03  �c�O�V�V�|���Y�R�[�h  PIC  X(007).
           03  �c�O�V�V�|�����ی��R�[�h
                                     PIC  X(004).
           03  �c�O�V�V�|�M�p�ی��R�[�h�|���[�X
                                     PIC  X(006).
           03  �c�O�V�V�|�M�p�ی��R�[�h�|����
                                     PIC  X(006).
           03  �c�O�V�V�|�ŕ��S�敪  PIC  X(001).
           03  �c�O�V�V�|���i���ޖ�  PIC  X(030).
           03  �c�O�V�V�|����������  PIC  X(040).
           03  �c�O�V�V�|������      PIC  X(020).
           03  �c�O�V�V�|�@�햼      PIC  X(020).
           03  �c�O�V�V�|�o�^�N����  PIC  X(008).
           03  �c�O�V�V�|�o�^����    PIC  X(008).
           03  �c�O�V�V�|�o�^�S����  PIC  X(008).
           03  �c�O�V�V�|�X�V�N����  PIC  X(008).
           03  �c�O�V�V�|�X�V����    PIC  X(008).
           03  �c�O�V�V�|�X�V��      PIC  X(008).
           03  �c�O�V�V�|���͒S���҃R�[�h
                                     PIC  X(008).
000740     
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
000750*                                                                 
000760     
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
000770*----------------------------------------------------------------*
000780*   ��Ɨ̈��`                                                 *
000790*----------------------------------------------------------------*
000800 01  �v�n�q�j�|�G���A.                                            
000810*--< �G���[�R�[�h >                                               
000820     03  �v�|�G���[�R�[�h             PIC S9(04).                 
000830*                                                                 
000840*--< �t�@�C����� >                                               
000850     03  �t�@�C�����                 PIC  X(02).                 
000860*                                                                 
000870*--< �����G���A >                                                 
000880     03  �����G���A.                                              
000890         05  �v�|���́|�����P         PIC  9(09).                 
000900         05  �v�|���́|�����Q         PIC  9(09).                 
000910         05  �v�|�o�́|����           PIC  9(09).                 
000920*                                                                 
000930*--< �t���O�A���A >                                               
000940     03  �t���O�|�G���A.                                          
000950         05  �v�|�I���|�t���O         PIC  X(01).                 
000960         05  �v�|�I���|�t���O�P       PIC  X(01).                 
000970         05  �ُ�I���|�t���O         PIC  X(01).                 
000980*                                                                 
000990*--< �t�@�C����� >                                               
001000     03  �v�|�K�p��                   PIC  X(08).                 
001010*                                                                 
001020*----------------------------------------------------------------*
001030*   �������Ԓ�`                                                 *
001040*----------------------------------------------------------------*
001050*--< ���ʏ�� >                                                   
001060 01  �v�|���ʏ��.                                                
001070     03  �v�|�V�X�e�����t.                                        
001080         05  �v�|���I                 PIC  X(02) VALUE  "20".     
001090         05  �v�|�N����               PIC  X(06).                 
001100     03  �v�|�V�X�e������             PIC  X(08).                 
001110     03  �v�|�S����                   PIC  X(08) VALUE "IKOPG   ".
001120*----------------------------------------------------------------*
001130*    �T�u���[�`����                                              *
001140*----------------------------------------------------------------*
001150 01  CALL-AREA.                                                   
001160*--< ���ʃ��O�T�u���[�`�� >                                       
001170     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001180     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001190*----------------------------------------------------------------*
001200*    �b�n�o�x�̈�                                                *
001210*----------------------------------------------------------------*
001220*--< ���ʃ��O�p�p�����[�^ >                                       
001230 01  IF-CHOCO001.                                                 
001240     COPY  CHOCO001  REPLACING  ==()==  BY  ==���P�|==.           
001250*                                                                 
001260*----------------------------------------------------------------*
001270*    �h�m�h�t�@�C���Ǎ��T�u���[�`���p�p�����^�̈�                *
001280*----------------------------------------------------------------*
001290 01  PARA-AREA.                                                   
001300     COPY CPBCO001.                                               
001310******************************************************************
001320*    �萔�p�f�[�^��`�G���A                                      *
001330******************************************************************
001340 CONSTANT                             SECTION.                    
001350 01  �萔�̈�.                                                    
001360     03  �萔�|�v���O�����h�c         PIC  X(08) VALUE "COBIS130".
001370     03  �萔�|�v���O������           PIC  X(80)                  
001380                                VALUE  "���Y�R�[�h�ϊ��}�X�^�ڍs".
001390     03  �萔�|�r�p�k�n�j             PIC  9(04)  VALUE  0000.    
001400     03  �萔�|�r�p�k�d�m�c           PIC  9(04)  VALUE  0100.    
001410     03  �萔�|������               PIC  9(04)  VALUE  ZERO.    
001420     03  �萔�|�ُ���               PIC  9(04)  VALUE  0009.    
001430******************************************************************
001440*    �o�q�n�b�d�c�t�q�d            �c�h�u�h�r�h�n�m              *
001450******************************************************************
001460 PROCEDURE                            DIVISION.                   
001470*                                                                 
001480     PERFORM   ��������.                                          
001490*                                                                 
001500     PERFORM   �又��  UNTIL  �v�|�I���|�t���O  =  "Y".           
001510*                                                                 
001520     PERFORM   �I������.                                          
001530*                                                                 
001540     STOP RUN.                                                    
001550*                                                                 
001560******************************************************************
001570*    ��������                                            <1.0>   *
001580******************************************************************
001590 ��������                             SECTION.                    
001600 ���������|�r�s�`�q�s.                                            
001610*                                                                 
001620*----------------------------------------------------------------*
001630*    �J�n���b�Z�[�W�o��                                          *
001640*----------------------------------------------------------------*
001650     INITIALIZE                       IF-CHOCO001.                
001660     MOVE  "3"                        TO  ���P�|�C�x���g���.     
001670     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
001680     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
001690     MOVE  "START"                    TO  ���P�|��������.         
001700     MOVE  �萔�|�v���O������         TO  ���P�|���̑����b�Z�[�W. 
001710     CALL  CLOCO001                USING  IF-CHOCO001.            
001720*                                                                 
001730*----------------------------------------------------------------*
001740*    ��Ɨ̈�̏����l�ݒ�                                        *
001750*----------------------------------------------------------------*
001760     MOVE  SPACE                      TO  �v�n�q�j�|�G���A.       
001770     INITIALIZE                           �v�n�q�j�|�G���A.       
001780*                                                                 
001790*--< �b�o�t���t���擾 >                                           
001800     ACCEPT  �v�|�N����               FROM  DATE.                 
001810*                                                                 
001820*--< �b�o�t�������擾 >                                           
001830     ACCEPT  �v�|�V�X�e������         FROM  TIME.                 
001840*----------------------------------------------------------------*
001850*    �n�q�`�b�k�d�ڑ�                                    <1.1>   *
001860*----------------------------------------------------------------*
001870     PERFORM  �n�q�`�b�k�d�ڑ�.                                   
001880*                                                                 
001890*----------------------------------------------------------------*
001900*    �J�[�\���錾                                        <1.2>   *
001910*----------------------------------------------------------------*
001920     PERFORM  �J�[�\���錾.                                       
001930*                                                                 
001940*--< �t�@�C���I�[�v�� >                                           
001950     OPEN  INPUT  ���̓t�@�C��.                                   
001960*                                                                 
001970*----------------------------------------------------------------*
001980*    �t�@�C���I�[�v����Ԕ���                                    *
001990*----------------------------------------------------------------*
002000     EVALUATE  �t�@�C�����                                       
002010        WHEN  ZERO                                                
002020           CONTINUE                                               
002030        WHEN  OTHER                                               
002040*--<       �t�@�C���I�[�v���G���[ >                               
002050           MOVE     -1                TO  �v�|�G���[�R�[�h        
002060           PERFORM  �G���[����                                    
002070     END-EVALUATE.                                                
002080*----------------------------------------------------------------*
002090*    �W�������i�Ǎ�����(�P����)                          <C.1>   *
002100*----------------------------------------------------------------*
002110     PERFORM   �W�������i�Ǎ�����.                                
002120*                                                                 
002130*----------------------------------------------------------------*
002140*    ��K�p���Ǎ�����(�P����)                          <C.2>   *
002150*----------------------------------------------------------------*
002160     PERFORM   ��K�p���Ǎ�����.                                
002170*                                                                 
002180 ���������|�d�w�h�s.                                              
002190     EXIT.                                                        
002200******************************************************************
002210*    �又��                                              <2.0>   *
002220******************************************************************
002230 �又��                               SECTION.                    
002240 �又���|�r�s�`�q�s.                                              
002250*                                                                 
002260*----------------------------------------------------------------*
002270*    �ҏW����                                            <2.1>   *
002280*----------------------------------------------------------------*
002290     PERFORM  �ҏW����.                                           
002300*                                                                 
002310*----------------------------------------------------------------*
002320*    ���Y�R�[�h�ϊ��}�X�^�ǉ�����                        <2.2>   *
002330*----------------------------------------------------------------*
002340     PERFORM  ���Y�R�[�h�ϊ��}�X�^�ǉ�����.                       
002350*                                                                 
002360*----------------------------------------------------------------*
002370*    �W�������i�Ǎ�����. (�Q���ڈȍ~)                    <C.1>   *
002380*----------------------------------------------------------------*
002390     PERFORM   �W�������i�Ǎ�����.                                
002400*                                                                 
002410 �又���|�d�w�h�s.                                                
002420     EXIT.                                                        
002430******************************************************************
002440*    �I������                                            <3.0>   *
002450******************************************************************
002460 �I������                             SECTION.                    
002470 �I�������|�r�s�`�q�s.                                            
002480*                                                                 
002490*----------------------------------------------------------------*
002500*    �c�a�N���[�Y                                        <3.1>   *
002510*----------------------------------------------------------------*
002520     PERFORM   �c�a�N���[�Y.                                      
002530*                                                                 
002540*----------------------------------------------------------------*
002550*    �c�a�R�~�b�g����                                    <3.2>   *
002560*----------------------------------------------------------------*
002570     PERFORM   �c�a�R�~�b�g����.                                  
002580*                                                                 
002590*--< �t�@�C���N���[�Y >                                           
002600     CLOSE  ���̓t�@�C��.                                         
002610*                                                                 
002620*----------------------------------------------------------------*
002630*    �I�����b�Z�[�W�o�͏���                              <C.3>   *
002640*----------------------------------------------------------------*
002650     PERFORM  �I�����b�Z�[�W�o��.                                 
002660*                                                                 
002670*--< �v���O��������I�� >                                         
002680     MOVE  �萔�|������             TO  PROGRAM-STATUS.         
002690*                                                                 
002700 �I�������|�d�w�h�s.                                              
002710     EXIT.                                                        
002720******************************************************************
002730*    �I�����b�Z�[�W�o��                                  <C.3>   *
002740******************************************************************
002750  �I�����b�Z�[�W�o��                  SECTION.                    
002760  �I�����b�Z�[�W�o�́|�r�s�`�q�s.                                 
002770*                                                                 
002780*----------------------------------------------------------------*
002790*    �W�������i�}�X�^���͌���                                    *
002800*----------------------------------------------------------------*
002810     INITIALIZE                       IF-CHOCO001.                
002820     MOVE  "3"                        TO  ���P�|�C�x���g���.     
002830     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
002840     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
002850     MOVE  "JOM_MST"                  TO  ���P�|�����e�[�u���h�c. 
002860     MOVE  "COUNT"                    TO  ���P�|��������.         
002870     MOVE  �v�|���́|�����P           TO  ���P�|�f�[�^���e.       
002880     MOVE  "�W�������i�}�X�^�Ǎ�����" TO  ���P�|���̑����b�Z�[�W. 
002890     CALL  CLOCO001                USING  IF-CHOCO001.            
002900*                                                                 
002910*----------------------------------------------------------------*
002920*    ��K�p���t�@�C�����͌���                                  *
002930*----------------------------------------------------------------*
002940     INITIALIZE                       IF-CHOCO001.                
002950     MOVE  "3"                        TO  ���P�|�C�x���g���.     
002960     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
002970     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
002980     MOVE  "FFUSIA01"                  TO  ���P�|�����e�[�u���h�c. 
002990     MOVE  "COUNT"                    TO  ���P�|��������.         
003000     MOVE  �v�|���́|�����Q           TO  ���P�|�f�[�^���e.       
003010     MOVE  "��K�p���t�@�C���Ǎ�����"                           
003020                                      TO  ���P�|���̑����b�Z�[�W. 
003030     CALL  CLOCO001                USING  IF-CHOCO001.            
003040*                                                                 
003050*----------------------------------------------------------------*
003060*    ���Y�R�[�h�ϊ��}�X�^�o�͌���                                *
003070*----------------------------------------------------------------*
003080     INITIALIZE                       IF-CHOCO001.                
003090     MOVE  "3"                        TO  ���P�|�C�x���g���.     
003100     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
003110     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
003120     MOVE  "D077SSH"                  TO  ���P�|�����e�[�u���h�c. 
003130     MOVE  "COUNT"                    TO  ���P�|��������.         
003140     MOVE  �v�|�o�́|����             TO  ���P�|�f�[�^���e.       
003150     MOVE  "���Y�R�[�h�ϊ��}�X�^�o�͌���"                         
003160                                      TO  ���P�|���̑����b�Z�[�W. 
003170     CALL  CLOCO001                USING  IF-CHOCO001.            
003180*                                                                 
003190*----------------------------------------------------------------*
003200*    �I�����b�Z�[�W �o��                                         *
003210*----------------------------------------------------------------*
003220     INITIALIZE                       IF-CHOCO001.                
003230     MOVE  "3"                        TO  ���P�|�C�x���g���.     
003240     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
003250     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
003260     MOVE  "END"                      TO  ���P�|��������.         
003270     MOVE  �萔�|�v���O������         TO  ���P�|���̑����b�Z�[�W. 
003280     CALL  CLOCO001                USING  IF-CHOCO001.            
003290*                                                                 
003300 �I�����b�Z�[�W�o�́|�d�w�h�s.                                    
003310     EXIT.                                                        
003320******************************************************************
003330*    �n�q�`�b�k�d�ڑ�                                    <1.1>   *
003340******************************************************************
003350 �n�q�`�b�k�d�ڑ�                     SECTION.                    
003360 �n�q�`�b�k�d�ڑ��|�r�s�`�q�s.                                    
003370*                                                                 
003380*--< �h�m�h�t�@�C���Ǎ��T�u���[�`���Ăяo�� >                     
003390     CALL  COBCO001                USING  PARA-AREA.              
003400*                                                                 
003410     MOVE  PARA-DBSTRING              TO  DB-STRING.              
003420     MOVE  PARA-USERNAME              TO  USERNAME.               
003430     MOVE  PARA-PASSWORD              TO  PASSWD.                 
003440*                                                                 
003450*----------------------------------------------------------------*
003460*    �J�n�ڑ�                                                    *
003470*----------------------------------------------------------------*
003480     IF  DB-STRING  =  SPACE                                      
003490        
      *       EXEC  SQL                                                 
003500*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
003510*       END-EXEC 
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
003520     ELSE                                                         
003530        
      *       EXEC  SQL                                                 
003540*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
003550*            USING  :DB-STRING                                    
003560*       END-EXEC 
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
003570     END-IF.                                                      
003580*                                                                 
003590*----------------------------------------------------------------*
003600*    �ڑ���Ԕ���                                                *
003610*----------------------------------------------------------------*
003620     EVALUATE  SQLCODE                                            
003630        WHEN  �萔�|�r�p�k�n�j                                    
003640*--<       �ڑ����� >                                             
003650           CONTINUE                                               
003660        WHEN  OTHER                                               
003670*--<       �ڑ��G���[ >                                           
003680           MOVE     -10               TO  �v�|�G���[�R�[�h        
003690           PERFORM  �G���[����                                    
003700     END-EVALUATE.                                                
003710*                                                                 
003720 �n�q�`�b�k�d�ڑ��|�d�w�h�s.                                      
003730     EXIT.                                                        
003740******************************************************************
003750*    �J�[�\���錾                                        <1.2>   *
003760******************************************************************
003770*                                                                 
003780 �J�[�\���錾                         SECTION.                    
003790 �J�[�\���錾�|�r�s�`�q�s.                                        
003800*                                                                 
003810*----------------------------------------------------------------*
003820*    �J�[�\���錾                                                *
003830*----------------------------------------------------------------*
003840     
      *    EXEC  SQL                                                    
003850*       DECLARE  CUR1  CURSOR  FOR                                
003860*          SELECT  �W�������i�R�[�h                               
003870*                 ,�W�������i���ޖ�                               
003880*                 ,�������Q����                                   
003890*                 ,������                                         
003900*                 ,�@�햼                                         
003910*                 ,�ŋ敪                                         
003920*                 ,���Y�R�[�h                                     
003930*                 ,�����ی��R�[�h                                 
003940*                 ,�M�p�ی��R�[�h�Q���[�X                         
003950*                 ,�M�p�ی��R�[�h�Q����                           
003960*            FROM  JOM_SYOHIN_MST                                 
003970*    END-EXEC.
003980*                                                                 
003990*----------------------------------------------------------------*
004000*    �J�[�\���I�[�v��                                            *
004010*----------------------------------------------------------------*
004020     
      *    EXEC  SQL                                                    
004030*       OPEN  CUR1                                                
004040*    END-EXEC.
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

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
004050*                                                                 
004060*----------------------------------------------------------------*
004070*    �J�[�\���I�[�v�����m�F                                      *
004080*----------------------------------------------------------------*
004090     EVALUATE   SQLCODE                                           
004100        WHEN   �萔�|�r�p�k�n�j                                   
004110*--<       ���� >                                                 
004120           CONTINUE                                               
004130        WHEN   OTHER                                              
004140*--<       �J�[�\���I�[�v�����s�A�v���O�������ُ�I�� >           
004150           MOVE      -20              TO  �v�|�G���[�R�[�h        
004160           PERFORM   �G���[����                                   
004170     END-EVALUATE.                                                
004180*                                                                 
004190 �J�[�\���錾�|�d�w�h�s.                                          
004200     EXIT.                                                        
004210******************************************************************
004220*    �W�������i�Ǎ�����                                  <C.1>   *
004230******************************************************************
004240 �W�������i�Ǎ�����                   SECTION.                    
004250 �W�������i�Ǎ������|�r�s�`�q�s.                                  
004260*                                                                 
004270     
      *    EXEC  SQL                                                    
004280*       FETCH  CUR1                                               
004290*          INTO                                                   
004300*            :�i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�W�������i�R�[�h      
004310*           ,:�i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�W�������i���ޖ�      
004320*           ,:�i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�������|����          
004330*           ,:�i�n�l�|�r�x�n�g�h�m�|�l�r�s�|������                
004340*           ,:�i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�@�햼                
004350*           ,:�i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�ŋ敪                
004360*           ,:�i�n�l�|�r�x�n�g�h�m�|�l�r�s�|���Y�R�[�h            
004370*           ,:�i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�����ی��R�[�h        
004380*           ,:�i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�M�p�ی��R�[�h�|���[�X
004390*           ,:�i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�M�p�ی��R�[�h�|����  
004400*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 82 TO SQL-OFFSET
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
               �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�W�������i�R�[�h
               SQL-SQHSTV(1)
           MOVE 4 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�W�������i���ޖ�
               SQL-SQHSTV(2)
           MOVE 30 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�������|����
               SQL-SQHSTV(3)
           MOVE 40 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|������
               SQL-SQHSTV(4)
           MOVE 20 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�@�햼
               SQL-SQHSTV(5)
           MOVE 20 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�ŋ敪
               SQL-SQHSTV(6)
           MOVE 1 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|���Y�R�[�h
               SQL-SQHSTV(7)
           MOVE 7 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�����ی��R�[�h
               SQL-SQHSTV(8)
           MOVE 4 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�M�p�ی��R�[�h�|���[�X
               SQL-SQHSTV(9)
           MOVE 6 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�M�p�ی��R�[�h�|����
               SQL-SQHSTV(10)
           MOVE 6 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
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
004410*                                                                 
004420*----------------------------------------------------------------*
004430*    �W�������i�Ǎ��m�F                                          *
004440*----------------------------------------------------------------*
004450     EVALUATE  SQLCODE                                            
004460        WHEN  �萔�|�r�p�k�n�j                                    
004470*--<       ���� >                                                 
004480           COMPUTE   �v�|���́|�����P =  �v�|���́|�����P +  1    
004490        WHEN  �萔�|�r�p�k�d�m�c                                  
004500*--<       �Ǎ��I�� >                                             
004510           MOVE      "Y"              TO  �v�|�I���|�t���O        
004520        WHEN  OTHER                                               
004530*--<       �Ǎ��G���[�A�v���O�������ُ�I�� >                     
004540           MOVE      -30              TO  �v�|�G���[�R�[�h        
004550           PERFORM   �G���[����                                   
004560     END-EVALUATE.                                                
004570*                                                                 
004580 �W�������i�Ǎ������|�d�w�h�s.                                    
004590     EXIT.                                                        
004600******************************************************************
004610*    ��K�p���Ǎ�����                                  <C.2>   *
004620******************************************************************
004630 ��K�p���Ǎ�����                   SECTION.                    
004640 ��K�p���Ǎ������|�r�s�`�q�s.                                  
004650*--<    ��K�p���Ǎ� >                                          
004660        READ  ���̓t�@�C��                                        
004670           AT  END                                                
004680*--<          �Ǎ��I�� >                                          
004690              MOVE  "Y"               TO  �v�|�I���|�t���O�P      
004700              GO  TO  ��K�p���Ǎ������|�d�w�h�s                
004710           NOT  AT  END                                           
004720              COMPUTE  �v�|���́|�����Q  =  �v�|���́|�����Q + 1  
004730        END-READ.                                                 
004740*                                                                 
004750*----------------------------------------------------------------*
004760*    �t�@�C���I�[�v����Ԕ���                                    *
004770*----------------------------------------------------------------*
004780     EVALUATE  �t�@�C�����                                       
004790        WHEN  ZERO                                                
004800           MOVE  ���́|�K�p��         TO  �v�|�K�p��              
004810        WHEN  OTHER                                               
004820*--<       �ǂݍ��݃G���[ >                                       
004830           MOVE     ZERO              TO  �v�|�K�p��              
004840           MOVE     -2                TO  �v�|�G���[�R�[�h        
004850           PERFORM  �G���[����                                    
004860     END-EVALUATE.                                                
004870*                                                                 
004880 ��K�p���Ǎ������|�d�w�h�s.                                    
004890     EXIT.                                                        
004900******************************************************************
004910*    �ҏW����                                            <2.1>   *
004920******************************************************************
004930 �ҏW����                             SECTION.                    
004940 �ҏW�����|�r�s�`�q�s.                                            
004950*                                                                 
004960*--< �o�̓��R�[�h�������� >                                       
004970*                                                                 
004980     MOVE  SPACE                      TO  ���Y�R�[�h�ϊ��}�X�^.   
004990     INITIALIZE                           ���Y�R�[�h�ϊ��}�X�^.   
005000*----------------------------------------------------------------*
005010*    �]���[�X�R�[�h�擾����                              <2.1.1> *
005020*----------------------------------------------------------------*
005030     PERFORM       �]���[�X�R�[�h�擾����.                        
005040*                                                                 
005050*----------------------------------------------------------------*
005060*    �ҏW����                                                    *
005070*----------------------------------------------------------------*
005080     MOVE  �h�j�n�O�O�S�|�]���[�X��g��R�[�h                     
005090                             TO  �c�O�V�V�|�]���[�X��g��R�[�h.  
005100*                                                                 
005110     MOVE  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�W�������i�R�[�h         
005120                             TO  �c�O�V�V�|������i�R�[�h.        
005130*                                                                 
005140     MOVE  �v�|�K�p��        TO  �c�O�V�V�|�K�p�N����.            
005150*                                                                 
005160     MOVE  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|���Y�R�[�h               
005170                             TO  �c�O�V�V�|���Y�R�[�h.            
005180*                                                                 
005190     MOVE  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�����ی��R�[�h           
005200                             TO  �c�O�V�V�|�����ی��R�[�h.        
005210*                                                                 
005220     MOVE  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�M�p�ی��R�[�h�|���[�X   
005230                             TO  �c�O�V�V�|�M�p�ی��R�[�h�|���[�X.
005240*                                                                 
005250     MOVE  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�M�p�ی��R�[�h�|����     
005260                             TO  �c�O�V�V�|�M�p�ی��R�[�h�|����.  
005270*                                                                 
005280*----------------------------------------------------------------*
005290*    �ŋ敪����                                                  *
005300*----------------------------------------------------------------*
005310     EVALUATE  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�ŋ敪               
005320*--<    "0"��ې� >                                               
005330        WHEN  "0"                                                 
005340           MOVE    "0"                TO  �c�O�V�V�|�ŕ��S�敪    
005350*--<    "1"��ې� >                                               
005360        WHEN  "1"                                                 
005370           MOVE    "1"                TO  �c�O�V�V�|�ŕ��S�敪    
005380*--<    "2"��ې� >                                               
005390        WHEN  "2"                                                 
005400           MOVE    "2"                TO  �c�O�V�V�|�ŕ��S�敪    
005410*--<    "3"��ې� >                                               
005420        WHEN  "3"                                                 
005430           MOVE    "3"                TO  �c�O�V�V�|�ŕ��S�敪    
005440*--<    "4"��ې� >                                               
005450        WHEN  "4"                                                 
005460           MOVE    "4"                TO  �c�O�V�V�|�ŕ��S�敪    
005470     END-EVALUATE.                                                
005480*                                                                 
005490     MOVE  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�W�������i���ޖ�         
005500                                      TO  �c�O�V�V�|���i���ޖ�.   
005510     MOVE  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�������|����             
005520                                      TO  �c�O�V�V�|����������.   
005530     MOVE  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|������                   
005540                                      TO  �c�O�V�V�|������.       
005550     MOVE  �i�n�l�|�r�x�n�g�h�m�|�l�r�s�|�@�햼                   
005560                                      TO  �c�O�V�V�|�@�햼.       
005570     MOVE  �v�|�V�X�e�����t           TO  �c�O�V�V�|�o�^�N����.   
005580     MOVE  �v�|�V�X�e������           TO  �c�O�V�V�|�o�^����.     
005590     MOVE  �v�|�S����                 TO  �c�O�V�V�|�o�^�S����.   
005600     MOVE  �v�|�V�X�e�����t           TO  �c�O�V�V�|�X�V�N����.   
005610     MOVE  �v�|�V�X�e������           TO  �c�O�V�V�|�X�V����.     
005620     MOVE  �v�|�S����                 TO  �c�O�V�V�|�X�V��.       
005630     MOVE  �v�|�S����                 TO                          
005640                                      �c�O�V�V�|���͒S���҃R�[�h. 
005650*                                                                 
005660 �ҏW�����|�d�w�h�s.                                              
005670     EXIT.                                                        
005680******************************************************************
005690*    �]���[�X�R�[�h�擾����                              <2.1.1> *
005700******************************************************************
005710 �]���[�X�R�[�h�擾����               SECTION.                    
005720 �]���[�X�R�[�h�擾�����|�r�s�`�q�s.                              
005730                                                                  
005740     MOVE  SPACE                      TO                          
005750                               �h�j�n�O�O�S�|�]���[�X��g��R�[�h.
005760*--< �]���[�X��g��R�[�h�擾 >                                   
005770     
      *    EXEC SQL                                                     
005780*       SELECT  �]���[�X��g��R�[�h                              
005790*         INTO :�h�j�n�O�O�S�|�]���[�X��g��R�[�h                
005800*         FROM  IKOTBL004                                         
005810*       WHERE   �����R�[�h  =  :�v�r�|�W�������i                
005820*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 137 TO SQL-OFFSET
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
               �h�j�n�O�O�S�|�]���[�X��g��R�[�h
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               �v�r�|�W�������i
               SQL-SQHSTV(2)
           MOVE 8 TO SQL-SQHSTL(2)
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
005830*                                                                 
005840*--< �]���[�X�e�[�u���Ǎ��m�F >                                   
005850     EVALUATE  SQLCODE                                            
005860        WHEN  �萔�|�r�p�k�n�j                                    
005870*--<       ���� >                                                 
005880           CONTINUE                                               
005890        WHEN  OTHER                                               
005900*--<       �]���[�X��g��R�[�h���擾���Ȃ� >                     
005910           MOVE      -40              TO  �v�|�G���[�R�[�h        
005920           PERFORM   �G���[����                                   
005930           MOVE  ZERO                 TO                          
005940                               �h�j�n�O�O�S�|�]���[�X��g��R�[�h 
005950     END-EVALUATE.                                                
005960*                                                                 
005970 �]���[�X�R�[�h�擾�����|�d�w�h�s.                                
005980     EXIT.                                                        
005990******************************************************************
006000*    ���Y�R�[�h�ϊ��}�X�^�ǉ�����                        <2.2>   *
006010******************************************************************
006020 ���Y�R�[�h�ϊ��}�X�^�ǉ�����         SECTION.                    
006030 ���Y�R�[�h�ϊ��}�X�^�ǉ������|�r�s�`�q�s.                        
006040*                                                                 
006050     
      *    EXEC  SQL                                                    
006060*       INSERT  INTO  D077SSH_TBL                                 
006070*          (�]���[�X��g��R�[�h                                  
006080*          ,������i�R�[�h                                        
006090*          ,�K�p�N����                                            
006100*          ,���Y�R�[�h                                            
006110*          ,�����ی��R�[�h                                        
006120*          ,�M�p�ی��R�[�h�Q���[�X                                 
006130*          ,�M�p�ی��R�[�h�Q����                                   
006140*          ,�ŕ��S�敪                                            
006150*          ,���i���ޖ�                                            
006160*          ,����������                                            
006170*          ,������                                                
006180*          ,�@�햼                                                
006190*          ,�o�^�N����                                            
006200*          ,�o�^����                                              
006210*          ,�o�^�S����                                            
006220*          ,�X�V�N����                                            
006230*          ,�X�V����                                              
006240*          ,�X�V��                                                
006250*          ,���͒S���҃R�[�h)                                     
006260*      VALUES                                                     
006270*          (:�c�O�V�V�|�]���[�X��g��R�[�h                       
006280*          ,:�c�O�V�V�|������i�R�[�h                             
006290*          ,:�c�O�V�V�|�K�p�N����                                 
006300*          ,:�c�O�V�V�|���Y�R�[�h                                 
006310*          ,:�c�O�V�V�|�����ی��R�[�h                             
006320*          ,:�c�O�V�V�|�M�p�ی��R�[�h�|���[�X                     
006330*          ,:�c�O�V�V�|�M�p�ی��R�[�h�|����                       
006340*          ,:�c�O�V�V�|�ŕ��S�敪                                 
006350*          ,:�c�O�V�V�|���i���ޖ�                                 
006360*          ,:�c�O�V�V�|����������                                 
006370*          ,:�c�O�V�V�|������                                     
006380*          ,:�c�O�V�V�|�@�햼                                     
006390*          ,:�c�O�V�V�|�o�^�N����                                 
006400*          ,:�c�O�V�V�|�o�^����                                   
006410*          ,:�c�O�V�V�|�o�^�S����                                 
006420*          ,:�c�O�V�V�|�X�V�N����                                 
006430*          ,:�c�O�V�V�|�X�V����                                   
006440*          ,:�c�O�V�V�|�X�V��                                     
006450*          ,:�c�O�V�V�|���͒S���҃R�[�h)                          
006460*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 160 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               �c�O�V�V�|�]���[�X��g��R�[�h IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               �c�O�V�V�|������i�R�[�h IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(2)
           MOVE 10 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               �c�O�V�V�|�K�p�N���� IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(3)
           MOVE 8 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               �c�O�V�V�|���Y�R�[�h IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               �c�O�V�V�|�����ی��R�[�h IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(5)
           MOVE 4 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               �c�O�V�V�|�M�p�ی��R�[�h�|���[�X IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(6)
           MOVE 6 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               �c�O�V�V�|�M�p�ی��R�[�h�|���� IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(7)
           MOVE 6 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               �c�O�V�V�|�ŕ��S�敪 IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(8)
           MOVE 1 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               �c�O�V�V�|���i���ޖ� IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(9)
           MOVE 30 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               �c�O�V�V�|���������� IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(10)
           MOVE 40 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               �c�O�V�V�|������ IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(11)
           MOVE 20 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               �c�O�V�V�|�@�햼 IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(12)
           MOVE 20 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               �c�O�V�V�|�o�^�N���� IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(13)
           MOVE 8 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               �c�O�V�V�|�o�^���� IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(14)
           MOVE 8 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               �c�O�V�V�|�o�^�S���� IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(15)
           MOVE 8 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               �c�O�V�V�|�X�V�N���� IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(16)
           MOVE 8 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               �c�O�V�V�|�X�V���� IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(17)
           MOVE 8 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               �c�O�V�V�|�X�V�� IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(18)
           MOVE 8 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               �c�O�V�V�|���͒S���҃R�[�h IN
               ���Y�R�[�h�ϊ��}�X�^
               SQL-SQHSTV(19)
           MOVE 8 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
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
006470*                                                                 
006480*----------------------------------------------------------------*
006490*    �c�a�ǉ��������m�F                                          *
006500*----------------------------------------------------------------*
006510     EVALUATE  SQLCODE                                            
006520        WHEN   �萔�|�r�p�k�n�j                                   
006530*--<       �ǉ����� >                                             
006540           COMPUTE  �v�|�o�́|����    =  �v�|�o�́|����  +  1     
006550        WHEN   OTHER                                              
006560*--<       �ǉ����s�A�v���O�������ُ�I������ >                   
006570           MOVE     -50               TO  �v�|�G���[�R�[�h        
006580           PERFORM  �G���[����                                    
006590     END-EVALUATE.                                                
006600*                                                                 
006610 ���Y�R�[�h�ϊ��}�X�^�ǉ������|�d�w�h�s.                          
006620     EXIT.                                                        
006630******************************************************************
006640*    �c�a�N���[�Y                                        <3.1>   *
006650******************************************************************
006660 �c�a�N���[�Y                         SECTION.                    
006670 �c�a�N���[�Y�|�r�s�`�q�s.                                        
006680*                                                                 
006690*--< �J�[�\���̃N���[�Y >                                         
006700     
      *    EXEC  SQL                                                    
006710*       CLOSE  CUR1                                               
006720*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 251 TO SQL-OFFSET
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
006730*                                                                 
006740 �c�a�N���[�Y�|�d�w�h�s.                                          
006750     EXIT.                                                        
006760******************************************************************
006770*    �c�a�R�~�b�g����                                    <3.2>   *
006780******************************************************************
006790 �c�a�R�~�b�g����                     SECTION.                    
006800 �c�a�R�~�b�g�����|�r�s�`�q�s.                                    
006810*                                                                 
006820     
      *    EXEC  SQL                                                    
006830*       COMMIT  WORK  RELEASE                                     
006840*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 266 TO SQL-OFFSET
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
006850*                                                                 
006860*--< �R�~�b�g���� >                                               
006870     INITIALIZE                       IF-CHOCO001.                
006880     MOVE  "3"                        TO  ���P�|�C�x���g���.     
006890     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
006900     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
006910     MOVE  "COMMIT"                   TO  ���P�|��������.         
006920     MOVE  "�R�~�b�g���{"             TO  ���P�|���̑����b�Z�[�W. 
006930     CALL  CLOCO001                USING  IF-CHOCO001.            
006940*                                                                 
006950 �c�a�R�~�b�g�����|�d�w�h�s.                                      
006960     EXIT.                                                        
006970******************************************************************
006980*    �c�a���[���o�b�N����                                <4.1>   *
006990******************************************************************
007000 �c�a���[���o�b�N����                 SECTION.                    
007010 �c�a���[���o�b�N�����|�r�s�`�q�s.                                
007020*                                                                 
007030     
      *    EXEC  SQL                                                    
007040*        ROLLBACK WORK  RELEASE                                   
007050*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 281 TO SQL-OFFSET
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
007060*                                                                 
007070*--< ���[���o�b�N���� >                                           
007080     INITIALIZE                       IF-CHOCO001.                
007090     MOVE  "1"                        TO  ���P�|�C�x���g���.     
007100     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
007110     MOVE  "9"                        TO  ���P�|���A�R�[�h.       
007120     MOVE  "ROLLBACK"                 TO  ���P�|��������.         
007130     MOVE  "���[���o�b�N���{"         TO  ���P�|���̑����b�Z�[�W. 
007140     CALL  CLOCO001                USING  IF-CHOCO001.            
007150*                                                                 
007160 �c�a���[���o�b�N�����|�d�w�h�s.                                  
007170     EXIT.                                                        
007180******************************************************************
007190*    �G���[����                                          <4.0>   *
007200******************************************************************
007210 �G���[����                           SECTION.                    
007220 �G���[�����|�r�s�`�q�s.                                          
007230*                                                                 
007240     MOVE  "Y"                        TO  �ُ�I���|�t���O.       
007250     INITIALIZE                       IF-CHOCO001.                
007260*                                                                 
007270     EVALUATE  �v�|�G���[�R�[�h                                   
007280        WHEN  -1                                                  
007290*--<       ��K�p���t�@�C���I�[�v���G���[ >                     
007300           MOVE  "2"                  TO  ���P�|�C�x���g���      
007310           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
007320           MOVE  "9"                  TO  ���P�|���A�R�[�h        
007330           MOVE  "FFUISA01"           TO  ���P�|�����e�[�u���h�c  
007340           MOVE  "OPEN"               TO  ���P�|��������          
007350           MOVE  �t�@�C�����         TO  ���P�|�f�[�^���e        
007360           MOVE  "��K�p���t�@�C���I�[�v���G���["               
007370                                      TO  ���P�|���̑����b�Z�[�W  
007380           CALL  CLOCO001          USING  IF-CHOCO001             
007390           MOVE  "N"                  TO  �ُ�I���|�t���O        
007400*                                                                 
007410        WHEN  -2                                                  
007420*--<       ��K�p���ǂݍ��݃t�@�C���G���[ >                     
007430           MOVE  "2"                  TO  ���P�|�C�x���g���      
007440           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
007450           MOVE  "9"                  TO  ���P�|���A�R�[�h        
007460           MOVE  "FFUISA01"           TO  ���P�|�����e�[�u���h�c  
007470           MOVE  "READ"               TO  ���P�|��������          
007480           MOVE  �t�@�C�����         TO  ���P�|�f�[�^���e        
007490           MOVE  "��K�p���t�@�C���ǂݍ��݃G���["               
007500                                      TO  ���P�|���̑����b�Z�[�W  
007510           CALL  CLOCO001          USING  IF-CHOCO001             
007520           MOVE  "N"                  TO  �ُ�I���|�t���O        
007530*                                                                 
007540        WHEN  -10                                                 
007550*--<       �n�q�`�b�k�d�ڑ����s >                                 
007560           MOVE  "1"                  TO  ���P�|�C�x���g���      
007570           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
007580           MOVE  "9"                  TO  ���P�|���A�R�[�h        
007590           MOVE  "CONNECT"            TO  ���P�|��������          
007600           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
007610           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
007620           CALL  CLOCO001          USING  IF-CHOCO001             
007630*                                                                 
007640        WHEN  -20                                                 
007650*--<       �J�[�\���I�[�v�����s >                                 
007660           MOVE  "1"                  TO  ���P�|�C�x���g���      
007670           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
007680           MOVE  "9"                  TO  ���P�|���A�R�[�h        
007690           MOVE  "JOM_MST"            TO  ���P�|�����e�[�u���h�c  
007700           MOVE  "OPEN"               TO  ���P�|��������          
007710           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
007720           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
007730           CALL  CLOCO001          USING  IF-CHOCO001             
007740*                                                                 
007750        WHEN  -30                                                 
007760*--<       �W�������i�̓Ǎ����s >                                 
007770           MOVE  "1"                  TO  ���P�|�C�x���g���      
007780           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
007790           MOVE  "9"                  TO  ���P�|���A�R�[�h        
007800           MOVE  "JOM_MST"            TO  ���P�|�����e�[�u���h�c  
007810           MOVE  "FETCH"              TO  ���P�|��������          
007820           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
007830           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
007840           CALL  CLOCO001          USING  IF-CHOCO001             
007850*                                                                 
007860        WHEN  -40                                                 
007870*--<       �]���[�X��g��R�[�h���擾���Ȃ� >                     
007880           MOVE  "2"                  TO  ���P�|�C�x���g���      
007890           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
007900           MOVE  "9"                  TO  ���P�|���A�R�[�h        
007910           MOVE  "IKO004"             TO  ���P�|�����e�[�u���h�c  
007920           MOVE  "SELECT"             TO  ���P�|��������          
007930           MOVE  �v�r�|�W�������i     TO  ���P�|�L�[���          
007940           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
007950           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
007960           CALL  CLOCO001          USING  IF-CHOCO001             
007970           MOVE  "N"                  TO  �ُ�I���|�t���O        
007980*                                                                 
007990        WHEN  -50                                                 
008000*--<       ���Y�R�[�h�ϊ��}�X�^�ǉ����s >                         
008010           MOVE  "1"                  TO  ���P�|�C�x���g���      
008020           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
008030           MOVE  "9"                  TO  ���P�|���A�R�[�h        
008040           MOVE  "D077SSH"            TO  ���P�|�����e�[�u���h�c  
008050           MOVE  "INSERT"             TO  ���P�|��������          
008060           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
008070           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
008080           CALL  CLOCO001          USING  IF-CHOCO001             
008090*                                                                 
008100        WHEN  OTHER                                               
008110           MOVE  "N"                  TO  �ُ�I���|�t���O        
008120     END-EVALUATE.                                                
008130*                                                                 
008140     IF  �ُ�I���|�t���O  =  "Y"                                 
008150*----------------------------------------------------------------*
008160*    �I�����b�Z�[�W�o�͏���                                      *
008170*----------------------------------------------------------------*
008180        PERFORM  �I�����b�Z�[�W�o��                               
008190*                                                                 
008200        PERFORM  �c�a���[���o�b�N����                             
008210*--<    �v���O�������^�[���R�[�h >                                
008220        MOVE  �萔�|�ُ���          TO  PROGRAM-STATUS          
008230        EXIT  PROGRAM                                             
008240     END-IF.                                                      
008250*                                                                 
008260 �G���[�����|�d�w�h�s.                                            
008270      EXIT.                                                       
008280******************************************************************
008290*                  END OF PROGRAM                                *
008300******************************************************************