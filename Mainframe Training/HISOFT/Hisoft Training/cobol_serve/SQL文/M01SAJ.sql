prompt PL/SQL Developer import file
prompt Created on 2004N1022ú by ren_dali
set feedback off
set define off
prompt Dropping M01SAJ_TBL...
drop table M01SAJ_TBL cascade constraints;
prompt Creating M01SAJ_TBL...
create table M01SAJ_TBL
(
  R[hæª                   CHAR(1) not null,
  _ñÔ                       CHAR(15) not null,
  Ä[Xñ                   NUMBER(2) not null,
  _ñíÞ                       CHAR(3) not null,
  AÔ                           NUMBER(3) not null,
  ¿æª                       CHAR(1) not null,
  ðñpæÁæª               CHAR(1) not null,
  N                       CHAR(6) not null,
  ¿ææøæR[h             CHAR(9) not null,
  Úqæª                       CHAR(2) not null,
  TASSR[h                     CHAR(7) not null,
  Ý|Nú                     CHAR(8) not null,
  Áèæøææª                 CHAR(1) not null,
  ÅåÂ£ñ                   CHAR(1) not null,
  _ñú                         CHAR(8) not null,
  ønNú                     CHAR(8) not null,
  _ñJnú                     CHAR(8) not null,
  _ñI¹ú                     CHAR(8) not null,
  úÔ                           NUMBER(3) not null,
  _ñæª                       CHAR(1) not null,
  [XJnæª                 CHAR(1) not null,
  SÛR[h                 CHAR(4) not null,
  SÒR[h                   CHAR(8) not null,
  ¦²æª                       CHAR(1) not null,
  óÔtO                     CHAR(1) not null,
  å_ñæª                     CHAR(1) not null,
  kyæª                   CHAR(1) not null,
  kyN                   CHAR(6) not null,
  ¬ñN                       CHAR(6) not null,
  ¬ñæÁN                   CHAR(6) not null,
  ûN                   CHAR(6) not null,
  ûæÁú                     CHAR(8) not null,
  ûæÁN               CHAR(6) not null,
  ÅVñûúÔ                   NUMBER(3) not null,
  ñûñ                     NUMBER(3) not null,
  ¿Ôu                       NUMBER(2) not null,
  ñûÔu                       NUMBER(2) not null,
  §x]o^N                 CHAR(6) not null,
  §x]mètO               CHAR(1) not null,
  ñûTCg                     NUMBER(2) not null,
  ñûû@                       CHAR(1) not null,
  Ä[Xæª                   CHAR(1) not null,
  ÇÂ x                 CHAR(1) not null,
  O¥tO                     CHAR(1) not null,
  Â£ñ                       NUMBER(1) not null,
  ¿æR[h                   CHAR(5) not null,
  _ñææøæR[h             CHAR(9) not null,
  _ñæR[h                   CHAR(5) not null,
  x¥æøæR[h               CHAR(9) not null,
  x¥æR[h                   CHAR(5) not null,
  GïÌ£ï                     NUMBER(13) not null,
  ÅVz¿à                   NUMBER(13) not null,
  ÅVÁï¦                     NUMBER(9,7) not null,
  ÅVÁïÅz                   NUMBER(13) not null,
  _ñz                   NUMBER(13) not null,
  ÁïÅz                 NUMBER(13) not null,
  ÅV_ñz                   NUMBER(13) not null,
  ÅVÁïÅz                 NUMBER(13) not null,
  Ûç³úÔ                   NUMBER(3) not null,
  ñûz                         NUMBER(13) not null,
  ÁïÅñûz                   NUMBER(13) not null,
  ÅVñûú                     CHAR(8) not null,
  ´¿z                   NUMBER(13) not null,
  vz                   NUMBER(13) not null,
  æ¾¿z                   NUMBER(13) not null,
  ¹tO                     CHAR(1) not null,
  ¹ú                         CHAR(8) not null,
  YíÞ                       CHAR(5) not null,
  Zæ_ñíÞ                 CHAR(3) not null,
  Ýt¦                       NUMBER(9,7) not null,
  Ä[Xè¿                 NUMBER(13) not null,
  ÏõÛçæª                   CHAR(1) not null,
  ÏõÛçz               NUMBER(13) not null,
  §x]x¥z                 NUMBER(13) not null,
  O¥                       NUMBER(3) not null,
  »Ì¼_ñíÞæª             CHAR(1) not null,
  _ñíÞæª                   CHAR(1) not null,
  _ñíÞàR[h             CHAR(2) not null,
  x¥§                       NUMBER(13) not null,
  ´¿²®z                     NUMBER(13) not null,
  ÅèYÅ                     NUMBER(13) not null,
  Nñè                       NUMBER(5,3) not null,
  ^pñè                     NUMBER(5,3) not null,
  evz                       NUMBER(13) not null,
  evzQ\                   NUMBER(13) not null,
  evzQ                    NUMBER(13) not null,
  Kè¹Qàî{z               NUMBER(13) not null,
  MpÛ¯¿                     NUMBER(13) not null,
  ®YÛ¯¿                     NUMBER(13) not null,
  Ûç¿                         NUMBER(13) not null,
  »Ì¼Gï                     NUMBER(13) not null,
  è¿                         NUMBER(13) not null,
  è`óæú                     CHAR(8) not null,
  è`                       NUMBER(3) not null,
  itæª                       CHAR(2) not null,
  æ¾¿z                       NUMBER(13) not null,
  ©Ðªz¿à                 NUMBER(13) not null,
  ©ÐªzÁïÅ               NUMBER(13) not null,
  ©Ðª_ñz                 NUMBER(13) not null,
  ©ÐªÁïÅz               NUMBER(13) not null,
  ¼Ðwüz                     NUMBER(13) not null,
  c¿Ýèz                     NUMBER(13) not null,
  ¼Ðc¿Ýèz                 NUMBER(13) not null,
  ¼Ðñûz                     NUMBER(13) not null,
  ¼ÐñûzÁïÅ               NUMBER(13) not null,
  ¼Ð´¿z               NUMBER(13) not null,
  ¼Ðvz               NUMBER(13) not null,
  ðñtO                     CHAR(1) not null,
  ðñú                         CHAR(8) not null,
  ðññ                       NUMBER(3) not null,
  ðñæª                       CHAR(1) not null,
  ðñR                       CHAR(2) not null,
  ðñN                   CHAR(6) not null,
  æÁæª                       CHAR(1) not null,
  ðñæÁN               CHAR(6) not null,
  ðñN                       CHAR(6) not null,
  ðñ                       NUMBER(3) not null,
  OÂ z                   NUMBER(13) not null,
  Oãz                   NUMBER(13) not null,
  Oãz¼Ð               NUMBER(13) not null,
  OÁïÅz                 NUMBER(13) not null,
  OÁïÅz¼Ð             NUMBER(13) not null,
  ãz                       NUMBER(13) not null,
  ãz¼Ð                   NUMBER(13) not null,
  ãÁïÅz                 NUMBER(13) not null,
  ãÁïÅz¼Ð             NUMBER(13) not null,
  Oú¢À»c               NUMBER(13) not null,
  Oú¢À»c¼Ð           NUMBER(13) not null,
  OúãzÝv               NUMBER(13) not null,
  OúãzÝv¼Ð           NUMBER(13) not null,
  OúÁïÅzÝv             NUMBER(13) not null,
  OúÁïÅzÝv¼Ð         NUMBER(13) not null,
  ãz                     NUMBER(13) not null,
  ãzQ                   NUMBER(13) not null,
  ãz¼Ð                 NUMBER(13) not null,
  ÁïÅz               NUMBER(13) not null,
  ÁïÅzQ             NUMBER(13) not null,
  ÁïÅz¼Ð           NUMBER(13) not null,
  ÁïÅ¦                   NUMBER(9,7) not null,
  ÁïÅ¦Q                 NUMBER(9,7) not null,
  ÁïÅ¦¼Ð               NUMBER(9,7) not null,
  ãzÝv               NUMBER(13) not null,
  ãzÝv¼Ð           NUMBER(13) not null,
  ÁïÅzÝv             NUMBER(13) not null,
  ÁïÅzÝv¼Ð         NUMBER(13) not null,
  úãzÝv                 NUMBER(13) not null,
  úãzÝv¼Ð             NUMBER(13) not null,
  ¢À»c               NUMBER(13) not null,
  ¢À»c¼Ð           NUMBER(13) not null,
  ãÁz                 NUMBER(13) not null,
  ãÁz¼Ð             NUMBER(13) not null,
  ÁïÅÁz               NUMBER(13) not null,
  ÁïÅÁz¼Ð           NUMBER(13) not null,
  ã¸­z                 NUMBER(13) not null,
  ã¸­z¼Ð             NUMBER(13) not null,
  ÁïÅ¸­z               NUMBER(13) not null,
  ÁïÅ¸­z¼Ð           NUMBER(13) not null,
  kyªÁ©ãN       CHAR(6) not null,
  kyªÁãN       CHAR(6) not null,
  kyªãÁz           NUMBER(13) not null,
  kyªãÁzQ         NUMBER(13) not null,
  kyªãÁz¼Ð       NUMBER(13) not null,
  kyªÁïÅÁz         NUMBER(13) not null,
  kyªÁïÅÁzQ       NUMBER(13) not null,
  kyªÁïÅÁz¼Ð     NUMBER(13) not null,
  kyª¸­©ãN       CHAR(6) not null,
  kyª¸­ãN       CHAR(6) not null,
  kyªã¸­z           NUMBER(13) not null,
  kyªã¸­zQ         NUMBER(13) not null,
  kyªã¸­z¼Ð       NUMBER(13) not null,
  kyªÁïÅ¸­z         NUMBER(13) not null,
  kyªÁïÅ¸­zQ       NUMBER(13) not null,
  kyªÁïÅ¸­z¼Ð     NUMBER(13) not null,
  kyªÁïÅ¦             NUMBER(9,7) not null,
  kyªÁïÅ¦Q           NUMBER(9,7) not null,
  Oãz                     NUMBER(13) not null,
  OãzQ                   NUMBER(13) not null,
  Oãz¼Ð                 NUMBER(13) not null,
  OÁïÅz               NUMBER(13) not null,
  OÁïÅzQ             NUMBER(13) not null,
  OÁïÅz¼Ð           NUMBER(13) not null,
  OãzÝv               NUMBER(13) not null,
  OãzÝv¼Ð           NUMBER(13) not null,
  OÁïÅzÝv             NUMBER(13) not null,
  OÁïÅzÝv¼Ð         NUMBER(13) not null,
  Oú³{c                 NUMBER(13) not null,
  Oú§c                 NUMBER(13) not null,
  O³{ñûzÝv           NUMBER(13) not null,
  O§ñûzÝv           NUMBER(13) not null,
  O³{c                 NUMBER(13) not null,
  O§c                 NUMBER(13) not null,
  VKÁª³{z               NUMBER(13) not null,
  VKÁª§z               NUMBER(13) not null,
  ³{üàz                 NUMBER(13) not null,
  §üàz                 NUMBER(13) not null,
  ³{c                 NUMBER(13) not null,
  §c                 NUMBER(13) not null,
  ³{ûü\èzÝv       NUMBER(13) not null,
  §ûü\èzÝv       NUMBER(13) not null,
  ³{ñûzÝv           NUMBER(13) not null,
  §ñûzÝv           NUMBER(13) not null,
  ³{ñûzÝv¼Ð       NUMBER(13) not null,
  §ñûzÝv¼Ð       NUMBER(13) not null,
  ñû\èz                 NUMBER(13) not null,
  ³{¢oß[X¿             NUMBER(13) not null,
  §¢oß[X¿             NUMBER(13) not null,
  ³{¢û[X¿               NUMBER(13) not null,
  §¢û[X¿               NUMBER(13) not null,
  Oó[X¿üàz         NUMBER(13) not null,
  Oó[X¿üàz       NUMBER(13) not null,
  ¼óàUÖàz             NUMBER(13) not null,
  ¼óàUÖ§             NUMBER(13) not null,
  ³{Oóà                     NUMBER(13) not null,
  §Oóà                     NUMBER(13) not null,
  ¼óà                         NUMBER(13) not null,
  Ý|¹¸z                     NUMBER(13) not null,
  »Ýë¿                       NUMBER(13) not null,
  ÏpN                       NUMBER(2) not null,
  Û¯¿¦                       NUMBER(2) not null,
  S©úÔã^¿       NUMBER(13) not null,
  ãÎÛtO             CHAR(1) not null,
  V_ñÔ                     CHAR(15) not null,
  ã²®tO             CHAR(1) not null,
  ðÏXtO             CHAR(1) not null,
  cÆTv_ñotO         CHAR(1) not null,
  cÆTvûotO         CHAR(1) not null,
  cÆæª                     CHAR(1) not null,
  _ñàe_ñ¼               VARCHAR2(40) not null,
  Â _ñ¼                   VARCHAR2(40) not null,
  ¬ñú                         CHAR(8) not null,
  Ðàà                       NUMBER(5,3) not null,
  Ne¦                       NUMBER(5,3) not null,
  Ì£iï                     NUMBER(13) not null,
  Gï                           NUMBER(13) not null,
  ÅIñû\èú                 CHAR(8) not null,
  ïvåR[h                 CHAR(2) not null,
  ¹ptO                 CHAR(1) not null,
  Â ÷nx¥z                 NUMBER(13) not null,
  dótOQã               CHAR(1) not null,
  dótOQû               CHAR(1) not null,
  Ä[XæÁGgú         CHAR(8) not null,
  ÁïÅæª                     CHAR(2) not null,
  ¼Ðwüz                 NUMBER(13) not null,
  ¼ÐÅV_ñz               NUMBER(13) not null,
  ¼ÐÅVÁïÅz             NUMBER(13) not null,
  ¼Ð_ñz                   NUMBER(13) not null,
  ¬ñæÁGgú             CHAR(8) not null,
  ptO                     CHAR(1) not null,
  Ä[XN               CHAR(6) not null,
  Ä[X©®p±æª           CHAR(1) not null,
  Ä[X\¿L³æª         CHAR(1) not null,
  Ä[X\¿tO             CHAR(1) not null,
  ðñ\¿tO                 CHAR(1) not null,
  ©®¿æª                   CHAR(1) not null,
  O´¿z               NUMBER(13) not null,
  O¼Ð´¿z           NUMBER(13) not null,
  ªàæª                       CHAR(1) not null,
  RX[}@læª             CHAR(1) not null,
  \¿AÔ                       NUMBER(4) not null,
  ¢ûcÎÛOtO           CHAR(1) not null,
  OóÔtO                 CHAR(1) not null,
  üàñ                       NUMBER(3) not null,
  À»ñ                       NUMBER(3) not null,
  kyªÁ©ãNQ     CHAR(6) not null,
  kyªÁãNQ     CHAR(6) not null,
  kyª¸­©ãNQ     CHAR(6) not null,
  kyª¸­ãNQ     CHAR(6) not null,
  ññû\èú                 CHAR(8) not null,
  O³{ûü\èzÝv       NUMBER(13) not null,
  O§ûü\èzÝv       NUMBER(13) not null,
  ÅVÎO_ñÔ               CHAR(15) not null,
  ªà                       NUMBER(13) not null,
  ªà¼Ð                   NUMBER(13) not null,
  ªàÁïÅ                 NUMBER(13) not null,
  ªàÁïÅ¼Ð             NUMBER(13) not null,
  O¼ÐÅV_ñz           NUMBER(13) not null,
  O¼ÐÅVÁïÅz         NUMBER(13) not null,
  Oú³{c¼Ð             NUMBER(13) not null,
  Oú§c¼Ð             NUMBER(13) not null,
  O³{ñûzÝv¼Ð       NUMBER(13) not null,
  O§ñûzÝv¼Ð       NUMBER(13) not null,
  O³{c¼Ð             NUMBER(13) not null,
  O§c¼Ð             NUMBER(13) not null,
  VKÁª³{z¼Ð           NUMBER(13) not null,
  VKÁª§z¼Ð           NUMBER(13) not null,
  ³{üàz¼Ð             NUMBER(13) not null,
  §üàz¼Ð             NUMBER(13) not null,
  ³{c¼Ð             NUMBER(13) not null,
  §c¼Ð             NUMBER(13) not null,
  ³{ûü\èzÝv¼Ð   NUMBER(13) not null,
  §ûü\èzÝv¼Ð   NUMBER(13) not null,
  ñû\èz¼Ð             NUMBER(13) not null,
  ³{¢oß[X¿¼Ð         NUMBER(13) not null,
  §¢oß[X¿¼Ð         NUMBER(13) not null,
  ³{¢û[X¿¼Ð           NUMBER(13) not null,
  §¢û[X¿¼Ð           NUMBER(13) not null,
  Oó[X¿üàz¼Ð     NUMBER(13) not null,
  Oó[X¿üàz¼Ð   NUMBER(13) not null,
  ³{Oóà¼Ð                 NUMBER(13) not null,
  §Oóà¼Ð                 NUMBER(13) not null,
  ûGgú                 CHAR(8) not null,
  OãzÄ[X           NUMBER(13) not null,
  ãzÄ[X               NUMBER(13) not null,
  OúãzÝvÄ[X       NUMBER(13) not null,
  ãzÄ[X             NUMBER(13) not null,
  ãzÝvÄ[X       NUMBER(13) not null,
  úãzÝvÄ[X         NUMBER(13) not null,
  kyªãÁzÄ[X   NUMBER(13) not null,
  kyªã¸­zÄ[X   NUMBER(13) not null,
  OãzÝvÄ[X       NUMBER(13) not null,
  ¡ñÄ[X¿àæª           CHAR(1) not null,
  ¢À»cÄ[X       NUMBER(13) not null,
  Oú¢À»cÄ[X       NUMBER(13) not null,
  OÂ ÁïÅz             NUMBER(13) not null,
  ¼óàUÖàz¼Ð         NUMBER(13) not null,
  ¼óàUÖ§¼Ð         NUMBER(13) not null,
  ¼óà¼Ð                     NUMBER(13) not null,
  Ý|¹¸z§z           NUMBER(13) not null,
  opå_ñæª               CHAR(1) not null,
  áñàªñûãz           NUMBER(13) not null,
  áñàªñûãzÁïÅ     NUMBER(13) not null,
  ûæÁGgú             CHAR(8) not null,
  Oóàüàz               NUMBER(13) not null,
  Oóàüàz¼Ð           NUMBER(13) not null,
  Oóàc               NUMBER(13) not null,
  Oóàc¼Ð           NUMBER(13) not null,
  ûGgN           CHAR(6) default '000000' not null,
  ä Qüàñûz           NUMBER(13) default 0 not null,
  ä Qüàñûz¼Ð       NUMBER(13) default 0 not null,
  ä QüàOóz           NUMBER(13) default 0 not null,
  ä QüàOóz¼Ð       NUMBER(13) default 0 not null,
  SÛæª                       CHAR(1) default '0' not null,
  ªàñûTCg                 NUMBER(2) default 0 not null,
  ªàvãNú                 CHAR(8) default '0' not null,
  _ñàeQðñN         CHAR(6) not null,
  Â QðñN             CHAR(6) not null,
  ðñðQÝ|¹¸z           NUMBER(13) not null,
  ðñðQÝ|¹¸zvz NUMBER(13) not null,
  ªàÁïÅ¦               NUMBER(9,7) not null,
  Oó[X¿Á»z         NUMBER(13) not null,
  OóàÁ»z¼Ð           NUMBER(13) not null,
  Oó[X¿c¼Ð     NUMBER(13) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 3712K
    minextents 1
    maxextents unlimited
  );
comment on table M01SAJ_TBL
  is 'Â îñ(êÊ)';
alter table M01SAJ_TBL
  add constraint PK_M01SAJ_TBL primary key (R[hæª,_ñÔ,Ä[Xñ,_ñíÞ,AÔ,¿æª,ðñpæÁæª,\¿AÔ)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for M01SAJ_TBL...
alter table M01SAJ_TBL disable all triggers;
prompt Loading M01SAJ_TBL...
prompt Table is empty
prompt Enabling triggers for M01SAJ_TBL...
alter table M01SAJ_TBL enable all triggers;
set feedback on
set define on
prompt Done.
