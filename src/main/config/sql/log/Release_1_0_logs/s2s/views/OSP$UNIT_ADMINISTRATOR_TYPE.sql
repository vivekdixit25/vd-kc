
CREATE OR REPLACE VIEW OSP$UNIT_ADMINISTRATOR_TYPE  ( 
UNIT_ADMINISTRATOR_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID 
)
AS select 
UNIT_ADMINISTRATOR_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID
	from UNIT_ADMINISTRATOR_TYPE;
	
	