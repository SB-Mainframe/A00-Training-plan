CREATE TABLE MST_JUSHO
(
    �X�֔ԍ�                       CHAR(7) NOT NULL,
    �Z��_�P                        VARCHAR2(10) NOT NULL,
    �Z��_�Q                        VARCHAR2(40) NOT NULL,
    �Z��_�R                        VARCHAR2(40) NOT NULL,
    �Z��_�S                        VARCHAR2(10) NOT NULL,
    �Z��_�T                        VARCHAR2(40) NOT NULL,
    �Z��_�U                        VARCHAR2(40) NOT NULL,
    �[�t��R�[�h                   CHAR(6) NOT NULL,
    �o�^��                         CHAR(8) NOT NULL,
    �o�^����                       CHAR(6) NOT NULL,
    �o�^�S���҃R�[�h               CHAR(4) NOT NULL,
    �X�V��                         CHAR(8) NOT NULL,
    �X�V����                       CHAR(6) NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) NOT NULL,
    �����L�[                       CHAR(2) NOT NULL,
    CONSTRAINT P_MST_JUSHO PRIMARY KEY (�X�֔ԍ�) USING INDEX
)
/
CREATE INDEX I_NOFU_CD
ON MST_JUSHO
(�[�t��R�[�h)
/
CREATE INDEX I_NOF_KEN
ON MST_JUSHO
(�����L�[)
/
