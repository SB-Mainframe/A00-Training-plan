CREATE TABLE MST_DOSO_TANKI
(
    ���o�ߊ���_����                CHAR(2) NOT NULL,
    ���o�ߊ���_����                CHAR(3) NOT NULL,
    �����ی��Z������_�P            NUMBER(10,8) NOT NULL,
    �K�p��_�P                      CHAR(8) NOT NULL,
    �����ی��Z������_�Q            NUMBER(10,8) NOT NULL,
    �K�p��_�Q                      CHAR(8) NOT NULL,
    �o�^��                         CHAR(8) NOT NULL,
    �o�^����                       CHAR(6) NOT NULL,
    �o�^�S���҃R�[�h               CHAR(4) NOT NULL,
    �X�V��                         CHAR(8) NOT NULL,
    �X�V����                       CHAR(6) NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) NOT NULL,
    CONSTRAINT P_MST_DOSO_TANKI PRIMARY KEY (���o�ߊ���_����, ���o�ߊ���_����) USING INDEX
)
/
