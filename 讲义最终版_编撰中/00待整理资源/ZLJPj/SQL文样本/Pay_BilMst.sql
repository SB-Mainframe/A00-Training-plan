CREATE TABLE PAY_BILMST
(
    REGJPN                         CHAR(6) NOT NULL,
    CTLNUM                         CHAR(9) NOT NULL,
    DATNUM                         CHAR(4) NOT NULL,
    UNICOD                         CHAR(3) NOT NULL,
    BILNUM                         CHAR(9) NOT NULL,
    BNKCOD                         CHAR(4) NOT NULL,
    BRCCOD                         CHAR(3) NOT NULL,
    DRWDAY                         CHAR(8) NOT NULL,
    DRWJPN                         CHAR(6) NOT NULL,
    ISUDAY                         CHAR(8) NOT NULL,
    ISUJPN                         CHAR(6) NOT NULL,
    DUEDAY                         CHAR(8) NOT NULL,
    DUEJPN                         CHAR(6) NOT NULL,
    CLTSWT                         CHAR(1) NOT NULL,
    CLTNAM                         VARCHAR2(44) NOT NULL,
    ISUTYP                         CHAR(1) NOT NULL,
    ISUTRM                         CHAR(2) NOT NULL,
    SEQNUM                         CHAR(5) NOT NULL,
    SEPNUM                         CHAR(1) NOT NULL,
    SEPPUT                         CHAR(1) NOT NULL,
    SNDTYP                         CHAR(1) NOT NULL,
    CNTNUM                         CHAR(10) NOT NULL,
    ZIPCOD                         CHAR(7) NOT NULL,
    MALNAM                         VARCHAR2(42) NOT NULL,
    MALNM2                         VARCHAR2(42) NOT NULL,
    MALADR                         VARCHAR2(42) NOT NULL,
    MALAD2                         VARCHAR2(42) NOT NULL,
    MALAD3                         VARCHAR2(42) NOT NULL,
    ADRTYP                         CHAR(1) NOT NULL,
    DAYBGN                         CHAR(8) NOT NULL,
    DAYEND                         CHAR(8) NOT NULL,
    PUTFLG                         CHAR(1) NOT NULL,
    CNTCNT                         NUMBER(3,0) NOT NULL,
    SEPCNT                         NUMBER(1,0) NOT NULL,
    SEQCNT                         NUMBER(1,0) NOT NULL,
    BILAMT                         NUMBER(13,0) NOT NULL,
    TAXAMT                         NUMBER(13,0) NOT NULL,
    TOTAMT                         NUMBER(13,0) NOT NULL,
    REGYMD                         CHAR(8) NOT NULL,
    REGTIM                         CHAR(6) NOT NULL,
    REGPSN                         CHAR(8) NOT NULL,
    MODDAY                         CHAR(8) NOT NULL,
    MODTIM                         CHAR(6) NOT NULL,
    MODPSN                         CHAR(8) NOT NULL,
    REGKBN                         CHAR(1) NOT NULL,
    REGDAY                         CHAR(8) NOT NULL,
    DRWKBN                         CHAR(1) NOT NULL,
    ISUKBN                         CHAR(1) NOT NULL,
    DUEKBN                         CHAR(1) NOT NULL,
    INPPSN                         CHAR(8) NOT NULL,
    CONSTRAINT PKEY_PAY_BILMST PRIMARY KEY (REGJPN, CTLNUM)
)
/