create or replace view OSP$ROLE_RIGHTS as 
	select RIGHT_ID,ROLE_ID,DESCEND_FLAG,UPDATE_TIMESTAMP,UPDATE_USER
	from ROLE_RIGHTS;