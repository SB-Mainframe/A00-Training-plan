      *****************************************************************
      *   解約申請＿債権採算(D520KSS_TBL)
      *****************************************************************
       01  解約申請−債権採算.
           03  Ｄ５２０−契約番号    PIC  X(010).
           03  Ｄ５２０−再リース回数
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ５２０−契約種類    PIC  X(003).
           03  Ｄ５２０−回収サイト  PIC S9(002) PACKED-DECIMAL.
           03  Ｄ５２０−回収日      PIC S9(002) PACKED-DECIMAL.
           03  Ｄ５２０−回収方法    PIC  X(001).
           03  Ｄ５２０−基本利回り  PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ５２０−実質利回り  PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ５２０−粗利額      PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−基本利回り総額
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ５２０−売上基本利回り
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ５２０−一般基本利回り
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ５２０−一般実質利回り
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ５２０−一般粗利額  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−固定資産税  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−動総保険料  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−委託保守料  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−固定資産税現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−動総保険料現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−委託保守料現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般固定資産税現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般動総保険料現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般委託保守料現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−前受メリット
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般前受メリット
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−繰延メリット
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般繰延メリット
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−基本リース料総額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−基本リース料１回分
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−固定資産税費用総額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−固定資産税費用１回分
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−動総保険料費用総額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−動総保険料費用１回分
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−リース料総額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−リース料１回分
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−前受メリット総額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−前受メリット１回分
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−繰延メリット総額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−繰延メリット１回分
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−実質リース料総額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−実質リース料１回分
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−実質リース料現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−初期費用    PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−期中費用現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−基本リース料総額当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−基本リース料１回分当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−固定資産税費用総額当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−固定資産税費用１回分当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−動総保険料費用総額当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−動総保険料費用１回分当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−リース料総額当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−リース料１回分当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−前受メリット総額当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−前受メリット１回分当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−繰延メリット総額当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−繰延メリット１回分当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−実質リース料総額当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−実質リース料１回分当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−実質リース料現価当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−残価回収現価当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−初期費用当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−期中費用現価当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−残価回収現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−粗利益全体  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般実質リース料現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般残価回収現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般期中費用現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般粗利額全体
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般実質リース料現価当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般残価回収現価当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般期中費用現価当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−当社持分比率
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ５２０−基本元本金額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−リース料現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−リース料現価当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−その他諸費用
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−その他諸費用現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−一般その他諸費用現価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−委託保険料費用総額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−委託保険料費用１回分
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−その他諸費用総額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−その他諸費用１回分
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−委託保険料費用総額当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−委託保険料費用１回分当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−その他諸費用総額当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−その他諸費用１回分当社
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ５２０−更新年月日  PIC  X(008).
           03  Ｄ５２０−更新時間    PIC  X(008).
           03  Ｄ５２０−更新者      PIC  X(008).
           03  Ｄ５２０−登録年月日  PIC  X(008).
           03  Ｄ５２０−登録時間    PIC  X(008).
           03  Ｄ５２０−登録担当者  PIC  X(008).
           03  Ｄ５２０−入力担当者コード
                                     PIC  X(008).
