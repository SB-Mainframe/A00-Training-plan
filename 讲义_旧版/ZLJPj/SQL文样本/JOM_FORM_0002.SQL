CREATE TABLE JOM_FORM_0002
(
    SHTNUM                         NUMBER(2,0),
    �W�����x�������R�[�h           CHAR(2),
    �x����������                   VARCHAR2(40) NOT NULL,
    ���Ə���_�P                    VARCHAR2(20),
    �_���                         CHAR(8) NOT NULL,
    ������                         CHAR(8),
    �ݒu�ꏊ���Q����               VARCHAR2(40) NOT NULL,
    �W�����_��ԍ�                 CHAR(9) NOT NULL,
    �_��ԍ�                       CHAR(7) NOT NULL,
    �J�n�}��                       CHAR(2) NOT NULL,
    �ŏI�}��                       CHAR(2) NOT NULL,
    ���萔��                     NUMBER(13,0)
)
/
CREATE UNIQUE INDEX JOM_FORM_0002
ON JOM_FORM_0002
(�W�����x�������R�[�h, SHTNUM)
/
