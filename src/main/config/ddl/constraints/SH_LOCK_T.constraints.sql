ALTER TABLE SH_LOCK_T
  ADD ( CONSTRAINT SH_LOCK_TR1 FOREIGN KEY (
        TRN_SMPHR_TYP_CD )
  REFERENCES SH_LOCK_TYP_DESC_T ( 
        TRN_SMPHR_TYP_CD ));
