      *****************************************************************
      *   取引先要項マスタ(D091TRY_TBL)
      *****************************************************************
       01  取引先要項マスタ.
           03  Ｄ０９１−取引先コード
                                     PIC  X(009).
           03  Ｄ０９１−株主名２    PIC  X(020).
           03  Ｄ０９１−持株数２    PIC S9(010) PACKED-DECIMAL.
           03  Ｄ０９１−持株率２    PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−株主名３    PIC  X(020).
           03  Ｄ０９１−持株数３    PIC S9(010) PACKED-DECIMAL.
           03  Ｄ０９１−持株率３    PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−株主名４    PIC  X(020).
           03  Ｄ０９１−持株数４    PIC S9(010) PACKED-DECIMAL.
           03  Ｄ０９１−持株率４    PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−株主名５    PIC  X(020).
           03  Ｄ０９１−持株数５    PIC S9(010) PACKED-DECIMAL.
           03  Ｄ０９１−持株率５    PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−販売先２    PIC  X(030).
           03  Ｄ０９１−販売先３    PIC  X(030).
           03  Ｄ０９１−販売先４    PIC  X(030).
           03  Ｄ０９１−販売先５    PIC  X(030).
           03  Ｄ０９１−仕入先２    PIC  X(030).
           03  Ｄ０９１−仕入先３    PIC  X(030).
           03  Ｄ０９１−仕入先４    PIC  X(030).
           03  Ｄ０９１−仕入先５    PIC  X(030).
           03  Ｄ０９１−利用リース会社名１
                                     PIC  X(040).
           03  Ｄ０９１−利用リース会社名２
                                     PIC  X(040).
           03  Ｄ０９１−利用リース会社名３
                                     PIC  X(040).
           03  Ｄ０９１−利用リース会社名４
                                     PIC  X(040).
           03  Ｄ０９１−利用リース会社情報年月１
                                     PIC  X(006).
           03  Ｄ０９１−当社残高１  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−当社シェア１
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高１１
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社シェア１１
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高１２
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社シェア１２
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高１３
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社シェア１３
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高１４
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社シェア１４
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−利用リースその他残高１
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リースその他シェア１
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社情報年月２
                                     PIC  X(006).
           03  Ｄ０９１−当社残高２  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高２１
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高２２
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高２３
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高２４
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リースその他残高２
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社情報年月３
                                     PIC  X(006).
           03  Ｄ０９１−当社残高３  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高３１
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高３２
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高３３
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高３４
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リースその他残高３
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社情報年月４
                                     PIC  X(006).
           03  Ｄ０９１−当社残高４  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高４１
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高４２
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高４３
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社残高４４
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リースその他残高４
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−利用リース会社当社備考
                                     PIC  X(020).
           03  Ｄ０９１−利用リース会社備考１
                                     PIC  X(020).
           03  Ｄ０９１−利用リース会社備考２
                                     PIC  X(020).
           03  Ｄ０９１−利用リース会社備考３
                                     PIC  X(020).
           03  Ｄ０９１−利用リース会社備考４
                                     PIC  X(020).
           03  Ｄ０９１−利用リースその他備考
                                     PIC  X(020).
           03  Ｄ０９１−利用リース合計備考
                                     PIC  X(020).
           03  Ｄ０９１−リース会社取引状況
                                     PIC  X(120).
           03  Ｄ０９１−経営陣役職１
                                     PIC  X(010).
           03  Ｄ０９１−経営陣氏名１
                                     PIC  X(020).
           03  Ｄ０９１−経営陣出身先等１
                                     PIC  X(060).
           03  Ｄ０９１−経営陣役職２
                                     PIC  X(010).
           03  Ｄ０９１−経営陣氏名２
                                     PIC  X(020).
           03  Ｄ０９１−経営陣出身先等２
                                     PIC  X(060).
           03  Ｄ０９１−経営陣役職３
                                     PIC  X(010).
           03  Ｄ０９１−経営陣氏名３
                                     PIC  X(020).
           03  Ｄ０９１−経営陣出身先等３
                                     PIC  X(060).
           03  Ｄ０９１−経営陣役職４
                                     PIC  X(010).
           03  Ｄ０９１−経営陣氏名４
                                     PIC  X(020).
           03  Ｄ０９１−経営陣出身先等４
                                     PIC  X(060).
           03  Ｄ０９１−経営陣役職５
                                     PIC  X(010).
           03  Ｄ０９１−経営陣氏名５
                                     PIC  X(020).
           03  Ｄ０９１−経営陣出身先等５
                                     PIC  X(060).
           03  Ｄ０９１−関連会社およびグループ
                                     PIC  X(100).
           03  Ｄ０９１−売上構成１  PIC  X(050).
           03  Ｄ０９１−売上構成シェア１
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−売上構成２  PIC  X(050).
           03  Ｄ０９１−売上構成シェア２
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−売上構成３  PIC  X(050).
           03  Ｄ０９１−売上構成シェア３
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−売上構成４  PIC  X(050).
           03  Ｄ０９１−売上構成シェア４
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−売上構成５  PIC  X(050).
           03  Ｄ０９１−売上構成シェア５
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−事業の特色  PIC  X(200).
           03  Ｄ０９１−経常経験区分
                                     PIC  X(001).
           03  Ｄ０９１−業界経験区分
                                     PIC  X(001).
           03  Ｄ０９１−経営能力区分
                                     PIC  X(001).
           03  Ｄ０９１−得意分野区分
                                     PIC  X(001).
           03  Ｄ０９１−代表者出身等
                                     PIC  X(160).
           03  Ｄ０９１−代表者自宅郵便番号
                                     PIC  X(007).
           03  Ｄ０９１−代表者自宅住所１
                                     PIC  X(060).
           03  Ｄ０９１−代表者自宅住所２
                                     PIC  X(060).
           03  Ｄ０９１−代表者自宅住所３
                                     PIC  X(060).
           03  Ｄ０９１−代表者自宅電話番号
                                     PIC  X(015).
           03  Ｄ０９１−経営者内容  PIC  X(160).
           03  Ｄ０９１−銀行残高情報年月
                                     PIC  X(006).
           03  Ｄ０９１−取引銀行残高１
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−取引銀行シェア１
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−取引銀行名２
                                     PIC  X(020).
           03  Ｄ０９１−取引銀行残高２
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−取引銀行シェア２
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−取引銀行名３
                                     PIC  X(020).
           03  Ｄ０９１−取引銀行残高３
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−取引銀行シェア３
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−取引銀行名４
                                     PIC  X(020).
           03  Ｄ０９１−取引銀行残高４
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−取引銀行シェア４
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−取引銀行名５
                                     PIC  X(020).
           03  Ｄ０９１−取引銀行残高５
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−取引銀行シェア５
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−その他銀行残高
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ０９１−その他銀行シェア
                                     PIC S9(003)V9(003) PACKED-DECIMAL.
           03  Ｄ０９１−メイン行株式持合区分
                                     PIC  X(001).
           03  Ｄ０９１−メイン行役員派遣区分
                                     PIC  X(001).
           03  Ｄ０９１−メイン行双方確認区分
                                     PIC  X(001).
           03  Ｄ０９１−メイン行関係内容
                                     PIC  X(160).
           03  Ｄ０９１−その他銀行取引状況
                                     PIC  X(160).
           03  Ｄ０９１−当期決算状況内容
                                     PIC  X(200).
           03  Ｄ０９１−来期決算見通し内容
                                     PIC  X(200).
           03  Ｄ０９１−総合所見内容
                                     PIC  X(200).
           03  Ｄ０９１−債権保全状況内容
                                     PIC  X(200).
           03  Ｄ０９１−特記事項内容
                                     PIC  X(160).
           03  Ｄ０９１−登録年月日  PIC  X(008).
           03  Ｄ０９１−登録時間    PIC  X(008).
           03  Ｄ０９１−登録担当者  PIC  X(008).
           03  Ｄ０９１−更新年月日  PIC  X(008).
           03  Ｄ０９１−更新時間    PIC  X(008).
           03  Ｄ０９１−更新者      PIC  X(008).
           03  Ｄ０９１−入力担当者コード
                                     PIC  X(008).
           03  Ｄ０９１−代表者自宅住所コード
                                     PIC  X(011).
