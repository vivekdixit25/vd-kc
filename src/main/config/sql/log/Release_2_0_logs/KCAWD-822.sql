update FREQUENCY_BASE set DESCRIPTION = 'Obligation End Date' where FREQUENCY_BASE_CODE = '3';
UPDATE FREQUENCY_BASE SET DESCRIPTION = 'Obligation Start Date' WHERE FREQUENCY_BASE_CODE = '5';
COMMIT;
