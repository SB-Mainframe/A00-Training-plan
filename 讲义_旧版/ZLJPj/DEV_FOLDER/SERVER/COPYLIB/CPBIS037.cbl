000010************************************************
000020* 債権（債権基本）(CPBIS037)
000030************************************************
000040    03  ()ＫＥＹ項目契約番号.
000050     05  ()契約番号               PIC  X(9).
000060    03  ()事業所コード           PIC S9(4).
000070    03  ()ユーザコード           PIC  X(8).
000080    03  ()担当者コード           PIC S9(4).
000090    03  ()契約状態区分.
000100     05  ()原契約                 PIC  X(1).
000110     05  ()継続リース             PIC  X(1).
000120     05  ()再リース               PIC  X(1).
000130     05  ()割賦                   PIC  X(1).
000140     05  ()手数料                 PIC  X(1).
000150     05  ()ファクタリング         PIC  X(1).
000160     05  ()金消                   PIC  X(1).
000170     05  ()支払保証               PIC  X(1).
000180    03  ()検収集計表対象外区分   PIC  X(1).
000190    03  FILLER           PIC  X(4).
000200    03  ()転リース提携先コード   PIC  X(2).
000210    03  ()否認区分               PIC  X(1).
000220    03  FILLER           PIC  X(27).
000230    03  ()地位継承元情報.
000240     05  ()元事業所コード         PIC S9(4).
000250     05  ()元ユーザコード         PIC  X(8).
000260    03  ()処理年月度.
000270     05  ()処理年月度−世紀       PIC S9(1).
000280     05  ()処理年月度−年月       PIC  X(4).
000290    03  ()共通情報               PIC  X(35).
