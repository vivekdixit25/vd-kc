DELETE FROM PROTOCOL_ATTACHMENT_PROTOCOL;
commit;

DELETE FROM PROTOCOL_ATTACHMENT_PERSONNEL;
commit;

DELETE FROM PROTOCOL_ATTACHMENT_FILE;

DELETE FROM PROTOCOL_ATTACHMENT_TYPE_GROUP;
commit;

DELETE FROM PROTOCOL_ATTACHMENT_TYPE;
commit;

DELETE FROM PROTOCOL_ATTACHMENT_GROUP;
commit;

INSERT INTO PROTOCOL_ATTACHMENT_TYPE ( TYPE_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 1, 'Informed Consent Document', sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE ( TYPE_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 2, 'Recruitment Brochure', sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE ( TYPE_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 3, 'Advertisement', sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE ( TYPE_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 4, 'Protocol Narrative', sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE ( TYPE_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 5, 'Investigator Brochure', sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE ( TYPE_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 6, 'Children''s Assent Form', sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE ( TYPE_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 7, 'HIPAA Research Authorization Form', sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE ( TYPE_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 8, 'HIPAA Waiver of Research Authorization Form', sysdate, user );
INSERT INTO PROTOCOL_ATTACHMENT_TYPE ( TYPE_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 9, 'Other', sysdate, user );
INSERT INTO PROTOCOL_ATTACHMENT_TYPE ( TYPE_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 10, 'Adverse Event', sysdate, user );
INSERT INTO PROTOCOL_ATTACHMENT_TYPE ( TYPE_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 11, 'Biography', sysdate, user );
commit;

INSERT INTO PROTOCOL_ATTACHMENT_GROUP ( GROUP_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 1, 'Protocol Attachments', sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_GROUP ( GROUP_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 2, 'Personnel Attachments', sysdate, user );
commit;

INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP ( TYPE_GROUP_ID, TYPE_CD, GROUP_CD, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 1, 1, 1, sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP ( TYPE_GROUP_ID, TYPE_CD, GROUP_CD, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 2, 2, 1, sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP ( TYPE_GROUP_ID, TYPE_CD, GROUP_CD, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 3, 3, 1, sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP ( TYPE_GROUP_ID, TYPE_CD, GROUP_CD, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 4, 4, 1, sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP ( TYPE_GROUP_ID, TYPE_CD, GROUP_CD, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 5, 5, 1, sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP ( TYPE_GROUP_ID, TYPE_CD, GROUP_CD, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 6, 6, 1, sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP ( TYPE_GROUP_ID, TYPE_CD, GROUP_CD, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 7, 7, 1, sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP ( TYPE_GROUP_ID, TYPE_CD, GROUP_CD, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 8, 8, 1, sysdate, user ); 
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP ( TYPE_GROUP_ID, TYPE_CD, GROUP_CD, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 9, 9, 1, sysdate, user );
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP ( TYPE_GROUP_ID, TYPE_CD, GROUP_CD, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 10, 10, 1, sysdate, user );
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP ( TYPE_GROUP_ID, TYPE_CD, GROUP_CD, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 12, 9, 2, sysdate, user );
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP ( TYPE_GROUP_ID, TYPE_CD, GROUP_CD, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 11, 11, 2, sysdate, user );
commit;

CREATE OR REPLACE VIEW OSP$PROTOCOL_OTHER_DOCUMENTS AS 
    SELECT pap.PROTOCOL_NUMBER, pap.SEQUENCE_NUMBER, pap.TYPE_CD, pap.DESCRIPTION, paf.FILE_NAME, paf.FILE_DATA,
    pap.UPDATE_TIMESTAMP, pap.UPDATE_USER, pap.DOCUMENT_ID
    FROM PROTOCOL_ATTACHMENT_PROTOCOL pap, PROTOCOL_ATTACHMENT_FILE paf
    WHERE pap.FILE_ID = paf.PA_FILE_ID AND pap.TYPE_CD = '9';
