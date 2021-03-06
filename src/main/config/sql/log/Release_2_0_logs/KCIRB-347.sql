
CREATE TABLE PROTOCOL_ACTION_TYPE ( 
    PROTOCOL_ACTION_TYPE_CODE VARCHAR2(3) NOT NULL, 
    DESCRIPTION VARCHAR2(200) NOT NULL, 
    TRIGGER_SUBMISSION CHAR(1) NOT NULL,
    TRIGGER_CORRESPONDENCE CHAR(1) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL,
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);
    
ALTER TABLE PROTOCOL_ACTION_TYPE 
ADD CONSTRAINT PK_PROTOCOL_ACTION_TYPE 
PRIMARY KEY (PROTOCOL_ACTION_TYPE_CODE);

CREATE OR REPLACE VIEW OSP$PROTOCOL_ACTION_TYPE AS SELECT
  PROTOCOL_ACTION_TYPE_CODE,
  DESCRIPTION,
  TRIGGER_SUBMISSION,
  TRIGGER_CORRESPONDENCE,
  UPDATE_TIMESTAMP,
  UPDATE_USER
FROM PROTOCOL_ACTION_TYPE;

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('100', 'Protocol Created', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('101', 'Submitted to IRB', 'Y', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('102', 'Renewal Created', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('103', 'Amendment Created', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('104', 'Request For Termination', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('105', 'Request To Close', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('106', 'Request For Suspension', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('107', 'Request for Withdrawal', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('108', 'Request to Close Enrollment', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('109', 'Notified Committee', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('110', 'Correspondence Generated', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('200', 'Assigned to Agenda', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('201', 'Deferred', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('202', 'Substantive Revisions Required', 'Y', 'N',   sysdate,'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('203', 'Specific Minor Revisions Required', 'Y', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('204', 'Approved', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('205', 'Expedited Approval', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('206', 'Exemption Granted', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('207', 'Closed for Enrollment', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('300', 'Closed (Administratively closed)', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('301', 'Terminated', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('302', 'Suspended', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('303', 'Withdrawn', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('304', 'Disapproved', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('305', 'Expired', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('111', 'Renewal Reminder Generated', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('112', 'Reminder to IRB Notification Generated', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('113', 'Administrative Correction', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('208', 'Response Approval', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('209', 'IRB Acknowledgement', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('210', 'IRB review not required', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('306', 'Suspended by DSMB', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('114', 'Request for Data Analysis Only', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('115', 'Request to Re-open Enrollment', 'N', 'N', sysdate,'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('116', 'Notify IRB', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('211', 'Data Analysis Only', 'N', 'N', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, UPDATE_TIMESTAMP,UPDATE_USER) 
VALUES ('212', 'Re-open Enrollment', 'N', 'N', sysdate, 'KRADEV');

ALTER TABLE PROTOCOL_ACTIONS
ADD (PROTOCOL_ACTION_TYPE_CODE VARCHAR(3) NOT NULL);

ALTER TABLE PROTOCOL_ACTIONS
ADD CONSTRAINT FK_PROTOCOL_ACTIONS1
FOREIGN KEY (PROTOCOL_ACTION_TYPE_CODE)
REFERENCES PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE);

CREATE OR REPLACE VIEW OSP$PROTOCOL_ACTIONS AS SELECT
  PROTOCOL_NUMBER,
  SEQUENCE_NUMBER,
  ACTION_ID,
  PROTOCOL_ACTION_TYPE_CODE,
  SUBMISSION_NUMBER,
  COMMENTS,
  UPDATE_TIMESTAMP,
  UPDATE_USER,
  ACTION_DATE
FROM PROTOCOL_ACTIONS; 

commit;



