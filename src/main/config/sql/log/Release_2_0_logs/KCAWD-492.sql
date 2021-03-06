/*
 Copyright 2005-2014 The Kuali Foundation

 Licensed under the Educational Community License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.osedu.org/licenses/ECL-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
*/

CREATE TABLE VALID_AWARD_BASIS_PAYMENT ( 
	VALID_AWARD_BASIS_PAYMENT_ID NUMBER(12,0) NOT NULL, 
	AWARD_TYPE_CODE NUMBER(3,0) NOT NULL, 
	BASIS_OF_PAYMENT_CODE VARCHAR2(3) NOT NULL,
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);
/* Primary Key Constraint */ 
ALTER TABLE VALID_AWARD_BASIS_PAYMENT 
ADD CONSTRAINT PK_VALID_AWARD_BASIS_PAYMENT 
PRIMARY KEY (VALID_AWARD_BASIS_PAYMENT_ID);
 

/* *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ */ 
ALTER TABLE VALID_AWARD_BASIS_PAYMENT 
ADD CONSTRAINT UQ_VALID_AWARD_BASIS_PAYMENT 
UNIQUE (AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE);
/* Foreign Key Constraint(s) */ 
ALTER TABLE VALID_AWARD_BASIS_PAYMENT 
ADD CONSTRAINT FK2_VALID_AWARD_BASIS_PAYMENT 
FOREIGN KEY (AWARD_TYPE_CODE) 
REFERENCES AWARD_TYPE (AWARD_TYPE_CODE);

ALTER TABLE VALID_AWARD_BASIS_PAYMENT 
ADD CONSTRAINT FK_VALID_AWARD_BASIS_PAYMENT 
FOREIGN KEY (BASIS_OF_PAYMENT_CODE) 
REFERENCES AWARD_BASIS_OF_PAYMENT (BASIS_OF_PAYMENT_CODE);

/* *************** LOAD DATA.  THIS DATA WAS TAKEN FROM THE COEUS TABLE OSP$VALID_AWARD_BASIS_PAYMENT  ************ */ 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 1, 1, '1', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 2, 1, '2', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 3, 1, '6', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 4, 2, '2', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 5, 3, '1', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 6, 3, '2', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 7, 3, '3', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 8, 3, '6', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 9, 4, '1', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 10, 4, '2', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 11, 4, '3', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 12, 5, '1', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 13, 5, '2', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 14, 5, '6', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 15, 6, '1', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 16, 6, '2', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 17, 6, '3', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 18, 7, '1', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 19, 7, '2', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 20, 7, '5', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 21, 7, '6', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 22, 8, '1', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 23, 8, '2', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 24, 8, '4', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 25, 9, '1', sysdate, user );
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 26, 9, '2', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 27, 9, '3', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 28, 9, '4', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 29, 10, '1', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 30, 10, '2', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 31, 11, '2', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 32, 11, '5', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 33, 12, '1', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 34, 12, '2', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 35, 12, '3', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 36, 12, '4', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 37, 12, '5', sysdate, user ); 
INSERT INTO VALID_AWARD_BASIS_PAYMENT ( VALID_AWARD_BASIS_PAYMENT_ID, AWARD_TYPE_CODE, BASIS_OF_PAYMENT_CODE, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 38, 13, '6', sysdate, user ); 
COMMIT;
