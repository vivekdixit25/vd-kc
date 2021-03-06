--create a "Modify Protocol Submission" permission
Insert into KRIM_PERM_T (PERM_ID,OBJ_ID,VER_NBR,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND) 
values (KRIM_PERM_ID_S.NEXTVAL,'3F0FE9D4-83BC-7CC6-5292-49E6F23FA6F0',1, 
        (SELECT T.PERM_TMPL_ID FROM KRIM_PERM_TMPL_T T WHERE T.NMSPC_CD = 'KC-IDM' AND T.NM = 'Perform Document Action'),
        'KC-PROTOCOL','Modify Protocol Submission','modify an existing protocol submission','Y')
/
--associate that permission with irb administrator
Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) 
values (KRIM_ROLE_PERM_ID_S.NEXTVAL,'D28CF8A4-0951-DE4E-4350-D29F8FEFE053',1, 
        (SELECT ROLE_ID FROM KRIM_ROLE_T RT WHERE RT.ROLE_NM = 'IRB Administrator' AND RT.NMSPC_CD = 'KC-UNT'), 
        (SELECT KP.PERM_ID FROM KRIM_PERM_T KP WHERE KP.NMSPC_CD = 'KC-PROTOCOL' and KP.NM = 'Modify Protocol Submission'),'Y')
/
commit
/