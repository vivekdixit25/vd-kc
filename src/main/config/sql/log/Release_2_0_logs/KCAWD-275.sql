CREATE TABLE TIME_AND_MONEY_DOCUMENT(
DOCUMENT_NUMBER VARCHAR2(10) NOT NULL,
AWARD_NUMBER VARCHAR2(12) NOT NULL,
VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID()  NOT NULL,
UPDATE_TIMESTAMP DATE NOT NULL,
UPDATE_USER VARCHAR2(10) NOT NULL);

ALTER TABLE TIME_AND_MONEY_DOCUMENT
ADD CONSTRAINT PK_TIME_AND_MONEY_DOCUMENT
PRIMARY KEY (DOCUMENT_NUMBER);

ALTER TABLE TIME_AND_MONEY_DOCUMENT
ADD CONSTRAINT UK_AWD_NBR_T_AND_M_DOCUMENT
UNIQUE (AWARD_NUMBER);

insert into FP_DOC_TYPE_T (FDOC_TYP_CD, FDOC_NM, FDOC_TYP_ACTIVE_CD) values ('TAMD','TIMEANDMONEY', 'Y');

commit;