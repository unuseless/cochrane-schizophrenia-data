BEGIN;
SET CONSTRAINTS ALL DEFERRED;
COPY "dirty"."tblStudyTopic" FROM STDIN WITH CSV HEADER;
CRGStudyID,CRGTopicID,StudyTopicId
7452,551,2
3854,1151,3
\.
END;
