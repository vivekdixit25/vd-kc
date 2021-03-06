create table tmp_sponsor_form_templates as select * from sponsor_form_templates;
CREATE OR REPLACE
  FUNCTION BLOB2CLOB(
      L_BLOB BLOB)
    RETURN CLOB
  IS
    L_CLOB CLOB;
    L_SRC_OFFSET NUMBER;
    L_DEST_OFFSET NUMBER;
    L_BLOB_CSID NUMBER := DBMS_LOB.DEFAULT_CSID;
    V_LANG_CONTEXT NUMBER := DBMS_LOB.DEFAULT_LANG_CTX;
    L_WARNING NUMBER;
    L_AMOUNT NUMBER := DBMS_LOB.LOBMAXSIZE;
  BEGIN
    IF L_BLOB IS NULL THEN
      RETURN NULL;
    ELSE
      DBMS_LOB.CREATETEMPORARY (L_CLOB, TRUE);
      L_SRC_OFFSET := 1;
      L_DEST_OFFSET := 1;
      L_AMOUNT := NVL(DBMS_LOB.GETLENGTH (L_BLOB), 0);
      DBMS_LOB.CONVERTTOCLOB (L_CLOB, L_BLOB, L_AMOUNT, L_SRC_OFFSET, L_DEST_OFFSET, 0, V_LANG_CONTEXT, L_WARNING );
      RETURN L_CLOB;
    END IF;
  END;
  /
delete from sponsor_form_templates;
alter table sponsor_form_templates drop column form_template ;
alter table sponsor_form_templates add  form_template clob;
INSERT
INTO SPONSOR_FORM_TEMPLATES
  (
    SPONSOR_CODE,
    PACKAGE_NUMBER,
    PAGE_NUMBER,
    PAGE_DESCRIPTION,
    UPDATE_TIMESTAMP,
    UPDATE_USER,
    VER_NBR,
    OBJ_ID,
    FILE_NAME,
    CONTENT_TYPE,
    FORM_TEMPLATE
  )
SELECT SPONSOR_CODE,
  PACKAGE_NUMBER,
  PAGE_NUMBER,
  PAGE_DESCRIPTION,
  UPDATE_TIMESTAMP,
  UPDATE_USER,
  VER_NBR,
  OBJ_ID,
  FILE_NAME,
  CONTENT_TYPE,
  blob2clob(form_template)
FROM TMP_SPONSOR_FORM_TEMPLATES ;
COMMIT;
DROP FUNCTION BLOB2CLOB;
