000010******************************************************************
000020*         ���C�P�(��A)��                                     *
000030*      1. �v���O������    �F���Y���ڍs<SUMMIT>                 *
000040*      2. �v���O����ID    �FCOBIS770                             *
000050*      3. �����T�v        �F���Y���ׁA�V�����ԍ��̔ԃe�[�u����� *
000060*                           ���Y���e�[�u�����X�V����           *
000070*      4. �쐬��          �F��  �v                               *
000080*      5. �쐬��          �F2005.04.05                           *
000090******************************************************************
000100*                                                                 
000110******************************************************************
000120*    �h�c�d�m�s�h�e�h�b�`�s�h�n�m  �c�h�u�h�r�h�n�m              *
000130******************************************************************
000140 IDENTIFICATION                       DIVISION.                   
000150*                                                                 
000160 PROGRAM-ID.                          COBIS770.                   
000170******************************************************************
000180*    �d�m�u�h�q�n�m�l�d�m�s        �c�h�u�h�r�h�n�m              *
000190******************************************************************
000200 ENVIRONMENT                          DIVISION.                   
000210******************************************************************
000220*    �h�m�o�t�s�|�n�t�s�o�t�s      �r�d�b�s�h�n�m                *
000230******************************************************************
000240 INPUT-OUTPUT                         SECTION.                    
000250 FILE-CONTROL.                                                    
000260*                                                                 
000270     SELECT         ���̓t�@�C��      ASSIGN    TO   U01          
000280     FILE   STATUS    IS     �v�|���                             
000290     ORGANIZATION   IS     LINE       SEQUENTIAL.                 
000300*                                                                 
000310******************************************************************
000320*    �c�`�s�`                      �c�h�u�h�r�h�n�m              *
000330******************************************************************
000340 DATA                                 DIVISION.                   
000350******************************************************************
000360*    �e�h�k�d                      �r�d�b�s�h�n�m                *
000370******************************************************************
000380 FILE                                 SECTION.                    
000390*----------------------------------------------------------------*
000400*    ���̓t�@�C��                                                *
000410*----------------------------------------------------------------*
000420 FD  ���̓t�@�C��                                                 
000430     LABEL  RECORD    IS              STANDARD                    
000440     BLOCK  CONTAINS  0               RECORDS.                    
000450*                                                                 
000460 01  ���́|���R�[�h.                                              
000470     COPY   CPBIS165   REPLACING      ==()==  BY  ==���́|==.     
000480*                                                                 
000490******************************************************************
000500*  �v�n�q�j�h�m�f�|�r�s�n�q�`�f�d  �r�d�b�s�h�n�m                *
000510******************************************************************
000520 WORKING-STORAGE                      SECTION.                    
000530*----------------------------------------------------------------*
000540*    �z�X�g�ϐ���`�G���A                                        *
000550*----------------------------------------------------------------*
000560     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS770\CO
      -    "BIS770.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(99) VALUE "select �V�����ԍ�   into :b1  fro
      -     "m IKOTBL010 where ((�_��ԍ�=:b2 and �����ԍ�=:b3) and ���
      -    "��=:b4)".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(159) VALUE "update D921SIJ_TBL  set �����ی�
      -    "�Q�����t�ۋ敪=:b1,�����ی��Q�t�ۓ�=:b2,�����ی��Q�����t�ۊJ
      -    "�n�N����=:b3,�����ی��Q�����ی���=:b4,�����ی��Q���̗L��=:b5
      -     ",������".

           02  FILLER PIC X(160) VALUE  "���Q���̓�=:b6,�����ی��Q�ی��p
      -     "��=:b7,�����ی��Q�ی�����=:b8,�����ی��Q�ی����i=:b9,������
      -    "���Q�Ԗߕی���=:b10,�����ی��Q�����ی��،��ԍ�=:b11,�����ی�
      -    "�Q�t�ۗ�=:".

           02  FILLER PIC X(160) VALUE "b12,�����ی��Q�p�����[�X���p�Ώ�
      -    "�z=:b13,�����ی��Q�ݒu�ꏊ���J�i=:b14,�M�p�ی��Q�M�p�ی����
      -    "�R�[�h=:b15,�M�p�ی��Q�@�B�ޕ��ރR�[�h=:b16,�M�p�ی��Q�ʒm��
      -    "������=:".

           02  FILLER PIC X(160) VALUE "b17,�M�p�ی��Q�ی���=:b18,�M�p��
      -    "���Q����=:b19,�Œ莑�Y�ŁQ�O�N�x�[�t��R�[�h=:b20,�Œ莑�Y��
      -    "�Q�[�t��R�[�h=:b21,�Œ莑�Y�ŁQ�N�Ŋz=:b22,�Œ莑�Y�ŁQ�O�N
      -    "�x�]���z".

           02  FILLER PIC X(160) VALUE "=:b23,�Œ莑�Y�ŁQ�O�N�x���_�뉿
      -    "=:b24,�Œ莑�Y�ŁQ���N�x�]���z=:b25,�Œ莑�Y�ŁQ���N�x���_��
      -    "��=:b26,��З��_�Q���p��~�t���O=:b27,��З��_�Q���p��~��=:
      -    "b28,���".

           02  FILLER PIC X(160) VALUE "���_�Q�O�����뉿=:b29,��З��_�Q
      -    "�O�������p�z�݌v=:b30,��З��_�Q�O�������p�z�݌v=:b31,��З�
      -    "�_�Q���ݕ뉿=:b32,��З��_�Q���p�뉿=:b33,��З��_�Q��������
      -    "�p�z�݌v".

           02  FILLER PIC X(160) VALUE "=:b34,��З��_�Q�������p�z=:b35,
      -    "�Ǘ���v�Q�O�����뉿=:b36,�Ǘ���v�Q�O�������p�z�݌v=:b37,��
      -    "����v�Q�O�������p�z�݌v=:b38,�Ǘ���v�Q���ݕ뉿=:b39,�Ǘ���
      -    "�v�Q����".

           02  FILLER PIC X(160) VALUE "�����p�z�݌v=:b40,�Ǘ���v�Q����
      -    "���p�z=:b41,�Ŗ��Q�������p=:b42,�Ŗ��Q�������p��=:b43,�Ŗ��Q
      -    "���ʏ��p�����q=:b44,�Ŗ��Q���ʏ��p������=:b45,�Ŗ��Q���ʏ��p
      -    "��=:b46,".

           02  FILLER PIC X(160) VALUE "�Ŗ��Q�O�������{�z�뉿=:b47,�Ŗ�
      -    "�Q�O�����{�z�݌v=:b48,�Ŗ��Q�O���J�z���ߊz=:b49,�Ŗ��Q�O����
      -    "�p�s���z=:b50,�Ŗ��Q�������p���x�z=:b51,�Ŗ��Q�������p���{�z
      -    "=:b52,��".

           02  FILLER PIC X(160) VALUE "���Q�������p���{�z�݌v=:b53,�Ŗ�
      -    "�Q�������p�s���z=:b54,�Ŗ��Q�������p���ߊz=:b55,�Ŗ��Q������
      -    "�p�ւ̐U�֊z=:b56,�Ŗ��Q���������{�z�뉿=:b57,�Ŗ��Q�O�����@
      -     "��뉿=:".

           02  FILLER PIC X(89) VALUE "b58,�Ŗ��Q�������@��뉿=:b59 whe
      -    "re (�L�[���Q�_��ԍ�=:b60 and �L�[���Q�����ԍ�=:b61)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +148295772.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +61.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 61 TIMES.


       01  SQ0002 GLOBAL.
           02  FILLER PIC X(159) VALUE  "select D921SIJ_TBL.�L�[���Q�_
      -    "��ԍ�  ,D921SIJ_TBL.�L�[���Q�����ԍ�  ,D921SIJ_TBL.�����Q
      -    "�����擾���z  ,D921SIJ_TBL.��З��_�Q���ݕ뉿  ,D921SIJ_TBL.
      -     "�Ŗ��Q��".

           02  FILLER PIC X(160) VALUE "�����@��뉿   from D921SIJ_TBL 
      -    "where (D921SIJ_TBL.�L�[���Q�_��ԍ�>'0' and D921SIJ_TBL.�L
      -     "�[���Q�����ԍ�>'0') order by D921SIJ_TBL.�L�[���Q�_���
      -    "��,D921SI".

           02  FILLER PIC X(35) VALUE "J_TBL.�L�[���Q�����ԍ�         
      -    "  ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +227.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +231.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +99.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +310.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +98.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +354.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +361.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +113.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +388.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +148.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +1688.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +813.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +61.
           02     FILLER PIC S9(4) COMP-5 VALUE +61.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +407.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +945.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +422.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +958.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +437.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +979.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000570*                                                                 
000580*--< �e�[�u�����ʕϐ� >                                           
000590 01  �v�r�|�����ԍ�                   PIC  9(04).                 
000600 01  �v�r�|����                     PIC  X(07).                 
000610 01  �v�r�|���I�P                     PIC  X(02).                 
000620*                                                                 
000630*--< �L�[�G���A >                                                 
000640 01  �j�d�x�|�G���A.                                              
000650     03  �m�d�v�L�[.                                              
000660         05  �v�r�|�m�|�_��ԍ�       PIC  X(10).                 
000670         05  �v�r�|�m�|�V�����ԍ�     PIC S9(04) COMP-3.          
000680     03  �n�k�c�L�[.                                              
000690         05  �v�r�|�n�|�_��ԍ�       PIC  X(10).                 
000700         05  �v�r�|�n�|�V�����ԍ�     PIC S9(04) COMP-3.          
000710*                                                                 
000720*--< �n�q�`�b�k�d���ʕϐ� >                                       
000730     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000740*	                                                            
000750*--< �V�����ԍ��̔ԃe�[�u�� >                                     
000010*--���r�p�k���ʕϐ���
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000760     
      *    EXEC  SQL  INCLUDE  IKOTBL010.CBL         END-EXEC.
000770*                                                                 
000780*--< ���Y���e�[�u�� >                                           
000010************************************************
000020* �V�����ԍ��̔ԃe�[�u��(IKOTBL010)
000030************************************************
000040 01  �h�j�n�O�P�O�|�_��ԍ� PIC  X(010).
000050 01  �h�j�n�O�P�O�|�����ԍ� PIC S9(004) COMP-3.
000060 01  �h�j�n�O�P�O�|���� PIC  X(007).
000070 01  �h�j�n�O�P�O�|������� PIC  X(008).
000080 01  �h�j�n�O�P�O�|�V�����ԍ� PIC S9(004) COMP-3.
000090 01  �h�j�n�O�P�O�|�h�m�敪 PIC  X(001).
000790     
      *    EXEC  SQL  INCLUDE  D921SIJ.CBL           END-EXEC.
000800*                                                                 
000810*--< �n�q�`�b�k�d �r�p�k���s��� (SQLCA) >                        
      *****************************************************************
      *   ���Y���e�[�u��(D921SIJ_TBL)
      *****************************************************************
       01  ���Y���e�[�u��.
           03  �c�X�Q�P�|�L�[���|�_��ԍ�
                                     PIC  X(010).
           03  �c�X�Q�P�|�L�[���|�_����
                                     PIC  X(003).
           03  �c�X�Q�P�|�L�[���|�����ԍ�
                                     PIC S9(004) PACKED-DECIMAL.
           03  �c�X�Q�P�|�_����e�|�ă��[�X��
                                     PIC S9(002) PACKED-DECIMAL.
           03  �c�X�Q�P�|�_����e�|��_��敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�_����e�|�_��敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�_����e�|�����敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�_����e�|�_��J�n��
                                     PIC  X(008).
           03  �c�X�Q�P�|�_����e�|�_��I����
                                     PIC  X(008).
           03  �c�X�Q�P�|�_����e�|����
                                     PIC S9(003) PACKED-DECIMAL.
           03  �c�X�Q�P�|�_����e�|���n�N����
                                     PIC  X(008).
           03  �c�X�Q�P�|�_����e�|���������N��
                                     PIC  X(006).
           03  �c�X�Q�P�|�_����e�|�_�񏈗��N��
                                     PIC  X(006).
           03  �c�X�Q�P�|�_����e�|����N����
                                     PIC  X(008).
           03  �c�X�Q�P�|�_����e�|��������N����
                                     PIC  X(008).
           03  �c�X�Q�P�|�_����e�|������������N��
                                     PIC  X(006).
           03  �c�X�Q�P�|�_����e�|��������G���g����
                                     PIC  X(008).
           03  �c�X�Q�P�|�_����e�|�S�����ۃR�[�h
                                     PIC  X(004).
           03  �c�X�Q�P�|�_����e�|�S���҃R�[�h
                                     PIC  X(008).
           03  �c�X�Q�P�|�_����e�|�����R�[�h
                                     PIC  X(009).
           03  �c�X�Q�P�|�_����e�|�_���R�[�h
                                     PIC  X(005).
           03  �c�X�Q�P�|�_����e�|�ڋq�敪
                                     PIC  X(002).
           03  �c�X�Q�P�|���|���菈���R�[�h
                                     PIC S9(002) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|�擾�N����
                                     PIC  X(008).
           03  �c�X�Q�P�|�����|�ړ��N����
                                     PIC  X(008).
           03  �c�X�Q�P�|�����|��ԃt���O
                                     PIC  X(001).
           03  �c�X�Q�P�|�����|�ړ����R
                                     PIC  X(002).
           03  �c�X�Q�P�|�����|���������A��
                                     PIC S9(003) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|�擾���z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|����擾���z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|�����擾���z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|�c���敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�����|�_��c���ݒ�z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|���Ѝw���z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|���Ўc���ݒ�z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|��z�|���z���p��
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|��z�|���z���p��[��
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|�������[�X��
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|����  PIC S9(005) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|���Y���
                                     PIC  X(007).
           03  �c�X�Q�P�|�����|�ϗp�N��
                                     PIC S9(002) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|�������
                                     PIC  X(002).
           03  �c�X�Q�P�|�����|�����Ћ敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�����|�\�t�g�敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�����|���z���Y�敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�����|���Î��Y�敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�����|��Џ��p�敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�����|�Œ莑�Y�ŋ敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�����|�C�O�ݒu�ꏊ�敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�����|���_��ԍ�
                                     PIC  X(010).
           03  �c�X�Q�P�|�����|�������ԍ�
                                     PIC S9(004) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|�����N����
                                     PIC  X(008).
           03  �c�X�Q�P�|�����|�����������ԍ�
                                     PIC S9(004) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����|��������
                                     PIC  X(060).
           03  �c�X�Q�P�|�����|�e�^��
                                     PIC  X(025).
           03  �c�X�Q�P�|�����|�f�B�[�������
                                     PIC  X(009).
           03  �c�X�Q�P�|�����|�f�B�[���R�[�h
                                     PIC  X(005).
           03  �c�X�Q�P�|��񖞗��|���\���t���O
                                     PIC  X(001).
           03  �c�X�Q�P�|��񖞗��|���t���O
                                     PIC  X(001).
           03  �c�X�Q�P�|��񖞗��|���N����
                                     PIC  X(008).
           03  �c�X�Q�P�|��񖞗��|��񏈗��N��
                                     PIC  X(006).
           03  �c�X�Q�P�|��񖞗��|����������N��
                                     PIC  X(006).
           03  �c�X�Q�P�|��񖞗��|��񗝗R
                                     PIC  X(002).
           03  �c�X�Q�P�|��񖞗��|���敪
                                     PIC  X(001).
           03  �c�X�Q�P�|��񖞗��|��񌎐�
                                     PIC S9(003) PACKED-DECIMAL.
           03  �c�X�Q�P�|��񖞗��|������t���O
                                     PIC  X(001).
           03  �c�X�Q�P�|��񖞗��|�������
                                     PIC  X(008).
           03  �c�X�Q�P�|��񖞗��|���������N��
                                     PIC  X(006).
           03  �c�X�Q�P�|��񖞗��|������������N��
                                     PIC  X(006).
           03  �c�X�Q�P�|���������|���p�t���O
                                     PIC  X(001).
           03  �c�X�Q�P�|���������|���������敪
                                     PIC  X(001).
           03  �c�X�Q�P�|���������|�\����ԃt���O
                                     PIC  X(001).
           03  �c�X�Q�P�|���������|���������\���A��
                                     PIC S9(002) PACKED-DECIMAL.
           03  �c�X�Q�P�|���������|����������R�[�h
                                     PIC  X(009).
           03  �c�X�Q�P�|���������|������R�[�h
                                     PIC  X(005).
           03  �c�X�Q�P�|���������|���p�N����
                                     PIC  X(008).
           03  �c�X�Q�P�|���������|���p�����N��
                                     PIC  X(006).
           03  �c�X�Q�P�|���������|���p����
                                     PIC S9(003) PACKED-DECIMAL.
           03  �c�X�Q�P�|���������|���p���R
                                     PIC  X(002).
           03  �c�X�Q�P�|���������|���p����敪
                                     PIC  X(001).
           03  �c�X�Q�P�|���������|���p��������N��
                                     PIC  X(006).
           03  �c�X�Q�P�|���p�|���p�t���O
                                     PIC  X(001).
           03  �c�X�Q�P�|���p�|���p�񎟍σt���O
                                     PIC  X(001).
           03  �c�X�Q�P�|���p�|���p���_��ԍ�
                                     PIC  X(010).
           03  �c�X�Q�P�|���p�|���p�������ԍ�
                                     PIC S9(004) PACKED-DECIMAL.
           03  �c�X�Q�P�|���p�|���p�����N��
                                     PIC  X(006).
           03  �c�X�Q�P�|���p�|���p��
                                     PIC  X(008).
           03  �c�X�Q�P�|���p�|���p���뉿
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|���p�|���p�����p�݌v�z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|���p�|���p����N����
                                     PIC  X(008).
           03  �c�X�Q�P�|�����ی��|�����t�ۋ敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�����ی��|�t�ۓ�
                                     PIC  X(008).
           03  �c�X�Q�P�|�����ی��|�t�ۓ���
                                     PIC S9(003) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����ی��|�����t�ۊJ�n�N����
                                     PIC  X(008).
           03  �c�X�Q�P�|�����ی��|�����ی���
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����ی��|���̗L��
                                     PIC  X(001).
           03  �c�X�Q�P�|�����ی��|���̓�
                                     PIC  X(008).
           03  �c�X�Q�P�|�����ی��|�ی��p��
                                     PIC  X(001).
           03  �c�X�Q�P�|�����ی��|�ی�����
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����ی��|�ی����i
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����ی��|�Ԗߕی���
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����ی��|�����ی��،��ԍ�
                                     PIC  X(011).
           03  �c�X�Q�P�|�����ی��|�t�ۗ�
                                     PIC S9(002) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����ی��|�p�����[�X���p�Ώۊz
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�����ی��|�ݒu�ꏊ���J�i
                                     PIC  X(080).
           03  �c�X�Q�P�|�����ی��|�����ی��敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�M�p�ی��|�M�p�ی��敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�M�p�ی��|�ی���Ћ敪
                                     PIC  X(004).
           03  �c�X�Q�P�|�M�p�ی��|�M�p�ی���ЃR�[�h
                                     PIC  X(001).
           03  �c�X�Q�P�|�M�p�ی��|�@�B�ޕ��ރR�[�h
                                     PIC  X(002).
           03  �c�X�Q�P�|�M�p�ی��|�ʒm��������
                                     PIC  X(008).
           03  �c�X�Q�P�|�M�p�ی��|�ʒm���ԍ�
                                     PIC S9(003) PACKED-DECIMAL.
           03  �c�X�Q�P�|�M�p�ی��|�ی���
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�M�p�ی��|����
                                     PIC  X(005).
           03  �c�X�Q�P�|�M�p�ی��|�_�񑍊z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�M�p�ی��|�T�����ׂ����z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�M�p�ی��|�ȍ~����T�C�g
                                     PIC S9(002) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Œ莑�Y�Ł|�c����
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Œ莑�Y�Ł|�O�N�x�[�t��R�[�h
                                     PIC  X(011).
           03  �c�X�Q�P�|�Œ莑�Y�Ł|�[�t��R�[�h
                                     PIC  X(006).
           03  �c�X�Q�P�|�Œ莑�Y�Ł|�Œ莑�Y�ŗ�
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Œ莑�Y�Ł|�Ώێ擾���z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Œ莑�Y�Ł|�N�Ŋz
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Œ莑�Y�Ł|�O�N�x�]���z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Œ莑�Y�Ł|�O�N�x���_�뉿
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Œ莑�Y�Ł|���N�x�]���z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Œ莑�Y�Ł|���N�x���_�뉿
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Œ莑�Y�Ł|�c�����B�t���O
                                     PIC  X(001).
           03  �c�X�Q�P�|�Œ莑�Y�Ł|�c�����B�N��
                                     PIC  X(006).
           03  �c�X�Q�P�|�Œ莑�Y�Ł|�\���t���O
                                     PIC  X(001).
           03  �c�X�Q�P�|�O���|�O����ԃt���O
                                     PIC  X(001).
           03  �c�X�Q�P�|�O���|�O�����������N��
                                     PIC  X(006).
           03  �c�X�Q�P�|�O���|�O���_��J�n��
                                     PIC  X(008).
           03  �c�X�Q�P�|�O���|�O���ă��[�X��
                                     PIC S9(002) PACKED-DECIMAL.
           03  �c�X�Q�P�|�O���|�O������
                                     PIC  X(008).
           03  �c�X�Q�P�|�O���|�O�����N��
                                     PIC  X(006).
           03  �c�X�Q�P�|�O���|�O�����p��
                                     PIC  X(008).
           03  �c�X�Q�P�|�O���|�O�����p�N��
                                     PIC  X(006).
           03  �c�X�Q�P�|�O���|�O�����p���R
                                     PIC  X(002).
           03  �c�X�Q�P�|�O���|�����񗝗R
                                     PIC  X(002).
           03  �c�X�Q�P�|�O���|�O�����N����
                                     PIC  X(008).
           03  �c�X�Q�P�|�O���|�k�y�����敪
                                     PIC  X(001).
           03  �c�X�Q�P�|�O���|�k�y�����N��
                                     PIC  X(006).
           03  �c�X�Q�P�|�O���|�O���o�ߌ���
                                     PIC S9(003) PACKED-DECIMAL.
           03  �c�X�Q�P�|���ʁ|�����N��
                                     PIC  X(006).
           03  �c�X�Q�P�|���ʁ|����N��
                                     PIC  X(006).
           03  �c�X�Q�P�|���ʁ|�����N��
                                     PIC  X(006).
           03  �c�X�Q�P�|���ʁ|�ǉ������t���O
                                     PIC  X(001).
           03  �c�X�Q�P�|���ʁ|�擾�N�x
                                     PIC  X(004).
           03  �c�X�Q�P�|���ʁ|���p����
                                     PIC S9(003) PACKED-DECIMAL.
           03  �c�X�Q�P�|���ʁ|���������p�o�ߌ���
                                     PIC S9(003) PACKED-DECIMAL.
           03  �c�X�Q�P�|���ʁ|�������p����
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|���ʁ|�����敪
                                     PIC  X(001).
           03  �c�X�Q�P�|���ʁ|�������p�Ώۃt���O
                                     PIC  X(001).
           03  �c�X�Q�P�|���ʁ|�藦���p�����\�t���O
                                     PIC  X(001).
           03  �c�X�Q�P�|��З��_�|���p��~�t���O
                                     PIC  X(001).
           03  �c�X�Q�P�|��З��_�|���p��~��
                                     PIC  X(008).
           03  �c�X�Q�P�|��З��_�|�O�����뉿
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|��З��_�|�O�������p�z�݌v
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|��З��_�|���p�c���ݒ�z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|��З��_�|�O�����p�z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|��З��_�|�O�������p�z�݌v
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|��З��_�|���ݕ뉿
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|��З��_�|���p�뉿
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|��З��_�|���������p�z�݌v
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|��З��_�|�������p�z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|��З��_�|�������p�z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ǘ���v�|�O�����뉿
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ǘ���v�|�O�������p�z�݌v
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ǘ���v�|�O�����p�z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ǘ���v�|�O�������p�z�݌v
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ǘ���v�|���ݕ뉿
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ǘ���v�|���������p�z�݌v
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ǘ���v�|�������p�z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ǘ���v�|�������p�z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|���p��
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�������p
                                     PIC  X(002).
           03  �c�X�Q�P�|�Ŗ��|�������p��
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�������p��
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|���ʏ��p�����q
                                     PIC S9(002) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|���ʏ��p������
                                     PIC S9(003) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|���ʏ��p��
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�O�������{�z�뉿
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�O�����{�z�݌v
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�O���J�z���ߊz
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�O�����p�s���z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�������p���x�z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�������p���{�z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�������p���{�z�݌v
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�������p�s���z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�������p���ߊz
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�������p�ւ̐U�֊z
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|���������{�z�뉿
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�\���c�����B�t���O
                                     PIC  X(001).
           03  �c�X�Q�P�|�Ŗ��|�Ŗ��\���c�����B�N��
                                     PIC  X(006).
           03  �c�X�Q�P�|�Ŗ��|�O�����@��뉿
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ŗ��|�������@��뉿
                                     PIC S9(013) PACKED-DECIMAL.
           03  �c�X�Q�P�|�Ǘ����|�o�^�N����
                                     PIC  X(008).
           03  �c�X�Q�P�|�Ǘ����|�o�^����
                                     PIC  X(008).
           03  �c�X�Q�P�|�Ǘ����|�o�^�S����
                                     PIC  X(008).
           03  �c�X�Q�P�|�Ǘ����|�X�V�N����
                                     PIC  X(008).
           03  �c�X�Q�P�|�Ǘ����|�X�V����
                                     PIC  X(008).
           03  �c�X�Q�P�|�Ǘ����|�X�V��
                                     PIC  X(008).
           03  �c�X�Q�P�|�Ǘ����|���͒S���҃R�[�h
                                     PIC  X(008).
000820     
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
000830*                                                                 
000840*                                                                 
000850     
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
000860*                                                                 
000870*----------------------------------------------------------------*
000880*    �v�n�q�j�G���A                                              *
000890*----------------------------------------------------------------*
000900 01  �v�n�q�j�|�G���A.                                            
000910*                                                                 
000920*--< �G���[����p >                                               
000930     03  �v�|�G���[�R�[�h             PIC S9(04).                 
000940*                                                                 
000950*--< �t�@�C����� >                                               
000960     03  �v�|��ԃG���A.                                          
000970         05  �v�|���                 PIC  X(02).                 
000980*                                                                 
000990*--< �t���O�A���A >                                               
001000     03  �t���O�A���A.                                            
001010         05  �v�|�I���|�t���O         PIC  X(01).                 
001020         05  �v�|�ُ�I���|�t���O     PIC  X(01).                 
001030*                                                                 
001040*--< �����G���A >                                                 
001050     03  �����G���A.                                              
001060         05  �v�|���́|�����P         PIC  9(09).                 
001070         05  �v�|���́|�����Q         PIC  9(09).                 
001080         05  �v�|�X�V�|����           PIC  9(09).                 
001090*                                                                 
001100*--< ���ʏ�� >                                                   
001110 01  �v�|���ʏ��.                                                
001120     03  �v�|�V�X�e�����t.                                        
001130         05  �v�|���I                 PIC  X(02) VALUE  "20".     
001140         05  �v�|�N����               PIC  X(06).                 
001150     03  �v�|�V�X�e������             PIC  X(08).                 
001160     03  �v�|�S����                   PIC  X(08) VALUE "IKOPG   ".
001170*                                                                 
001180*----------------------------------------------------------------*
001190*    �T�u���[�`����                                              *
001200*----------------------------------------------------------------*
001210 01  CALL-AREA.                                                   
001220*--< ���ʃ��O�T�u���[�`�� >                                       
001230     03  CLOCO001                     PIC X(08) VALUE "CLOCO001". 
001240     03  COBCO001                     PIC X(08) VALUE "COBCO001". 
001250*                                                                 
001260*----------------------------------------------------------------*
001270*    �b�n�o�x�̈�                                                *
001280*----------------------------------------------------------------*
001290*--< ���ʃ��O�p�p�����[�^ >                                       
001300 01  IF-CHOCO001.                                                 
001310     COPY  CHOCO001  REPLACING  ==()==  BY  ==���P�|==.           
001320*                                                                 
001330*----------------------------------------------------------------*
001340*    �h�m�h�t�@�C���Ǎ��T�u���[�`���p�p�����^�̈�                *
001350*----------------------------------------------------------------*
001360 01  PARA-AREA.                                                   
001370     COPY CPBCO001.                                               
001380******************************************************************
001390*    �萔�p�f�[�^��`�G���A                                      *
001400******************************************************************
001410 CONSTANT                             SECTION.                    
001420 01  �萔�̈�.                                                    
001430     03  �萔�|�v���O�����h�c         PIC X(08) VALUE "COBIS770". 
001440     03  �萔�|�v���O������           PIC X(80)                   
001450                                    VALUE  "���Y���ڍs<SUMMIT>".
001460     03  �萔�|�r�p�k�n�j             PIC S9(04)  VALUE  ZERO.    
001470     03  �萔�|�r�p�k�d�m�c           PIC S9(04)  VALUE  0100.    
001480     03  �萔�|������               PIC S9(04)  VALUE  ZERO.    
001490     03  �萔�|�ُ���               PIC S9(04)  VALUE  0009.    
001500******************************************************************
001510*    �o�q�n�b�d�c�t�q�d            �c�h�u�h�r�h�n�m              *
001520******************************************************************
001530 PROCEDURE                            DIVISION.                   
001540*                                                                 
001550     PERFORM  ��������.                                           
001560*                                                                 
001570     PERFORM  �又��  UNTIL  �v�|�I���|�t���O  =  "Y".            
001580*                                                                 
001590     PERFORM  �I������.                                           
001600*                                                                 
001610     STOP     RUN.                                                
001620*                                                                 
001630******************************************************************
001640*    ��������                                        <1.0>       *
001650******************************************************************
001660 ��������                             SECTION.                    
001670 ���������|�r�s�`�q�s.                                            
001680*----------------------------------------------------------------*
001690*    �J�n���b�Z�[�W�o�͏���                          <1.1>       *
001700*----------------------------------------------------------------*
001710     INITIALIZE                       IF-CHOCO001.                
001720     MOVE  "3"                        TO  ���P�|�C�x���g���.     
001730     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
001740     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
001750     MOVE  "START"                    TO  ���P�|��������.         
001760     MOVE  �萔�|�v���O������         TO  ���P�|���̑����b�Z�[�W. 
001770     CALL  CLOCO001                USING  IF-CHOCO001.            
001780*                                                                 
001790*----------------------------------------------------------------*
001800*    ��Ɨ̈�̏����l����                            <1.2>       *
001810*----------------------------------------------------------------*
001820     MOVE  SPACE                      TO  �v�n�q�j�|�G���A.       
001830     INITIALIZE                           �v�n�q�j�|�G���A.       
001840*                                                                 
001850*--< �b�o�t���t���擾 >                                           
001860     ACCEPT  �v�|�N����               FROM  DATE.                 
001870*--< �b�o�t�������擾 >                                           
001880     ACCEPT  �v�|�V�X�e������         FROM  TIME.                 
001890*                                                                 
001900*--< �n�q�`�b�k�d�ڑ� >                                           
001910     PERFORM   �n�q�`�b�k�d�ڑ�.                                  
001920*                                                                 
001930*--< �t�@�C���I�[�v�� >                                           
001940     PERFORM  �t�@�C���I�[�v��.                                   
001950*                                                                 
001960*--< �t�@�C���Ǎ����� >                                           
001970     PERFORM  �t�@�C���Ǎ�����.                                   
001980*                                                                 
001990*--< �V�����ԍ��̔� >                                             
002000     PERFORM  �V�����ԍ��̔�.                                     
002010*                                                                 
002020*--< �J�[�\���錾 >                                               
002030     PERFORM  �J�[�\���錾.                                       
002040*                                                                 
002050*--< �e�[�u���J�[�\���Ǎ�>                                        
002060     PERFORM  �e�[�u���J�[�\���Ǎ�.                               
002070*                                                                 
002080 ���������|�d�w�h�s.                                              
002090*                                                                 
002100******************************************************************
002110*    �n�q�`�b�k�d�ڑ�                                <1.3>       *
002120******************************************************************
002130 �n�q�`�b�k�d�ڑ�                     SECTION.                    
002140 �n�q�`�b�k�d�ڑ��|�r�s�`�q�s.                                    
002150*                                                                 
002160*--< �c�a�ڑ��p�����擾���� >                                   
002170     CALL  COBCO001                USING  PARA-AREA.              
002180*                                                                 
002190     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002200     MOVE  PARA-USERNAME              TO  USERNAME.               
002210     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002220*                                                                 
002230*----------------------------------------------------------------*
002240*    �J�n�ڑ�                                                    *
002250*----------------------------------------------------------------*
002260     IF    DB-STRING  =  SPACE                                    
002270        
      *       EXEC SQL                                                  
002280*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002290*       END-EXEC 
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
002300     ELSE                                                         
002310        
      *       EXEC SQL                                                  
002320*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002330*            USING  :DB-STRING                                    
002340*       END-EXEC 
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
002350     END-IF.                                                      
002360*                                                                 
002370*----------------------------------------------------------------*
002380*    �ڑ��m�F                                                    *
002390*----------------------------------------------------------------*
002400     EVALUATE  SQLCODE                                            
002410        WHEN   �萔�|�r�p�k�n�j                                   
002420           CONTINUE                                               
002430        WHEN   OTHER                                              
002440*--<       �ڑ��G���[ >                                           
002450           MOVE     -10               TO  �v�|�G���[�R�[�h        
002460           PERFORM  �G���[����                                    
002470     END-EVALUATE.                                                
002480*                                                                 
002490 �n�q�`�b�k�d�ڑ��|�d�w�h�s.                                      
002500     EXIT.                                                        
002510******************************************************************
002520*    �t�@�C���I�[�v��                                <1.4>       *
002530******************************************************************
002540*                                                                 
002550 �t�@�C���I�[�v��                     SECTION.                    
002560 �t�@�C���I�[�v���|�r�s�`�q�s.                                    
002570*                                                                 
002580     OPEN  INPUT   ���̓t�@�C��.                                  
002590*                                                                 
002600*----------------------------------------------------------------*
002610*    �t�@�C���I�[�v����Ԕ���                                    *
002620*----------------------------------------------------------------*
002630     EVALUATE  �v�|���                                           
002640        WHEN  ZERO                                                
002650           CONTINUE                                               
002660        WHEN  OTHER                                               
002670*--<       �t�@�C���I�[�v���G���[ >                               
002680           MOVE     -20                TO  �v�|�G���[�R�[�h       
002690           PERFORM  �G���[����                                    
002700     END-EVALUATE.                                                
002710 �t�@�C���I�[�v���|�d�w�h�s.                                      
002720     EXIT.                                                        
002730*                                                                 
002740******************************************************************
002750*    �t�@�C���Ǎ�����                                <1.5>       *
002760******************************************************************
002770 �t�@�C���Ǎ�����                 SECTION.                        
002780 �t�@�C���Ǎ������|�r�s�`�q�s.                                    
002790*                                                                 
002800     READ  ���̓t�@�C��                                           
002810        AT END                                                    
002820           MOVE  "Y"                  TO  �v�|�I���|�t���O        
002830           MOVE  HIGH-VALUE           TO  �v�r�|�m�|�_��ԍ�      
002840           GO  TO  �t�@�C���Ǎ������|�d�w�h�s                     
002850     END-READ.                                                    
002860*                                                                 
002870*--< �t�@�C���Ǎ���Ԕ��� >                                       
002880     EVALUATE  �v�|���                                           
002890        WHEN  ZERO                                                
002900*--<       �t�@�C���}�b�`���O�L�[�̃Z�b�g >                       
002910           MOVE  ���́|�_��m�n       TO  �v�r�|�m�|�_��ԍ�      
002920           MOVE  ���́|�����m�n       TO  �v�r�|�����ԍ�          
002930           MOVE  ���́|�j�d�x�|���� TO  �v�r�|����            
002940*--<       �t�@�C�����͌����̉��Z >                               
002950           COMPUTE   �v�|���́|�����P =  �v�|���́|�����P + 1     
002960        WHEN  OTHER                                               
002970*--<       �t�@�C���Ǎ��G���[ >                                   
002980           MOVE     -30               TO  �v�|�G���[�R�[�h        
002990           PERFORM  �G���[����                                    
003000     END-EVALUATE.                                                
003010*                                                                 
003020 �t�@�C���Ǎ������|�d�w�h�s.                                      
003030     EXIT.                                                        
003040******************************************************************
003050*   �V�����ԍ��̔�                                   <1.6>       *
003060******************************************************************
003070 �V�����ԍ��̔�                       SECTION.                    
003080 �V�����ԍ��̔ԁ|�r�s�`�q�s.                                      
003090*                                                                 
003100     
      *    EXEC  SQL                                                    
003110*       SELECT  �V�����ԍ�                                        
003120*         INTO :�v�r�|�m�|�V�����ԍ�                              
003130*         FROM  IKOTBL010                                         
003140*        WHERE  �_��ԍ� = :�v�r�|�m�|�_��ԍ�                    
003150*          AND  �����ԍ� = :�v�r�|�����ԍ�                        
003160*          AND  ���� = :�v�r�|����                        
003170*    END-EXEC.
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
               �v�r�|�m�|�V�����ԍ� IN
               �m�d�v�L�[ IN
               �j�d�x�|�G���A
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               �v�r�|�m�|�_��ԍ� IN
               �m�d�v�L�[ IN
               �j�d�x�|�G���A
               SQL-SQHSTV(2)
           MOVE 10 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               �v�r�|�����ԍ�
               SQL-SQHSTV(3)
           MOVE 4 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               �v�r�|����
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
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
003180*                                                                 
003190*----------------------------------------------------------------*
003200*    �V�����ԍ��̔ԓǍ��m�F                                      *
003210*----------------------------------------------------------------*
003220     EVALUATE  SQLCODE                                            
003230        WHEN  �萔�|�r�p�k�n�j                                    
003240*--<       �V�����ԍ��̔Ԍ����̉��Z >                             
003250           COMPUTE   �v�|���́|�����Q =  �v�|���́|�����Q + 1     
003260        WHEN  OTHER                                               
003270*--<       �V�����ԍ��̔ԃG���[ >                                 
003280           MOVE      -40              TO  �v�|�G���[�R�[�h        
003290           PERFORM   �G���[����                                   
003300     END-EVALUATE.                                                
003310*                                                                 
003320 �V�����ԍ��̔ԁ|�d�w�h�s.                                        
003330     EXIT.                                                        
003340*                                                                 
003350******************************************************************
003360*    �J�[�\���錾                                    <1.7>       *
003370******************************************************************
003380 �J�[�\���錾                         SECTION.                    
003390 �J�[�\���錾�|�r�s�`�q�s.                                        
003400*                                                                 
003410*----------------------------------------------------------------*
003420*    �J�[�\���錾                                                 
003430*----------------------------------------------------------------*
003440     
      *    EXEC  SQL                                                    
003450*       DECLARE CUR1  CURSOR FOR                                  
003460*          SELECT  D921SIJ_TBL.�L�[���Q�_��ԍ�                 
003470*                 ,D921SIJ_TBL.�L�[���Q�����ԍ�                 
003480*                 ,D921SIJ_TBL.�����Q�����擾���z                 
003490*                 ,D921SIJ_TBL.��З��_�Q���ݕ뉿                 
003500* 	        ,D921SIJ_TBL.�Ŗ��Q�������@��뉿               
003510*            FROM  D921SIJ_TBL                                    
003520*           WHERE  D921SIJ_TBL.�L�[���Q�_��ԍ� > '0'           
003530*             AND  D921SIJ_TBL.�L�[���Q�����ԍ� > '0'           
003540*        ORDER BY  D921SIJ_TBL.�L�[���Q�_��ԍ�                 
003550*                 ,D921SIJ_TBL.�L�[���Q�����ԍ�                 
003560*    END-EXEC.
003570*                                                                 
003580*----------------------------------------------------------------*
003590*    �J�[�\���n�o�d�m����                                        *
003600*----------------------------------------------------------------*
003610     
      *    EXEC  SQL                                                    
003620*       OPEN  CUR1                                                
003630*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 98 TO SQL-OFFSET
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
003640*                                                                 
003650*----------------------------------------------------------------*
003660*    �J�[�\���n�o�d�m�m�F                                        *
003670*----------------------------------------------------------------*
003680     EVALUATE  SQLCODE                                            
003690        WHEN  �萔�|�r�p�k�n�j                                    
003700*--<       ���� >                                                 
003710           CONTINUE                                               
003720        WHEN  OTHER                                               
003730*--<       �J�[�\���n�o�d�m�G���[ >                               
003740           MOVE -50                   TO  �v�|�G���[�R�[�h        
003750           PERFORM  �G���[����                                    
003760     END-EVALUATE.                                                
003770*                                                                 
003780 �J�[�\���錾�|�d�w�h�s.                                          
003790     EXIT.                                                        
003800*                                                                 
003810******************************************************************
003820*    �e�[�u���J�[�\���Ǎ�                        <1.8>           *
003830******************************************************************
003840 �e�[�u���J�[�\���Ǎ�             SECTION.                        
003850 �e�[�u���J�[�\���Ǎ��|�r�s�`�q�s.                                
003860*                                                                 
003870*--< �e�[�u���J�[�\���Ǎ� >                                       
003880     
      *    EXEC SQL                                                     
003890*        FETCH  CUR1                                              
003900*         INTO  :�c�X�Q�P�|�L�[���|�_��ԍ�                     
003910*              ,:�c�X�Q�P�|�L�[���|�����ԍ�                     
003920*              ,:�c�X�Q�P�|�����|�����擾���z                     
003930*              ,:�c�X�Q�P�|��З��_�|���ݕ뉿                     
003940* 	     ,:�c�X�Q�P�|�Ŗ��|�������@��뉿                   
003950*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 113 TO SQL-OFFSET
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
               �c�X�Q�P�|�L�[���|�_��ԍ� IN
               ���Y���e�[�u��
               SQL-SQHSTV(1)
           MOVE 10 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               �c�X�Q�P�|�L�[���|�����ԍ� IN
               ���Y���e�[�u��
               SQL-SQHSTV(2)
           MOVE 3 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����|�����擾���z IN
               ���Y���e�[�u��
               SQL-SQHSTV(3)
           MOVE 7 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               �c�X�Q�P�|��З��_�|���ݕ뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�������@��뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(5)
           MOVE 7 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
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
003960*----------------------------------------------------------------*
003970*    �e�[�u���J�[�\���Ǎ����m�F                                  *
003980*----------------------------------------------------------------*
003990     EVALUATE   SQLCODE                                           
004000        WHEN   �萔�|�r�p�k�n�j                                   
004010*--<       ���� >                                                 
004020           CONTINUE                                               
004030        WHEN   �萔�|�r�p�k�d�m�c                                 
004040*--<       �Ǎ��I�� >                                             
004050           PERFORM  �t�@�C���Ǎ�����                              
004060        WHEN   OTHER                                              
004070*--<       �Ǎ��G���[ >                                           
004080           MOVE     -60               TO  �v�|�G���[�R�[�h        
004090           PERFORM  �G���[����                                    
004100           PERFORM  �t�@�C���Ǎ�����                              
004110     END-EVALUATE.                                                
004120*                                                                 
004130 �e�[�u���J�[�\���Ǎ��|�d�w�h�s.                                  
004140     EXIT.                                                        
004150*                                                                 
004160******************************************************************
004170*    �又��                                          <2.0>       *
004180******************************************************************
004190 �又��                               SECTION.                    
004200 �又���|�r�s�`�q�s.                                              
004210*                                                                 
004220     EVALUATE  TRUE                                               
004230        WHEN  �c�X�Q�P�|�L�[���|�_��ԍ� < �v�r�|�m�|�_��ԍ�   
004240	         PERFORM  �e�[�u���J�[�\���Ǎ�                      
004250        WHEN  �c�X�Q�P�|�L�[���|�_��ԍ� > �v�r�|�m�|�_��ԍ�   
004260*--<       ���Y���ׂ݂̂̏ꍇ>                                    
004270           IF  �v�r�|�m�|�_��ԍ� NOT = �v�r�|�n�|�_��ԍ�        
004280           DISPLAY  "���Y���Ȃ��i�S�Ď��Y���ׂ̍��ځj�F" ,      
004290	                  "�_��ԍ���" , �v�r�|�m�|�_��ԍ�,            
004300                    "�����ԍ���" , �v�r�|�����ԍ�,                
004310	                  "������" , �v�r�|����                     
004320           END-IF                                                 
004330           PERFORM  �t�@�C���Ǎ�����                              
004340        WHEN  �c�X�Q�P�|�L�[���|�_��ԍ� = �v�r�|�m�|�_��ԍ�   
004350           PERFORM  ���Y���ƃ}�b�`���O                          
004370           PERFORM  �t�@�C���Ǎ�����                              
004380           PERFORM  �V�����ԍ��̔�                                
004400	         PERFORM  �e�[�u���J�[�\���Ǎ�                          
004410     END-EVALUATE.                                                
004420*                                                                 
004430 �又���|�d�w�h�s.                                                
004440     EXIT.                                                        
004450*                                                                 
004460******************************************************************
004470*    ���Y���ƃ}�b�`���O                                        *
004480******************************************************************
004490 ���Y���ƃ}�b�`���O                 SECTION.                    
004500 ���Y���ƃ}�b�`���O�|�r�s�`�q�s.                                
004510*                                                                 
004520 	   EVALUATE  TRUE                                           
004530        WHEN  �c�X�Q�P�|�L�[���|�����ԍ� < �v�r�|�m�|�V�����ԍ� 
004540           PERFORM  �e�[�u���J�[�\���Ǎ�                          
004550        WHEN  �c�X�Q�P�|�L�[���|�����ԍ� > �v�r�|�m�|�V�����ԍ� 
004560	         PERFORM  �t�@�C���Ǎ�����                          
004570        WHEN  �c�X�Q�P�|�L�[���|�����ԍ� = �v�r�|�m�|�V�����ԍ� 
004580           PERFORM  ���Y���̃��R�[�h��ǂݍ���                  
004590           PERFORM  ���Y���֘A���ڍX�V                          
004600     END-EVALUATE.                                                
004610*                                                                 
004620 ���Y���ƃ}�b�`���O�|�d�w�h�s.                                  
004630     EXIT.                                                        
004640******************************************************************
004650*    ���Y���̃��R�[�h��ǂݍ���                                *
004660******************************************************************
004670 ���Y���̃��R�[�h��ǂݍ���         SECTION.                    
004680 ���Y���̃��R�[�h��ǂݍ��ށ|�r�s�`�q�s.                        
004690*                                                                 
004700*--< NO.91>                                                       
004710     MOVE  ���́|�t�ۋ敪�|���Y����   TO                          
004720                               �c�X�Q�P�|�����ی��|�����t�ۋ敪.  
004730*                                                                 
004740*--< NO.92>                                                       
004750     STRING  �v�|���I , ���́|�t�ۓ��|�N����                      
004760        DELIMITED  BY  SIZE INTO  �c�X�Q�P�|�����ی��|�t�ۓ�.     
004770*                                                                 
004780*--< NO.94>                                                       
004790     PERFORM  �m�n�X�S�ڍs����.                                   
004800*                                                                 
004810*--< NO.95>                                                       
004820     MOVE  ���́|�����ی���           TO                          
004830                                   �c�X�Q�P�|�����ی��|�����ی���.
004840*                                                                 
004850*--< NO.96>                                                       
004860     MOVE  ���́|���̗L���敪         TO                          
004870                                       �c�X�Q�P�|�����ی��|���̓�.
004880*                                                                 
004890*--< NO.97>                                                       
004900     STRING  �v�|���I , ���́|���̓��|�N����                      
004910        DELIMITED  BY  SIZE  INTO  �c�X�Q�P�|�����ی��|���̓�.    
004920*                                                                 
004930*--< NO.98>                                                       
004940     MOVE  ���́|�ی��V�K�p���敪     TO                          
004950                                     �c�X�Q�P�|�����ی��|�ی��p��.
004960*                                                                 
004970*--< NO.99>                                                       
004980     MOVE  ���́|�����ی�����         TO                          
004990                                     �c�X�Q�P�|�����ی��|�ی�����.
005000*                                                                 
005010*--< NO.100>                                                      
005020     MOVE  ���́|�����ی����i         TO                          
005030                                     �c�X�Q�P�|�����ی��|�ی����i.
005040*                                                                 
005050*--< NO.101>                                                      
005060     MOVE  ���́|�������߂��ی���     TO                          
005070                                   �c�X�Q�P�|�����ی��|�Ԗߕی���.
005080*                                                                 
005090*--< NO.102>                                                      
005100     MOVE  ���́|�����ی��،��ԍ�     TO                          
005110                             �c�X�Q�P�|�����ی��|�����ی��،��ԍ�.
005120*                                                                 
005130*--< NO.103>                                                      
005140     MOVE  ���́|�����ی�����         TO                          
005150                                       �c�X�Q�P�|�����ی��|�t�ۗ�.
005160*                                                                 
005170*--< NO.104>                                                      
005180     MOVE  ���́|�c�����|�p�����[�X���p�Ώۊz      TO           
005190                         �c�X�Q�P�|�����ی��|�p�����[�X���p�Ώۊz.
005200*                                                                 
005210*--< NO.105>                                                      
005220     MOVE  ���́|�ݒu�ꏊ���J�i                      TO           
005230                               �c�X�Q�P�|�����ی��|�ݒu�ꏊ���J�i.
005240*                                                                 
005250*--< NO.109>                                                      
005260     MOVE  ���́|�ی����|�ی���ЃR�[�h            TO           
005270                           �c�X�Q�P�|�M�p�ی��|�M�p�ی���ЃR�[�h.
005280*                                                                 
005290*--< NO.110>                                                      
005300     MOVE  ���́|�M�p�ی��R�[�h�|�@�B�敪            TO           
005310                             �c�X�Q�P�|�M�p�ی��|�@�B�ޕ��ރR�[�h.
005320*                                                                 
005330*--< NO.111>                                                      
005340     STRING  �v�|���I , ���́|�ʒm�����t���|�N����                
005350        DELIMITED  BY  SIZE  INTO                                 
005360                               �c�X�Q�P�|�M�p�ی��|�ʒm��������.  
005370*                                                                 
005380*--< NO.113>                                                      
005390     MOVE  ���́|�M�p�ی���           TO                          
005400                                       �c�X�Q�P�|�M�p�ی��|�ی���.
005410*                                                                 
005420*--< NO.114>                                                      
005430     MOVE  ���́|������A�ԍ�         TO �c�X�Q�P�|�M�p�ی��|����.
005440*                                                                 
005450*--< NO.119>                                                      
005460     MOVE  ���́|�[�t��R�[�h         TO                          
005470                         �c�X�Q�P�|�Œ莑�Y�Ł|�O�N�x�[�t��R�[�h.
005480*                                                                 
005490*--< NO.120>                                                      
005500     MOVE  ���́|�[�t��R�[�h         TO                          
005510                               �c�X�Q�P�|�Œ莑�Y�Ł|�[�t��R�[�h.
005520*                                                                 
005530*--< NO.123>                                                      
005540     MOVE  ���́|�N�Ŋz               TO                          
005550                                     �c�X�Q�P�|�Œ莑�Y�Ł|�N�Ŋz.
005560*                                                                 
005570     MOVE  ���́|�O�N�x�]���z         TO                          
005580                               �c�X�Q�P�|�Œ莑�Y�Ł|�O�N�x�]���z.
005590*                                                                 
005600*--< NO.125>                                                      
005610     MOVE  ���́|�O�N�x���_�뉿       TO                          
005620                             �c�X�Q�P�|�Œ莑�Y�Ł|�O�N�x���_�뉿.
005630*                                                                 
005640*--< NO.126>                                                      
005650     MOVE  ���́|���N�x�]���z         TO                          
005660                               �c�X�Q�P�|�Œ莑�Y�Ł|���N�x�]���z.
005670*                                                                 
005680*--< NO.127>                                                      
005690     MOVE  ���́|���N�x���_�뉿       TO                          
005700                             �c�X�Q�P�|�Œ莑�Y�Ł|���N�x���_�뉿.
005710*                                                                 
005720*--< NO.156>                                                      
005730     PERFORM  �m�n�P�T�U�ڍs����.                                 
005740*                                                                 
005750*--< NO.157>                                                      
005760     PERFORM  �m�n�P�T�V�ڍs����.                                 
005770*                                                                 
005780*--< NO.158>                                                      
005790     MOVE  ���́|��БO�����뉿       TO                          
005800                                   �c�X�Q�P�|��З��_�|�O�����뉿.
005810*                                                                 
005820*--< NO.159>                                                      
005830     COMPUTE  �c�X�Q�P�|��З��_�|�O�������p�z�݌v =              
005840              �c�X�Q�P�|�����|�����擾���z - ���́|��БO�����뉿.
005850*                                                                 
005860*--< NO.162>                                                      
005870     COMPUTE  �c�X�Q�P�|��З��_�|�O�������p�z�݌v =              
005880                �c�X�Q�P�|�����|�����擾���z - ���́|��Ќ��ݕ뉿.
005890*                                                                 
005900*--< NO.163>                                                      
005910     MOVE  ���́|��Ќ��ݕ뉿         TO                          
005920                                     �c�X�Q�P�|��З��_�|���ݕ뉿.
005930*                                                                 
005940*--< NO.164>                                                      
005950     PERFORM  �m�n�P�U�S�ڍs����.                                 
005960*                                                                 
005970*--< NO.165>                                                      
005980     COMPUTE  �c�X�Q�P�|��З��_�|���������p�z�݌v =              
005990                �c�X�Q�P�|�����|�����擾���z - ���́|��Ќ��ݕ뉿.
006000*                                                                 
006010*--< NO.167>                                                      
006020     MOVE  ���́|��Г������p��       TO                          
006030                                   �c�X�Q�P�|��З��_�|�������p�z.
006040*                                                                 
006050*--< NO.168>                                                      
006060     MOVE  ���́|��З��_�O�����뉿   TO                          
006070                                   �c�X�Q�P�|�Ǘ���v�|�O�����뉿.
006080*                                                                 
006090*--< NO.169>                                                      
006100     COMPUTE  �c�X�Q�P�|�Ǘ���v�|�O�������p�z�݌v =              
006110          �c�X�Q�P�|�����|�����擾���z - ���́|��З��_�O�����뉿.
006120*                                                                 
006130*--< NO.171>                                                      
006140     COMPUTE  �c�X�Q�P�|�Ǘ���v�|�O�������p�z�݌v =              
006150          �c�X�Q�P�|�����|�����擾���z - ���́|��З��_�������뉿.
006160*                                                                 
006170*--< NO.172>                                                      
006180     MOVE  ���́|��З��_�������뉿   TO                          
006190                                     �c�X�Q�P�|�Ǘ���v�|���ݕ뉿.
006200*                                                                 
006210*--< NO.173>                                                      
006220     COMPUTE  �c�X�Q�P�|�Ǘ���v�|���������p�z�݌v =              
006230          �c�X�Q�P�|�����|�����擾���z - ���́|��З��_�������뉿.
006240*                                                                 
006250*--< NO.175>                                                      
006260     COMPUTE  �c�X�Q�P�|�Ǘ���v�|�������p�z =                    
006270              ���́|��З��_�O�����뉿 - ���́|��З��_�������뉿.
006280*                                                                 
006290*--< NO.177>                                                      
006300     MOVE  ���́|�Ŗ@�����敪         TO �c�X�Q�P�|�Ŗ��|�������p.
006310*                                                                 
006320*--< NO.179>                                                      
006330     MOVE  ���́|�Ŗ@�������p��       TO                          
006340                                       �c�X�Q�P�|�Ŗ��|�������p��.
006350*                                                                 
006360*--< NO.180>                                                      
006370     MOVE  ���́|�Ŗ@���ʏ��p���|���q TO                          
006380                                   �c�X�Q�P�|�Ŗ��|���ʏ��p�����q.
006390*                                                                 
006400*--< NO.181>                                                      
006410     MOVE  ���́|�Ŗ@���ʏ��p���|���� TO                          
006420                                   �c�X�Q�P�|�Ŗ��|���ʏ��p������.
006430*                                                                 
006440*--< NO.182>                                                      
006450     MOVE  ���́|�Ŗ@���ʏ��p��       TO                          
006460                                       �c�X�Q�P�|�Ŗ��|���ʏ��p��.
006470*                                                                 
006480*--< NO.183>                                                      
006490     MOVE  ���́|�Ŗ@�O�����뉿�@��   TO                          
006500                                 �c�X�Q�P�|�Ŗ��|�O�������{�z�뉿.
006510*                                                                 
006520*--< NO.184>                                                      
006530     COMPUTE  �c�X�Q�P�|�Ŗ��|�O�����{�z�݌v =                    
006540          �c�X�Q�P�|�����|�����擾���z - ���́|�Ŗ@�O�����뉿�@��.
006550*                                                                 
006560*--< NO.185>                                                      
006570     MOVE  ���́|�Ŗ@�J�z���ߊz       TO                          
006580                                   �c�X�Q�P�|�Ŗ��|�O���J�z���ߊz.
006590*                                                                 
006600*--< NO.186>                                                      
006610     PERFORM  �m�n�P�W�U�ڍs����.                                 
006620*                                                                 
006630*--< NO.187>                                                      
006640     MOVE  ���́|�Ŗ@���p���x�z       TO                          
006650                                   �c�X�Q�P�|�Ŗ��|�������p���x�z.
006660*                                                                 
006670*--< NO.188>                                                      
006680     COMPUTE  �c�X�Q�P�|�Ŗ��|�������p���{�z =                    
006690                  ���́|�Ŗ@�O�����뉿�@�� - ���́|�Ŗ@�������뉿.
006700*                                                                 
006710*--< NO.189>                                                      
006720     COMPUTE  �c�X�Q�P�|�Ŗ��|�������p���{�z�݌v =                
006730                  ���́|�Ŗ@�O�����뉿�@�� - ���́|�Ŗ@�������뉿.
006740*                                                                 
006750*--< NO.190>                                                      
006760     PERFORM  �m�n�P�X�O�ڍs����.                                 
006770*                                                                 
006780*--< NO.191>                                                      
006790     MOVE  ���́|�Ŗ@�J�z���ߊz       TO                          
006800                                   �c�X�Q�P�|�Ŗ��|�������p���ߊz.
006810*                                                                 
006820*--< NO.192>                                                      
006830     PERFORM  �m�n�P�X�Q�ڍs����.                                 
006840*                                                                 
006850*--< NO.193>                                                      
006860     MOVE  ���́|�Ŗ@�������뉿       TO                          
006870                                 �c�X�Q�P�|�Ŗ��|���������{�z�뉿.
006880*                                                                 
006890*--< NO.196>                                                      
006900     MOVE  ���́|�Ŗ@�O�����뉿�@��   TO                          
006910                                   �c�X�Q�P�|�Ŗ��|�O�����@��뉿.
006920*                                                                 
006930*--< NO.197>                                                      
006940     MOVE  ���́|�Ŗ@�������뉿       TO                          
006950                                   �c�X�Q�P�|�Ŗ��|�������@��뉿.
006960*                                                                 
006970 ���Y���̃��R�[�h��ǂݍ��ށ|�d�w�h�s.                          
006980     EXIT.                                                        
006990*                                                                 
007000******************************************************************
007010*    �m�n�D�X�S�ڍs����                                          *
007020******************************************************************
007030 �m�n�X�S�ڍs����                     SECTION.                    
007040 �m�n�X�S�ڍs�����|�r�s�`�q�s.                                    
007050     IF  ���́|�t�ۓ��|���I = "0"                                 
007060         MOVE  "19"  TO  �v�r�|���I�P                             
007070     ELSE                                                         
007080        IF  ���́|�t�ۓ��|���I = "1"                              
007090           MOVE  "20"  TO  �v�r�|���I�P                           
007100        END-IF                                                    
007110     END-IF.                                                      
007120     STRING  �v�r�|���I�P , ���́|�t�ۓ��|�N����                  
007130        DELIMITED  BY  SIZE INTO                                  
007140                           �c�X�Q�P�|�����ی��|�����t�ۊJ�n�N����.
007150 �m�n�X�S�ڍs�����|�d�w�h�s.                                      
007160     EXIT.                                                        
007170*                                                                 
007180******************************************************************
007190*    �m�n�D�P�T�U�ڍs����                                        *
007200******************************************************************
007210 �m�n�P�T�U�ڍs����                   SECTION.                    
007220 �m�n�P�T�U�ڍs�����|�r�s�`�q�s.                                  
007230     IF  ���́|���敪 = "0"                                     
007240        MOVE  "0"  TO  �c�X�Q�P�|��З��_�|���p��~�t���O         
007250     ELSE                                                         
007260        MOVE  "1"  TO  �c�X�Q�P�|��З��_�|���p��~�t���O         
007270     END-IF.                                                      
007280 �m�n�P�T�U�ڍs�����|�d�w�h�s.                                    
007290     EXIT.                                                        
007300*                                                                 
007310******************************************************************
007320*    �m�n�D�P�T�V�ڍs����                                        *
007330******************************************************************
007340 �m�n�P�T�V�ڍs����                   SECTION.                    
007350 �m�n�P�T�V�ڍs�����|�r�s�`�q�s.                                  
007360     IF  ���́|�����|���I = "0"                                 
007370        MOVE  "19"  TO  �v�r�|���I�P                              
007380     ELSE                                                         
007390        IF  ���́|�����|���I = "1"                              
007400           MOVE  "20"  TO  �v�r�|���I�P                           
007410        END-IF                                                    
007420     END-IF.                                                      
007430     STRING  �v�r�|���I�P , ���́|�����|�N����                  
007440        DELIMITED  BY  SIZE INTO                                  
007450                                 �c�X�Q�P�|��З��_�|���p��~��.  
007460 �m�n�P�T�V�ڍs�����|�d�w�h�s.                                    
007470     EXIT.                                                        
007480*                                                                 
007490******************************************************************
007500*    �m�n�D�P�U�S�ڍs����                                        *
007510******************************************************************
007520 �m�n�P�U�S�ڍs����                   SECTION.                    
007530 �m�n�P�U�S�ڍs�����|�r�s�`�q�s.                                  
007540     IF  �c�X�Q�P�|���������|���p�t���O = "1"                     
007550        MOVE  ���́|��Ќ��ݕ뉿      TO                          
007560                                    �c�X�Q�P�|��З��_�|���p�뉿  
007570     ELSE                                                         
007580        MOVE  ZERO  TO  �c�X�Q�P�|��З��_�|���p�뉿              
007590     END-IF.                                                      
007600 �m�n�P�U�S�ڍs�����|�d�w�h�s.                                    
007610     EXIT.                                                        
007620*                                                                 
007630******************************************************************
007640*    �m�n�D�P�W�U�ڍs����                                        *
007650******************************************************************
007660 �m�n�P�W�U�ڍs����                   SECTION.                    
007670 �m�n�P�W�U�ڍs�����|�r�s�`�q�s.                                  
007680     IF  (���́|�Ŗ@�O�����뉿�@�� - ���́|�Ŗ@�������뉿) <      
007690                                            ���́|�Ŗ@���p���x�z  
007700         COMPUTE  �c�X�Q�P�|�Ŗ��|�O�����p�s���z =                
007710                                         ���́|�Ŗ@���p���x�z -   
007720				     (���́|�Ŗ@�O�����뉿�@�� -          
007730                                            ���́|�Ŗ@�������뉿) 
007740     ELSE                                                         
007750         MOVE  ZERO  TO  �c�X�Q�P�|�Ŗ��|�O�����p�s���z           
007760     END-IF.                                                      
007770 �m�n�P�W�U�ڍs�����|�d�w�h�s.                                    
007780     EXIT.                                                        
007790*                                                                 
007800******************************************************************
007810*    �m�n�D�P�X�O�ڍs����                                        *
007820******************************************************************
007830 �m�n�P�X�O�ڍs����                   SECTION.                    
007840 �m�n�P�X�O�ڍs�����|�r�s�`�q�s.                                  
007850     IF  ���́|�������p�ߕs���z < ZERO                            
007860        MOVE  ���́|�������p�ߕs���z  TO                          
007870                                  �c�X�Q�P�|�Ŗ��|�������p�s���z  
007880     ELSE                                                         
007890        MOVE  ZERO  TO  �c�X�Q�P�|�Ŗ��|�������p�s���z            
007900     END-IF.                                                      
007910 �m�n�P�X�O�ڍs�����|�d�w�h�s.                                    
007920     EXIT.                                                        
007930*                                                                 
007940******************************************************************
007950*    �m�n�D�P�X�Q�ڍs����                                        *
007960******************************************************************
007970 �m�n�P�X�Q�ڍs����                   SECTION.                    
007980 �m�n�P�X�Q�ڍs�����|�r�s�`�q�s.                                  
007990     IF  �c�X�Q�P�|���������|���p�t���O = "1"                     
008000        COMPUTE  �c�X�Q�P�|�Ŗ��|�������p�ւ̐U�֊z =             
008010                                   �c�X�Q�P�|��З��_�|���ݕ뉿 - 
008020			          �c�X�Q�P�|�Ŗ��|�������@��뉿        
008030     ELSE                                                         
008040        MOVE  ZERO  TO  �c�X�Q�P�|�Ŗ��|�������p�ւ̐U�֊z        
008050     END-IF.                                                      
008060 �m�n�P�X�Q�ڍs�����|�d�w�h�s.                                    
008070     EXIT.                                                        
008080*                                                                 
008090******************************************************************
008100*���Y���Ɋ֘A���ڂ��X�V����                                    *
008110******************************************************************
008120 ���Y���֘A���ڍX�V                 SECTION.                    
008130 ���Y���֘A���ڍX�V�|�r�s�`�q�s.                                
008140*                                                                 
008150     
      *    EXEC SQL                                                     
008160*     UPDATE  D921SIJ_TBL                                         
008170*        SET                                                      
008180*       �����ی��Q�����t�ۋ敪 = :�c�X�Q�P�|�����ی��|�����t�ۋ敪
008190*      ,�����ی��Q�t�ۓ� = :�c�X�Q�P�|�����ی��|�t�ۓ�            
008200*      ,�����ی��Q�����t�ۊJ�n�N���� =                            
008210*                          :�c�X�Q�P�|�����ی��|�����t�ۊJ�n�N����
008220*      ,�����ی��Q�����ی��� = :�c�X�Q�P�|�����ی��|�����ی���    
008230*      ,�����ی��Q���̗L�� = :�c�X�Q�P�|�����ی��|���̗L��        
008240*      ,�����ی��Q���̓� = :�c�X�Q�P�|�����ی��|���̓�            
008250*      ,�����ی��Q�ی��p�� = :�c�X�Q�P�|�����ی��|�ی��p��        
008260*      ,�����ی��Q�ی����� = :�c�X�Q�P�|�����ی��|�ی�����        
008270*      ,�����ی��Q�ی����i = :�c�X�Q�P�|�����ی��|�ی����i        
008280*      ,�����ی��Q�Ԗߕی��� = :�c�X�Q�P�|�����ی��|�Ԗߕی���    
008290*      ,�����ی��Q�����ی��،��ԍ� =                              
008300*                            :�c�X�Q�P�|�����ی��|�����ی��،��ԍ�
008310*      ,�����ی��Q�t�ۗ� = :�c�X�Q�P�|�����ی��|�t�ۗ�            
008320*      ,�����ی��Q�p�����[�X���p�Ώۊz =                          
008330*                        :�c�X�Q�P�|�����ی��|�p�����[�X���p�Ώۊz
008340*      ,�����ی��Q�ݒu�ꏊ���J�i =                                
008350*                              :�c�X�Q�P�|�����ی��|�ݒu�ꏊ���J�i
008360*      ,�M�p�ی��Q�M�p�ی���ЃR�[�h =                            
008370*                          :�c�X�Q�P�|�M�p�ی��|�M�p�ی���ЃR�[�h
008380*      ,�M�p�ی��Q�@�B�ޕ��ރR�[�h =                              
008390*                          :�c�X�Q�P�|�M�p�ی��|�@�B�ޕ��ރR�[�h  
008400*      ,�M�p�ی��Q�ʒm�������� = :�c�X�Q�P�|�M�p�ی��|�ʒm��������
008410*      ,�M�p�ی��Q�ی��� = :�c�X�Q�P�|�M�p�ی��|�ی���            
008420*      ,�M�p�ی��Q���� = :�c�X�Q�P�|�M�p�ی��|����                
008430*      ,�Œ莑�Y�ŁQ�O�N�x�[�t��R�[�h =                          
008440*                        :�c�X�Q�P�|�Œ莑�Y�Ł|�O�N�x�[�t��R�[�h
008450*      ,�Œ莑�Y�ŁQ�[�t��R�[�h =                                
008460*                              :�c�X�Q�P�|�Œ莑�Y�Ł|�[�t��R�[�h
008470*      ,�Œ莑�Y�ŁQ�N�Ŋz = :�c�X�Q�P�|�Œ莑�Y�Ł|�N�Ŋz        
008480*      ,�Œ莑�Y�ŁQ�O�N�x�]���z =                                
008490*                              :�c�X�Q�P�|�Œ莑�Y�Ł|�O�N�x�]���z
008500*      ,�Œ莑�Y�ŁQ�O�N�x���_�뉿 =                              
008510*                            :�c�X�Q�P�|�Œ莑�Y�Ł|�O�N�x���_�뉿
008520*      ,�Œ莑�Y�ŁQ���N�x�]���z =                                
008530*                              :�c�X�Q�P�|�Œ莑�Y�Ł|���N�x�]���z
008540*      ,�Œ莑�Y�ŁQ���N�x���_�뉿 =                              
008550*                            :�c�X�Q�P�|�Œ莑�Y�Ł|���N�x���_�뉿
008560*      ,��З��_�Q���p��~�t���O =                                
008570*                              :�c�X�Q�P�|��З��_�|���p��~�t���O
008580*      ,��З��_�Q���p��~�� = :�c�X�Q�P�|��З��_�|���p��~��    
008590*      ,��З��_�Q�O�����뉿 = :�c�X�Q�P�|��З��_�|�O�����뉿    
008600*      ,��З��_�Q�O�������p�z�݌v =                              
008610*                            :�c�X�Q�P�|��З��_�|�O�������p�z�݌v
008620*      ,��З��_�Q�O�������p�z�݌v =                              
008630*                            :�c�X�Q�P�|��З��_�|�O�������p�z�݌v
008640*      ,��З��_�Q���ݕ뉿 = :�c�X�Q�P�|��З��_�|���ݕ뉿        
008650*      ,��З��_�Q���p�뉿 = :�c�X�Q�P�|��З��_�|���p�뉿        
008660*      ,��З��_�Q���������p�z�݌v =                              
008670*                            :�c�X�Q�P�|��З��_�|���������p�z�݌v
008680*      ,��З��_�Q�������p�z = :�c�X�Q�P�|��З��_�|�������p�z    
008690*      ,�Ǘ���v�Q�O�����뉿 = :�c�X�Q�P�|�Ǘ���v�|�O�����뉿    
008700*      ,�Ǘ���v�Q�O�������p�z�݌v =                              
008710*                            :�c�X�Q�P�|�Ǘ���v�|�O�������p�z�݌v
008720*      ,�Ǘ���v�Q�O�������p�z�݌v =                              
008730*                            :�c�X�Q�P�|�Ǘ���v�|�O�������p�z�݌v
008740*      ,�Ǘ���v�Q���ݕ뉿 = :�c�X�Q�P�|�Ǘ���v�|���ݕ뉿        
008750*      ,�Ǘ���v�Q���������p�z�݌v =                              
008760*                            :�c�X�Q�P�|�Ǘ���v�|���������p�z�݌v
008770*      ,�Ǘ���v�Q�������p�z = :�c�X�Q�P�|�Ǘ���v�|�������p�z    
008780*      ,�Ŗ��Q�������p = :�c�X�Q�P�|�Ŗ��|�������p                
008790*      ,�Ŗ��Q�������p�� = :�c�X�Q�P�|�Ŗ��|�������p��            
008800*      ,�Ŗ��Q���ʏ��p�����q = :�c�X�Q�P�|�Ŗ��|���ʏ��p�����q    
008810*      ,�Ŗ��Q���ʏ��p������ = :�c�X�Q�P�|�Ŗ��|���ʏ��p������    
008820*      ,�Ŗ��Q���ʏ��p�� = :�c�X�Q�P�|�Ŗ��|���ʏ��p��            
008830*      ,�Ŗ��Q�O�������{�z�뉿 = :�c�X�Q�P�|�Ŗ��|�O�������{�z�뉿
008840*      ,�Ŗ��Q�O�����{�z�݌v = :�c�X�Q�P�|�Ŗ��|�O�����{�z�݌v    
008850*      ,�Ŗ��Q�O���J�z���ߊz = :�c�X�Q�P�|�Ŗ��|�O���J�z���ߊz    
008860*      ,�Ŗ��Q�O�����p�s���z = :�c�X�Q�P�|�Ŗ��|�O�����p�s���z    
008870*      ,�Ŗ��Q�������p���x�z = :�c�X�Q�P�|�Ŗ��|�������p���x�z    
008880*      ,�Ŗ��Q�������p���{�z = :�c�X�Q�P�|�Ŗ��|�������p���{�z    
008890*      ,�Ŗ��Q�������p���{�z�݌v =                                
008900*                              :�c�X�Q�P�|�Ŗ��|�������p���{�z�݌v
008910*      ,�Ŗ��Q�������p�s���z = :�c�X�Q�P�|�Ŗ��|�������p�s���z    
008920*      ,�Ŗ��Q�������p���ߊz = :�c�X�Q�P�|�Ŗ��|�������p���ߊz    
008930*      ,�Ŗ��Q�������p�ւ̐U�֊z =                                
008940*                              :�c�X�Q�P�|�Ŗ��|�������p�ւ̐U�֊z
008950*      ,�Ŗ��Q���������{�z�뉿 = :�c�X�Q�P�|�Ŗ��|���������{�z�뉿
008960*      ,�Ŗ��Q�O�����@��뉿 = :�c�X�Q�P�|�Ŗ��|�O�����@��뉿    
008970*      ,�Ŗ��Q�������@��뉿 = :�c�X�Q�P�|�Ŗ��|�������@��뉿    
008980*    WHERE  �L�[���Q�_��ԍ� = :�v�r�|�m�|�_��ԍ�              
008990*      AND  �L�[���Q�����ԍ� = :�v�r�|�m�|�V�����ԍ�        
009000*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 148 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|�����t�ۋ敪 IN
               ���Y���e�[�u��
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|�t�ۓ� IN
               ���Y���e�[�u��
               SQL-SQHSTV(2)
           MOVE 8 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|�����t�ۊJ�n�N���� IN
               ���Y���e�[�u��
               SQL-SQHSTV(3)
           MOVE 8 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|�����ی��� IN
               ���Y���e�[�u��
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|���̗L�� IN
               ���Y���e�[�u��
               SQL-SQHSTV(5)
           MOVE 1 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|���̓� IN
               ���Y���e�[�u��
               SQL-SQHSTV(6)
           MOVE 8 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|�ی��p�� IN
               ���Y���e�[�u��
               SQL-SQHSTV(7)
           MOVE 1 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|�ی����� IN
               ���Y���e�[�u��
               SQL-SQHSTV(8)
           MOVE 5 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|�ی����i IN
               ���Y���e�[�u��
               SQL-SQHSTV(9)
           MOVE 7 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|�Ԗߕی��� IN
               ���Y���e�[�u��
               SQL-SQHSTV(10)
           MOVE 7 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|�����ی��،��ԍ� IN
               ���Y���e�[�u��
               SQL-SQHSTV(11)
           MOVE 11 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|�t�ۗ� IN
               ���Y���e�[�u��
               SQL-SQHSTV(12)
           MOVE 2 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|�p�����[�X���p�Ώۊz IN
               ���Y���e�[�u��
               SQL-SQHSTV(13)
           MOVE 7 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               �c�X�Q�P�|�����ی��|�ݒu�ꏊ���J�i IN
               ���Y���e�[�u��
               SQL-SQHSTV(14)
           MOVE 80 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               �c�X�Q�P�|�M�p�ی��|�M�p�ی���ЃR�[�h IN
               ���Y���e�[�u��
               SQL-SQHSTV(15)
           MOVE 1 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               �c�X�Q�P�|�M�p�ی��|�@�B�ޕ��ރR�[�h IN
               ���Y���e�[�u��
               SQL-SQHSTV(16)
           MOVE 2 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               �c�X�Q�P�|�M�p�ی��|�ʒm�������� IN
               ���Y���e�[�u��
               SQL-SQHSTV(17)
           MOVE 8 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               �c�X�Q�P�|�M�p�ی��|�ی��� IN
               ���Y���e�[�u��
               SQL-SQHSTV(18)
           MOVE 7 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               �c�X�Q�P�|�M�p�ی��|���� IN
               ���Y���e�[�u��
               SQL-SQHSTV(19)
           MOVE 5 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Œ莑�Y�Ł|�O�N�x�[�t��R�[�h IN
               ���Y���e�[�u��
               SQL-SQHSTV(20)
           MOVE 11 TO SQL-SQHSTL(20)
           MOVE 0 TO SQL-SQHSTS(20)
           MOVE 0 TO SQL-SQINDV(20)
           MOVE 0 TO SQL-SQINDS(20)
           MOVE 0 TO SQL-SQHARM(20)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Œ莑�Y�Ł|�[�t��R�[�h IN
               ���Y���e�[�u��
               SQL-SQHSTV(21)
           MOVE 6 TO SQL-SQHSTL(21)
           MOVE 0 TO SQL-SQHSTS(21)
           MOVE 0 TO SQL-SQINDV(21)
           MOVE 0 TO SQL-SQINDS(21)
           MOVE 0 TO SQL-SQHARM(21)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Œ莑�Y�Ł|�N�Ŋz IN
               ���Y���e�[�u��
               SQL-SQHSTV(22)
           MOVE 7 TO SQL-SQHSTL(22)
           MOVE 0 TO SQL-SQHSTS(22)
           MOVE 0 TO SQL-SQINDV(22)
           MOVE 0 TO SQL-SQINDS(22)
           MOVE 0 TO SQL-SQHARM(22)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Œ莑�Y�Ł|�O�N�x�]���z IN
               ���Y���e�[�u��
               SQL-SQHSTV(23)
           MOVE 7 TO SQL-SQHSTL(23)
           MOVE 0 TO SQL-SQHSTS(23)
           MOVE 0 TO SQL-SQINDV(23)
           MOVE 0 TO SQL-SQINDS(23)
           MOVE 0 TO SQL-SQHARM(23)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Œ莑�Y�Ł|�O�N�x���_�뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(24)
           MOVE 7 TO SQL-SQHSTL(24)
           MOVE 0 TO SQL-SQHSTS(24)
           MOVE 0 TO SQL-SQINDV(24)
           MOVE 0 TO SQL-SQINDS(24)
           MOVE 0 TO SQL-SQHARM(24)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Œ莑�Y�Ł|���N�x�]���z IN
               ���Y���e�[�u��
               SQL-SQHSTV(25)
           MOVE 7 TO SQL-SQHSTL(25)
           MOVE 0 TO SQL-SQHSTS(25)
           MOVE 0 TO SQL-SQINDV(25)
           MOVE 0 TO SQL-SQINDS(25)
           MOVE 0 TO SQL-SQHARM(25)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Œ莑�Y�Ł|���N�x���_�뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(26)
           MOVE 7 TO SQL-SQHSTL(26)
           MOVE 0 TO SQL-SQHSTS(26)
           MOVE 0 TO SQL-SQINDV(26)
           MOVE 0 TO SQL-SQINDS(26)
           MOVE 0 TO SQL-SQHARM(26)
           CALL "SQLADR" USING
               �c�X�Q�P�|��З��_�|���p��~�t���O IN
               ���Y���e�[�u��
               SQL-SQHSTV(27)
           MOVE 1 TO SQL-SQHSTL(27)
           MOVE 0 TO SQL-SQHSTS(27)
           MOVE 0 TO SQL-SQINDV(27)
           MOVE 0 TO SQL-SQINDS(27)
           MOVE 0 TO SQL-SQHARM(27)
           CALL "SQLADR" USING
               �c�X�Q�P�|��З��_�|���p��~�� IN
               ���Y���e�[�u��
               SQL-SQHSTV(28)
           MOVE 8 TO SQL-SQHSTL(28)
           MOVE 0 TO SQL-SQHSTS(28)
           MOVE 0 TO SQL-SQINDV(28)
           MOVE 0 TO SQL-SQINDS(28)
           MOVE 0 TO SQL-SQHARM(28)
           CALL "SQLADR" USING
               �c�X�Q�P�|��З��_�|�O�����뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(29)
           MOVE 7 TO SQL-SQHSTL(29)
           MOVE 0 TO SQL-SQHSTS(29)
           MOVE 0 TO SQL-SQINDV(29)
           MOVE 0 TO SQL-SQINDS(29)
           MOVE 0 TO SQL-SQHARM(29)
           CALL "SQLADR" USING
               �c�X�Q�P�|��З��_�|�O�������p�z�݌v IN
               ���Y���e�[�u��
               SQL-SQHSTV(30)
           MOVE 7 TO SQL-SQHSTL(30)
           MOVE 0 TO SQL-SQHSTS(30)
           MOVE 0 TO SQL-SQINDV(30)
           MOVE 0 TO SQL-SQINDS(30)
           MOVE 0 TO SQL-SQHARM(30)
           CALL "SQLADR" USING
               �c�X�Q�P�|��З��_�|�O�������p�z�݌v IN
               ���Y���e�[�u��
               SQL-SQHSTV(31)
           MOVE 7 TO SQL-SQHSTL(31)
           MOVE 0 TO SQL-SQHSTS(31)
           MOVE 0 TO SQL-SQINDV(31)
           MOVE 0 TO SQL-SQINDS(31)
           MOVE 0 TO SQL-SQHARM(31)
           CALL "SQLADR" USING
               �c�X�Q�P�|��З��_�|���ݕ뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(32)
           MOVE 7 TO SQL-SQHSTL(32)
           MOVE 0 TO SQL-SQHSTS(32)
           MOVE 0 TO SQL-SQINDV(32)
           MOVE 0 TO SQL-SQINDS(32)
           MOVE 0 TO SQL-SQHARM(32)
           CALL "SQLADR" USING
               �c�X�Q�P�|��З��_�|���p�뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(33)
           MOVE 7 TO SQL-SQHSTL(33)
           MOVE 0 TO SQL-SQHSTS(33)
           MOVE 0 TO SQL-SQINDV(33)
           MOVE 0 TO SQL-SQINDS(33)
           MOVE 0 TO SQL-SQHARM(33)
           CALL "SQLADR" USING
               �c�X�Q�P�|��З��_�|���������p�z�݌v IN
               ���Y���e�[�u��
               SQL-SQHSTV(34)
           MOVE 7 TO SQL-SQHSTL(34)
           MOVE 0 TO SQL-SQHSTS(34)
           MOVE 0 TO SQL-SQINDV(34)
           MOVE 0 TO SQL-SQINDS(34)
           MOVE 0 TO SQL-SQHARM(34)
           CALL "SQLADR" USING
               �c�X�Q�P�|��З��_�|�������p�z IN
               ���Y���e�[�u��
               SQL-SQHSTV(35)
           MOVE 7 TO SQL-SQHSTL(35)
           MOVE 0 TO SQL-SQHSTS(35)
           MOVE 0 TO SQL-SQINDV(35)
           MOVE 0 TO SQL-SQINDS(35)
           MOVE 0 TO SQL-SQHARM(35)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ǘ���v�|�O�����뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(36)
           MOVE 7 TO SQL-SQHSTL(36)
           MOVE 0 TO SQL-SQHSTS(36)
           MOVE 0 TO SQL-SQINDV(36)
           MOVE 0 TO SQL-SQINDS(36)
           MOVE 0 TO SQL-SQHARM(36)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ǘ���v�|�O�������p�z�݌v IN
               ���Y���e�[�u��
               SQL-SQHSTV(37)
           MOVE 7 TO SQL-SQHSTL(37)
           MOVE 0 TO SQL-SQHSTS(37)
           MOVE 0 TO SQL-SQINDV(37)
           MOVE 0 TO SQL-SQINDS(37)
           MOVE 0 TO SQL-SQHARM(37)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ǘ���v�|�O�������p�z�݌v IN
               ���Y���e�[�u��
               SQL-SQHSTV(38)
           MOVE 7 TO SQL-SQHSTL(38)
           MOVE 0 TO SQL-SQHSTS(38)
           MOVE 0 TO SQL-SQINDV(38)
           MOVE 0 TO SQL-SQINDS(38)
           MOVE 0 TO SQL-SQHARM(38)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ǘ���v�|���ݕ뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(39)
           MOVE 7 TO SQL-SQHSTL(39)
           MOVE 0 TO SQL-SQHSTS(39)
           MOVE 0 TO SQL-SQINDV(39)
           MOVE 0 TO SQL-SQINDS(39)
           MOVE 0 TO SQL-SQHARM(39)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ǘ���v�|���������p�z�݌v IN
               ���Y���e�[�u��
               SQL-SQHSTV(40)
           MOVE 7 TO SQL-SQHSTL(40)
           MOVE 0 TO SQL-SQHSTS(40)
           MOVE 0 TO SQL-SQINDV(40)
           MOVE 0 TO SQL-SQINDS(40)
           MOVE 0 TO SQL-SQHARM(40)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ǘ���v�|�������p�z IN
               ���Y���e�[�u��
               SQL-SQHSTV(41)
           MOVE 7 TO SQL-SQHSTL(41)
           MOVE 0 TO SQL-SQHSTS(41)
           MOVE 0 TO SQL-SQINDV(41)
           MOVE 0 TO SQL-SQINDS(41)
           MOVE 0 TO SQL-SQHARM(41)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�������p IN
               ���Y���e�[�u��
               SQL-SQHSTV(42)
           MOVE 2 TO SQL-SQHSTL(42)
           MOVE 0 TO SQL-SQHSTS(42)
           MOVE 0 TO SQL-SQINDV(42)
           MOVE 0 TO SQL-SQINDS(42)
           MOVE 0 TO SQL-SQHARM(42)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�������p�� IN
               ���Y���e�[�u��
               SQL-SQHSTV(43)
           MOVE 7 TO SQL-SQHSTL(43)
           MOVE 0 TO SQL-SQHSTS(43)
           MOVE 0 TO SQL-SQINDV(43)
           MOVE 0 TO SQL-SQINDS(43)
           MOVE 0 TO SQL-SQHARM(43)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|���ʏ��p�����q IN
               ���Y���e�[�u��
               SQL-SQHSTV(44)
           MOVE 2 TO SQL-SQHSTL(44)
           MOVE 0 TO SQL-SQHSTS(44)
           MOVE 0 TO SQL-SQINDV(44)
           MOVE 0 TO SQL-SQINDS(44)
           MOVE 0 TO SQL-SQHARM(44)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|���ʏ��p������ IN
               ���Y���e�[�u��
               SQL-SQHSTV(45)
           MOVE 2 TO SQL-SQHSTL(45)
           MOVE 0 TO SQL-SQHSTS(45)
           MOVE 0 TO SQL-SQINDV(45)
           MOVE 0 TO SQL-SQINDS(45)
           MOVE 0 TO SQL-SQHARM(45)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|���ʏ��p�� IN
               ���Y���e�[�u��
               SQL-SQHSTV(46)
           MOVE 7 TO SQL-SQHSTL(46)
           MOVE 0 TO SQL-SQHSTS(46)
           MOVE 0 TO SQL-SQINDV(46)
           MOVE 0 TO SQL-SQINDS(46)
           MOVE 0 TO SQL-SQHARM(46)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�O�������{�z�뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(47)
           MOVE 7 TO SQL-SQHSTL(47)
           MOVE 0 TO SQL-SQHSTS(47)
           MOVE 0 TO SQL-SQINDV(47)
           MOVE 0 TO SQL-SQINDS(47)
           MOVE 0 TO SQL-SQHARM(47)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�O�����{�z�݌v IN
               ���Y���e�[�u��
               SQL-SQHSTV(48)
           MOVE 7 TO SQL-SQHSTL(48)
           MOVE 0 TO SQL-SQHSTS(48)
           MOVE 0 TO SQL-SQINDV(48)
           MOVE 0 TO SQL-SQINDS(48)
           MOVE 0 TO SQL-SQHARM(48)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�O���J�z���ߊz IN
               ���Y���e�[�u��
               SQL-SQHSTV(49)
           MOVE 7 TO SQL-SQHSTL(49)
           MOVE 0 TO SQL-SQHSTS(49)
           MOVE 0 TO SQL-SQINDV(49)
           MOVE 0 TO SQL-SQINDS(49)
           MOVE 0 TO SQL-SQHARM(49)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�O�����p�s���z IN
               ���Y���e�[�u��
               SQL-SQHSTV(50)
           MOVE 7 TO SQL-SQHSTL(50)
           MOVE 0 TO SQL-SQHSTS(50)
           MOVE 0 TO SQL-SQINDV(50)
           MOVE 0 TO SQL-SQINDS(50)
           MOVE 0 TO SQL-SQHARM(50)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�������p���x�z IN
               ���Y���e�[�u��
               SQL-SQHSTV(51)
           MOVE 7 TO SQL-SQHSTL(51)
           MOVE 0 TO SQL-SQHSTS(51)
           MOVE 0 TO SQL-SQINDV(51)
           MOVE 0 TO SQL-SQINDS(51)
           MOVE 0 TO SQL-SQHARM(51)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�������p���{�z IN
               ���Y���e�[�u��
               SQL-SQHSTV(52)
           MOVE 7 TO SQL-SQHSTL(52)
           MOVE 0 TO SQL-SQHSTS(52)
           MOVE 0 TO SQL-SQINDV(52)
           MOVE 0 TO SQL-SQINDS(52)
           MOVE 0 TO SQL-SQHARM(52)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�������p���{�z�݌v IN
               ���Y���e�[�u��
               SQL-SQHSTV(53)
           MOVE 7 TO SQL-SQHSTL(53)
           MOVE 0 TO SQL-SQHSTS(53)
           MOVE 0 TO SQL-SQINDV(53)
           MOVE 0 TO SQL-SQINDS(53)
           MOVE 0 TO SQL-SQHARM(53)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�������p�s���z IN
               ���Y���e�[�u��
               SQL-SQHSTV(54)
           MOVE 7 TO SQL-SQHSTL(54)
           MOVE 0 TO SQL-SQHSTS(54)
           MOVE 0 TO SQL-SQINDV(54)
           MOVE 0 TO SQL-SQINDS(54)
           MOVE 0 TO SQL-SQHARM(54)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�������p���ߊz IN
               ���Y���e�[�u��
               SQL-SQHSTV(55)
           MOVE 7 TO SQL-SQHSTL(55)
           MOVE 0 TO SQL-SQHSTS(55)
           MOVE 0 TO SQL-SQINDV(55)
           MOVE 0 TO SQL-SQINDS(55)
           MOVE 0 TO SQL-SQHARM(55)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�������p�ւ̐U�֊z IN
               ���Y���e�[�u��
               SQL-SQHSTV(56)
           MOVE 7 TO SQL-SQHSTL(56)
           MOVE 0 TO SQL-SQHSTS(56)
           MOVE 0 TO SQL-SQINDV(56)
           MOVE 0 TO SQL-SQINDS(56)
           MOVE 0 TO SQL-SQHARM(56)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|���������{�z�뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(57)
           MOVE 7 TO SQL-SQHSTL(57)
           MOVE 0 TO SQL-SQHSTS(57)
           MOVE 0 TO SQL-SQINDV(57)
           MOVE 0 TO SQL-SQINDS(57)
           MOVE 0 TO SQL-SQHARM(57)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�O�����@��뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(58)
           MOVE 7 TO SQL-SQHSTL(58)
           MOVE 0 TO SQL-SQHSTS(58)
           MOVE 0 TO SQL-SQINDV(58)
           MOVE 0 TO SQL-SQINDS(58)
           MOVE 0 TO SQL-SQHARM(58)
           CALL "SQLADR" USING
               �c�X�Q�P�|�Ŗ��|�������@��뉿 IN
               ���Y���e�[�u��
               SQL-SQHSTV(59)
           MOVE 7 TO SQL-SQHSTL(59)
           MOVE 0 TO SQL-SQHSTS(59)
           MOVE 0 TO SQL-SQINDV(59)
           MOVE 0 TO SQL-SQINDS(59)
           MOVE 0 TO SQL-SQHARM(59)
           CALL "SQLADR" USING
               �v�r�|�m�|�_��ԍ� IN
               �m�d�v�L�[ IN
               �j�d�x�|�G���A
               SQL-SQHSTV(60)
           MOVE 10 TO SQL-SQHSTL(60)
           MOVE 0 TO SQL-SQHSTS(60)
           MOVE 0 TO SQL-SQINDV(60)
           MOVE 0 TO SQL-SQINDS(60)
           MOVE 0 TO SQL-SQHARM(60)
           CALL "SQLADR" USING
               �v�r�|�m�|�V�����ԍ� IN
               �m�d�v�L�[ IN
               �j�d�x�|�G���A
               SQL-SQHSTV(61)
           MOVE 3 TO SQL-SQHSTL(61)
           MOVE 0 TO SQL-SQHSTS(61)
           MOVE 0 TO SQL-SQINDV(61)
           MOVE 0 TO SQL-SQINDS(61)
           MOVE 0 TO SQL-SQHARM(61)
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
009010*                                                                 
009020     EVALUATE  SQLCODE                                            
009030        WHEN  �萔�|�r�p�k�n�j                                    
009040*--<       ���Y���֘A���ڍX�V���� >                             
009050           COMPUTE  �v�|�X�V�|���� = �v�|�X�V�|���� + 1           
009060        WHEN  OTHER                                               
009070*--<       ���Y���֘A���ڍX�V���[ >                             
009080           MOVE -70                   TO  �v�|�G���[�R�[�h        
009090           PERFORM  �c�a���[���o�b�N����                          
009100           PERFORM  �G���[����                                    
009110     END-EVALUATE.                                                
009120*                                                                 
009130 ���Y���֘A���ڍX�V�|�d�w�h�s.                                  
009140     EXIT.                                                        
009150*                                                                 
009160******************************************************************
009170*    �I������                                        <3.0>       *
009180******************************************************************
009190 �I������                             SECTION.                    
009200 �I�������|�r�s�`�q�s.                                            
009210*                                                                 
009220*----------------------------------------------------------------*
009230*    �t�@�C���N���[�Y                                <3.1>       *
009240*----------------------------------------------------------------*
009250     CLOSE  ���̓t�@�C��.                                         
009260*                                                                 
009270     PERFORM  �c�a�N���[�Y����.                                   
009280*                                                                 
009290     PERFORM  �c�a�R�~�b�g����.                                   
009300*                                                                 
009310     PERFORM  �������b�Z�[�W�o��.                                 
009320*                                                                 
009330     PERFORM  �I�����b�Z�[�W�o��.                                 
009340*                                                                 
009350*--< �v���O��������I�� >                                         
009360     MOVE  �萔�|������             TO  PROGRAM-STATUS.         
009370*                                                                 
009380 �I�������|�d�w�h�s.                                              
009390     EXIT.                                                        
009400******************************************************************
009410*    �c�a�N���[�Y                                    <3.2>       *
009420******************************************************************
009430 �c�a�N���[�Y����                     SECTION.                    
009440 �c�a�N���[�Y�����|�r�s�`�q�s.                                    
009450*                                                                 
009460*--< �J�[�\�� �N���[�Y >                                          
009470     
      *    EXEC SQL                                                     
009480*       CLOSE  CUR1                                               
009490*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 407 TO SQL-OFFSET
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
009500                                                                  
009510 �c�a�N���[�Y�����|�d�w�h�s.                                      
009520     EXIT.                                                        
009530                                                                  
009540******************************************************************
009550*    �c�a�R�~�b�g����                                <3.3>       *
009560******************************************************************
009570 �c�a�R�~�b�g����                     SECTION.                    
009580 �c�a�R�~�b�g�����|�r�s�`�q�s.                                    
009590*                                                                 
009600     
      *    EXEC  SQL                                                    
009610*       COMMIT  WORK  RELEASE                                     
009620*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 422 TO SQL-OFFSET
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
009630*                                                                 
009640     INITIALIZE                       IF-CHOCO001.                
009650     MOVE  "3"                        TO  ���P�|�C�x���g���.     
009660     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
009670     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
009680     MOVE  "COMMIT"                   TO  ���P�|��������.         
009690     MOVE  "�R�~�b�g���{"             TO  ���P�|���̑����b�Z�[�W. 
009700     CALL  CLOCO001                USING  IF-CHOCO001.            
009710*                                                                 
009720 �c�a�R�~�b�g�����|�d�w�h�s.                                      
009730     EXIT.                                                        
009740*                                                                 
009750******************************************************************
009760*    �c�a���[���o�b�N����                                        *
009770******************************************************************
009780 �c�a���[���o�b�N����                 SECTION.                    
009790 �c�a���[���o�b�N�����|�r�s�`�q�s.                                
009800*                                                                 
009810     
      *    EXEC  SQL                                                    
009820*       ROLLBACK WORK  RELEASE                                    
009830*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 437 TO SQL-OFFSET
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
009840*                                                                 
009850     INITIALIZE                       IF-CHOCO001.                
009860     MOVE  "1"                        TO  ���P�|�C�x���g���.     
009870     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
009880     MOVE  "9"                        TO  ���P�|���A�R�[�h.       
009890     MOVE  "ROLLBACK"                 TO  ���P�|��������.         
009900     MOVE  "���[���o�b�N���{"         TO  ���P�|���̑����b�Z�[�W. 
009910     CALL  CLOCO001                USING  IF-CHOCO001.            
009920*                                                                 
009930 �c�a���[���o�b�N�����|�d�w�h�s.                                  
009940     EXIT.                                                        
009950*                                                                 
009960******************************************************************
009970*    �������b�Z�[�W�o�͏���                          <3.4>       *
009980******************************************************************
009990 �������b�Z�[�W�o��                   SECTION.                    
010000 �������b�Z�[�W�o�́|�r�s�`�q�s.                                  
010010*                                                                 
010020     INITIALIZE                       IF-CHOCO001.                
010030     MOVE  "3"                        TO  ���P�|�C�x���g���.     
010040     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
010050     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
010060     MOVE  "IKOTBL010"                TO  ���P�|�����e�[�u���h�c. 
010070     MOVE  "COUNT"                    TO  ���P�|��������.         
010080     MOVE  �v�|���́|�����Q           TO  ���P�|�f�[�^���e.       
010090     MOVE  "�V�����ԍ��̔ԃe�[�u���Ǎ�����"                       
010100                                      TO  ���P�|���̑����b�Z�[�W. 
010110     CALL  CLOCO001                USING  IF-CHOCO001.            
010120*                                                                 
010130     INITIALIZE                       IF-CHOCO001.                
010140     MOVE  "3"                        TO  ���P�|�C�x���g���.     
010150     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
010160     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
010170     MOVE  "FFUIS772"                 TO  ���P�|�����e�[�u���h�c. 
010180     MOVE  "COUNT"                    TO  ���P�|��������.         
010190     MOVE  �v�|���́|�����P           TO  ���P�|�f�[�^���e.       
010200     MOVE  "���Y���דǓǍ�����"       TO  ���P�|���̑����b�Z�[�W. 
010210     CALL  CLOCO001                USING  IF-CHOCO001.            
010220*                                                                 
010230     INITIALIZE                       IF-CHOCO001.                
010240     MOVE  "3"                        TO  ���P�|�C�x���g���.     
010250     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
010260     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
010270     MOVE  "D921SIJ"                  TO  ���P�|�����e�[�u���h�c. 
010280     MOVE  "COUNT"                    TO  ���P�|��������.         
010290     MOVE  �v�|�X�V�|����             TO  ���P�|�f�[�^���e.       
010300     MOVE  "���Y���e�[�u���X�V����" TO  ���P�|���̑����b�Z�[�W. 
010310     CALL  CLOCO001                USING  IF-CHOCO001.            
010320*                                                                 
010330 �������b�Z�[�W�o�́|�d�w�h�s.                                    
010340     EXIT.                                                        
010350*                                                                 
010360******************************************************************
010370*    �I�����b�Z�[�W�o��                              <3.5>       *
010380******************************************************************
010390 �I�����b�Z�[�W�o��                   SECTION.                    
010400 �I�����b�Z�[�W�o�́|�r�s�`�q�s.                                  
010410*                                                                 
010420     INITIALIZE                       IF-CHOCO001.                
010430     MOVE  "3"                        TO  ���P�|�C�x���g���.     
010440     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
010450     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
010460     MOVE  "END"                      TO  ���P�|��������.         
010470     MOVE  �萔�|�v���O������         TO  ���P�|���̑����b�Z�[�W. 
010480     CALL  CLOCO001                USING  IF-CHOCO001.            
010490*                                                                 
010500 �I�����b�Z�[�W�o�́|�d�w�h�s.                                    
010510     EXIT.                                                        
010520*                                                                 
010530******************************************************************
010540*    �G���[����                                          <4.0>   *
010550******************************************************************
010560 �G���[����                           SECTION.                    
010570 �G���[�����|�r�s�`�q�s.                                          
010580*                                                                 
010590     MOVE  "Y"                        TO  �v�|�ُ�I���|�t���O.   
010600     INITIALIZE                       IF-CHOCO001.                
010610*                                                                 
010620     EVALUATE  �v�|�G���[�R�[�h                                   
010630        WHEN  -10                                                 
010640*--<       �n�q�`�b�k�d�ڑ����s >                                 
010650           MOVE  "1"                  TO  ���P�|�C�x���g���      
010660           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
010670           MOVE  "9"                  TO  ���P�|���A�R�[�h        
010680           MOVE  "CONNECT"            TO  ���P�|��������          
010690           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
010700           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
010710           CALL  CLOCO001          USING  IF-CHOCO001             
010720*                                                                 
010730        WHEN  -20                                                 
010740*--<       ���̓t�@�C���I�[�v���G���[ >                           
010750           MOVE  "1"                  TO  ���P�|�C�x���g���      
010760           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
010770           MOVE  "9"                  TO  ���P�|���A�R�[�h        
010780           MOVE  "FFUIS772"           TO  ���P�|�����e�[�u���h�c  
010790           MOVE  "OPEN"               TO  ���P�|��������          
010800           MOVE  �v�|���             TO  ���P�|�f�[�^���e        
010810           MOVE  "���Y����(����)�t�@�C���I�[�v���G���["           
010820                                      TO  ���P�|���̑����b�Z�[�W  
010830           CALL  CLOCO001          USING  IF-CHOCO001             
010840*                                                                 
010850        WHEN  -30                                                 
010860*--<       �t�@�C���Ǎ��G���[>                                    
010870           MOVE  "1"                  TO  ���P�|�C�x���g���      
010880           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
010890           MOVE  "9"                  TO  ���P�|���A�R�[�h        
010900           MOVE  "FFUI772"            TO  ���P�|�����e�[�u���h�c  
010910           MOVE  "READ"               TO  ���P�|��������          
010920           MOVE  �v�|���             TO  ���P�|�f�[�^���e        
010930           MOVE  "���Y����(����)�t�@�C���Ǎ��G���["               
010940                                      TO  ���P�|���̑����b�Z�[�W  
010950           CALL  CLOCO001          USING  IF-CHOCO001             
010960*                                                                 
010970        WHEN  -40                                                 
010980*--<       �V�����ԍ��̔Ԏ��s >                                   
010990           MOVE  "2"                  TO  ���P�|�C�x���g���      
011000           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
011010           MOVE  "9"                  TO  ���P�|���A�R�[�h        
011020           MOVE  "IKOTBL010"          TO  ���P�|�����e�[�u���h�c  
011030           MOVE  "SELECT"             TO  ���P�|��������          
011040           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
011050           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
011060           CALL  CLOCO001          USING  IF-CHOCO001             
011070           MOVE  "N"                  TO  �v�|�ُ�I���|�t���O    
011080*                                                                 
011090        WHEN  -50                                                 
011100*--<       �u���J�[�\���I�[�v�����s >                             
011110           MOVE  "1"                  TO  ���P�|�C�x���g���      
011120           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
011130           MOVE  "9"                  TO  ���P�|���A�R�[�h        
011140           MOVE  "D921SIJ"            TO  ���P�|�����e�[�u���h�c  
011150           MOVE  "OPEN"               TO  ���P�|��������          
011160           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
011170           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
011180           CALL  CLOCO001          USING  IF-CHOCO001             
011190*                                                                 
011200        WHEN  -60                                                 
011210*--<       �e�[�u���J�[�\���Ǎ��G���[ >                           
011220           MOVE  "2"                  TO  ���P�|�C�x���g���      
011230           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
011240           MOVE  "9"                  TO  ���P�|���A�R�[�h        
011250           MOVE  "D921SIJ"            TO  ���P�|�����e�[�u���h�c  
011260           MOVE  "FETCH"              TO  ���P�|��������          
011270           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
011280           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
011290           CALL  CLOCO001          USING  IF-CHOCO001             
011300           MOVE  "N"                  TO  �v�|�ُ�I���|�t���O    
011310*                                                                 
011320        WHEN  -70                                                 
011330*--<       ���Y���֘A���ڍX�V���s >                             
011340           MOVE  "2"                  TO  ���P�|�C�x���g���      
011350           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
011360           MOVE  "9"                  TO  ���P�|���A�R�[�h        
011370           MOVE  "D921SIJ"            TO  ���P�|�����e�[�u���h�c  
011380           MOVE  "UPDATE"             TO  ���P�|��������          
011390           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
011400           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
011410           CALL  CLOCO001          USING  IF-CHOCO001             
011420           MOVE  "N"                  TO  �v�|�ُ�I���|�t���O    
011430*                                                                 
011440        WHEN  OTHER                                               
011450           MOVE  "N"                  TO  �v�|�ُ�I���|�t���O    
011460     END-EVALUATE.                                                
011470*                                                                 
011480     IF  �v�|�ُ�I���|�t���O  =  "Y"                             
011490*----------------------------------------------------------------*
011500*    �I�����b�Z�[�W�o�͏���                                      *
011510*----------------------------------------------------------------*
011520        PERFORM  �c�a�N���[�Y����                                 
011530*                                                                 
011540        PERFORM  �������b�Z�[�W�o��                               
011550*                                                                 
011560        PERFORM  �I�����b�Z�[�W�o��                               
011570*--<    �v���O�������^�[���R�[�h >                                
011580        MOVE  �萔�|�ُ���          TO  PROGRAM-STATUS          
011590        EXIT  PROGRAM                                             
011600     END-IF.                                                      
011610*                                                                 
011620 �G���[�����|�d�w�h�s.                                            
011630      EXIT.                                                       
011640******************************************************************
011650*                  END OF PROGRAM                                *
011660******************************************************************