DROP   TABLE  IKOTBL001   ;
CREATE TABLE  IKOTBL001  (
       �����R�[�h                       CHAR(8)           NOT NULL,
       �ړI�b�c                           CHAR(1)           NOT NULL,
       �V�����R�[�h                     CHAR(7)           NOT NULL,
       �}��                               CHAR(3)           NOT NULL,
       �^�M����R�[�h                     CHAR(7)           NOT NULL,
       ���񂹃R�[�h                       CHAR(8)           NOT NULL,
       ���[�U�R�[�h                       CHAR(8)           NOT NULL,
       ���ʂb�c                           CHAR(1)           NOT NULL,
CONSTRAINT  PK_IKOTBL001  PRIMARY KEY (
       �����R�[�h,
       �ړI�b�c));

COMMENT ON TABLE IKOTBL001 IS '�ϊ��e�[�u��';