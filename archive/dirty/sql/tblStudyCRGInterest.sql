BEGIN;
SET CONSTRAINTS ALL DEFERRED;
COPY "dirty"."tblStudyCRGInterest" FROM STDIN WITH CSV HEADER;
CRGStudyID,CRGCode
\.
END;
