CREATE OR REPLACE PROCEDURE "GET_UNIT_HIERARCHY_NODE" 
( AW_UNIT_NUMBER IN OSP$UNIT_HIERARCHY.unit_number%TYPE,
  cur_hierarchy IN OUT result_sets.cur_generic) IS

BEGIN

OPEN cur_hierarchy FOR
  SELECT OSP$UNIT_HIERARCHY.UNIT_NUMBER,
         OSP$UNIT_HIERARCHY.PARENT_UNIT_NUMBER,
         OSP$UNIT_HIERARCHY.HAS_CHILDREN_FLAG,
         OSP$UNIT_HIERARCHY.UPDATE_TIMESTAMP,
         OSP$UNIT_HIERARCHY.UPDATE_USER,
 			OSP$UNIT.UNIT_NAME
    FROM OSP$UNIT_HIERARCHY,  OSP$UNIT
   WHERE ( OSP$UNIT_HIERARCHY.UNIT_NUMBER = OSP$UNIT.UNIT_NUMBER )
   AND OSP$UNIT_HIERARCHY.UNIT_NUMBER=AW_UNIT_NUMBER;

END;
/
