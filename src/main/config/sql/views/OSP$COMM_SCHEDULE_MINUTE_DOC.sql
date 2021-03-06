-- View for Coeus compatibility 
CREATE OR REPLACE VIEW OSP$COMM_SCHEDULE_MINUTE_DOC AS SELECT 
    COMM_SCHEDULE.SCHEDULE_ID, 
    COMM_SCHEDULE_MINUTE_DOC.MINUTE_NUMBER, 
    COMM_SCHEDULE_MINUTE_DOC.MINUTE_NAME, 
    COMM_SCHEDULE_MINUTE_DOC.PDF_STORE, 
    COMM_SCHEDULE_MINUTE_DOC.CREATE_TIMESTAMP, 
    COMM_SCHEDULE_MINUTE_DOC.CREATE_USER, 
    COMM_SCHEDULE_MINUTE_DOC.UPDATE_TIMESTAMP, 
    COMM_SCHEDULE_MINUTE_DOC.UPDATE_USER
FROM COMM_SCHEDULE_MINUTE_DOC,
     COMM_SCHEDULE
WHERE COMM_SCHEDULE.ID = COMM_SCHEDULE_MINUTE_DOC.SCHEDULE_ID_FK;