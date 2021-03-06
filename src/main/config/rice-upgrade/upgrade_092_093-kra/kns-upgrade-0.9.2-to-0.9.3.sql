------------------ KNS UPGRADE -----------------------
-- SEQUENCES CREATE --
CREATE SEQUENCE LOCK_ID_SEQ INCREMENT BY 1 START WITH 2000;
-- PESSIMISTIC LOCK CREATE --
CREATE TABLE KNS_PESSIMISTIC_LOCK_T (
        LOCK_ID                        NUMBER(14) CONSTRAINT KNS_PESSIMISTIC_LOCK_TN1 NOT NULL, 
        OBJ_ID                         VARCHAR2(36) DEFAULT SYS_GUID() CONSTRAINT KNS_PESSIMISTIC_LOCK_TN2 NOT NULL,
        VER_NBR                        NUMBER(8) DEFAULT 1 CONSTRAINT KNS_PESSIMISTIC_LOCK_TN3 NOT NULL,
        LOCK_DESCRIPTOR                VARCHAR2(4000),
        FDOC_NBR                       VARCHAR2(14) CONSTRAINT KNS_PESSIMISTIC_LOCK_TN4 NOT NULL,             
        LOCK_GENERATED_TS              DATE CONSTRAINT KNS_PESSIMISTIC_LOCK_TN5 NOT NULL,
        PERSON_UNVL_ID                 VARCHAR2(10) CONSTRAINT KNS_PESSIMISTIC_LOCK_TN6 NOT NULL,
     CONSTRAINT KNS_PESSIMISTIC_LOCK_TP1 PRIMARY KEY (LOCK_ID),
     CONSTRAINT KNS_PESSIMISTIC_LOCK_TC0 UNIQUE (OBJ_ID)
);
CREATE INDEX KNS_PESSIMISTIC_LOCK_TI1 ON KNS_PESSIMISTIC_LOCK_T(FDOC_NBR);
CREATE INDEX KNS_PESSIMISTIC_LOCK_TI2 ON KNS_PESSIMISTIC_LOCK_T(PERSON_UNVL_ID);
-- BOOTSTRAP DATA --
INSERT INTO SH_PARM_T(SH_PARM_NMSPC_CD, SH_PARM_DTL_TYP_CD, SH_PARM_NM, OBJ_ID, VER_NBR, SH_PARM_TYP_CD, SH_PARM_TXT, SH_PARM_DESC, SH_PARM_CONS_CD, WRKGRP_NM) VALUES('KR-NS', 'Document', 'SESSION_TIMEOUT_WARNING_MESSAGE_TIME', sys_guid(), 1, 'CONFG', '5', 'The number of minutes before a session expires that user should be warned when a document uses pessimistic locking.', 'A', 'KUALI_FMSOPS');
INSERT INTO SH_PARM_T(SH_PARM_NMSPC_CD, SH_PARM_DTL_TYP_CD, SH_PARM_NM, OBJ_ID, VER_NBR, SH_PARM_TYP_CD, SH_PARM_TXT, SH_PARM_DESC, SH_PARM_CONS_CD, WRKGRP_NM) VALUES('KR-NS', 'Document', 'PESSIMISTIC_LOCK_ADMIN_GROUP', sys_guid(), 1, 'AUTH', 'WorkflowAdmin', 'Workgroup which can perform admin deletion and lookup functions for Pessimistic Locks.', 'A', 'KUALI_FMSOPS');
INSERT INTO SH_PARM_T(SH_PARM_NMSPC_CD, SH_PARM_DTL_TYP_CD, SH_PARM_NM, OBJ_ID, VER_NBR, SH_PARM_TYP_CD, SH_PARM_TXT, SH_PARM_DESC, SH_PARM_CONS_CD, WRKGRP_NM) VALUES('KR-NS', 'All', 'ENABLE_DIRECT_INQUIRIES_IND', sys_guid(), 1, 'CONFG', 'N', 'Flag for enabling/disabling direct inquiries on screens that are drawn by the nervous system (i.e. lookups and maintenance documents)', 'A', 'KUALI_FMSOPS');
INSERT INTO sh_parm_t ("SH_PARM_NMSPC_CD","SH_PARM_DTL_TYP_CD","SH_PARM_NM","SH_PARM_TXT","SH_PARM_CONS_CD","SH_PARM_DESC","SH_PARM_TYP_CD","WRKGRP_NM") VALUES ('KR-NS','Document','MAX_FILE_SIZE_ATTACHMENT','5M','A','Maximum attachment upload size for the application. Used by KualiDocumentFormBase. Must be an integer, optionally followed by ''K'', ''M'', or ''G''.','CONFG','KUALI_FMSOPS');
COMMIT;