create or replace view OSP$BUDGET_PERSONNEL_DETAILS as 
	select PROPOSAL_NUMBER,VERSION_NUMBER,BUDGET_PERIOD,LINE_ITEM_NUMBER,PERSON_NUMBER,PERSON_ID,
	JOB_CODE,START_DATE,END_DATE,PERIOD_TYPE,LINE_ITEM_DESCRIPTION,
	SEQUENCE_NUMBER,SALARY_REQUESTED,PERCENT_CHARGED,PERCENT_EFFORT,COST_SHARING_PERCENT,
	COST_SHARING_AMOUNT,UNDERRECOVERY_AMOUNT,ON_OFF_CAMPUS_FLAG,APPLY_IN_RATE_FLAG,BUDGET_JUSTIFICATION,
	UPDATE_TIMESTAMP,UPDATE_USER
	from BUDGET_PERSONNEL_DETAILS;