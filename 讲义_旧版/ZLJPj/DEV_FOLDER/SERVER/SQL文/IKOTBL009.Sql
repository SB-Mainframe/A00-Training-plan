DROP   TABLE  IKOTBL009   ;
CREATE TABLE  IKOTBL009  (
       �_��m�n                           CHAR(9)           NOT NULL,
       �ă��[�X�R�[�h                     NUMBER(1,0)       NOT NULL,
       �����菈���R�[�h                 NUMBER(2,0)       NOT NULL,
       �������R�[�h                   CHAR(8)           NOT NULL,
       ���x����R�[�h                     CHAR(8)           NOT NULL,
       �x����V�����R�[�h               CHAR(7)           ,
       �x����}��                         CHAR(3)           ,
CONSTRAINT  PK_IKOTBL009  PRIMARY KEY (
       �_��m�n,
       �ă��[�X�R�[�h,
       �����菈���R�[�h,
       �������R�[�h,
       ���x����R�[�h));

COMMENT ON TABLE IKOTBL009 IS '���x����R�[�h�ϊ��e�[�u��';
