BEGIN;
SET CONSTRAINTS ALL DEFERRED;
COPY "dirty"."tblSwitchboardItems" FROM STDIN WITH CSV HEADER;
SwitchboardID,ItemNumber,ItemText,Command,Argument,Tip
1,0,"Main switchboard",0,"Default",
1,1,"Studies…",1,"17",
1,2,"References to studies…",1,"7",
1,3,"Search...",1,"10",
1,4,"Reports...",1,"2",
1,5,"Reviewers and reviews…",1,"18",
1,6,"Import/export…",1,"15",
1,7,"Tools...",1,"9",
2,0,"Reports switchboard",0,,
2,1,"Study…",1,"12",
2,2,"Reference…",1,"13",
2,3,"Reviewers and reviews…",1,"20",
2,4,"Register statistics…",1,"14",
2,5,"Pick lists…",1,"16",
2,6,"Return to main switchboard",1,"1",
6,0,"Manage pick lists",0,,
6,1,"CRG Keyword",3,"frmMaintainKeyword",
6,2,"Design",3,"frmMaintainDesign",
6,3,"Health care condition",3,"frmMaintainHealthCareCondition",
6,4,"Intervention",3,"frmMaintainIntervention",
6,5,"Method of allocation",3,"frmMaintainMethods",
6,6,"Outcome",3,"frmMaintainOutcome",
6,7,"Participants",3,"frmMaintainParticipants",
6,8,"Return to tools switchboard",1,"9",
7,0,"References to studies switchboard",0,,
7,1,"Add/edit references",3,"frmReference",
7,2,"Assign references to reviewers",3,"frmRefToReviewer",
7,3,"Manage unlinked references",3,"frmRelinkRefsToStudy",
7,4,"Return to main switchboard",1,"1",
9,0,"Tools switchboard",0,,
9,1,"Manage pick lists…",1,"6",
9,2,"Options",3,"frmOptions",
9,3,"CRG information",3,"frmGroupInformation","Amend CRG name or register code"
9,4,"Return to main switchboard",1,"1",
10,0,"Search switchboard",0,,
10,1,"Search for a study",2,"frmStudySearch",
10,2,"Search for a reference",2,"frmRefSearch",
10,3,"Return to main switchboard",1,"1",
12,0,"Reports - study switchboard",0,,
12,1,"Study short form",4,"rptStudyShortForm",
12,2,"Study medium form",4,"rptStudyMediumForm",
12,3,"Study full form",4,"rptStudyFullForm",
12,4,"Study without reference",4,"rptStudyWithoutRef",
12,5,"Return to reports switchboard",1,"2",
12,6,"Return to main switchboard",1,"1",
13,0,"Reports - references switchboard",0,,
13,1,"Reference short form",4,"rptRefShortForm",
13,2,"Reference medium form",4,"rptRefMediumForm",
13,3,"Reference full form",4,"rptRefFullForm",
13,4,"List references without reviewer",4,"rptRefnoRev",
13,5,"Chase up references with reviewer",3,"frmChaseReviewers",
13,6,"References without study",4,"rptRefUnmatched",
13,7,"Return to reports switchboard",1,"2",
13,8,"Return to main switchboard",1,"1",
14,0,"Reports - register statistics",0,,
14,1,"Intervention statistics",4,"rptInterventionStats",
14,2,"Participant statistics",4,"rptParticipantStats",
14,3,"Review statistics",4,"rptReviewStats",
14,4,"Reviewer statistics",4,"rptReviewerStats",
14,5,"Topic list statistics",4,"rptTopicStats",
14,6,"CENTRAL submission statistics",4,"rptRegisterStats",
14,7,"Return to reports switchboard",1,"2",
14,8,"Return to main switchboard",1,"1",
15,0,"Import/export switchboard",0,,
15,1,"Reference import definition",3,"frmImportDef",
15,2,"Import references",3,"frmImportDialog",
15,3,"Process imported references",3,"frmProcessImportedRefs",
15,4,"Export register to CENTRAL",3,"frmExportCentral",
15,5,"Reference export definition",3,"frmExportDef",
15,6,"Export references",3,"frmExportDialog",
15,7,"More options…",1,"19",
15,8,"Return to main switchboard",1,"1",
16,0,"Pick list reports switchboard",0,,
16,1,"CRG Keyword",4,"rptCRGKeyword",
16,2,"Design",4,"rptDesign",
16,3,"Health care condition",4,"rptHealthCareCondition",
16,4,"Intervention",4,"rptIntervention",
16,5,"Method of allocation",4,"rptMethodOfAllocation",
16,6,"Outcome",4,"rptOutcome",
16,7,"Participants",4,"rptParticipant",
16,8,"Return to main switchboard",1,"1",
17,0,"Studies switchboard",0,,
17,1,"Add/Edit study",3,"frmStudy",
17,2,"Link study to topic list",3,"frmTopicList",
17,3,"Merge studies",3,"frmMerge",
17,4,"Return to main switchboard",1,"1",
18,0,"Reviewers and reviews switchboard",0,,
18,1,"Add/edit Reviewer or contact",3,"frmReviewer",
18,2,"Add/edit keywords assigned to reviewers",3,"frmRefToReviewer",
18,3,"Add/edit review, protocol or title",3,"frmReview",
18,4,"Return to main switchboard",1,"1",
19,0,"Import/export switchboard cont",0,,
19,1,"Import topic list",3,"frmImportTopic","Import a topic list from ModMan into a temporary table"
19,2,"Process imported topic list",3,"frmReplaceTopic","Replace existing topic list with the new version"
19,3,"Import reviewers/contacts",3,"frmImportReviewer","Import reviewer details from ModMan into a temporary table"
19,4,"Process imported reviewers/contacts",3,"frmCheckReviewers","Replace existing reviewer data with the imported reviewer data"
19,5,"Return to Import/export menu",1,"15",
19,6,"Return to main switchboard",1,"1",
20,0,"Reviewers and reviews reports switchboard",0,,
20,1,"Reviewer - contact details only",4,"rptReviewer",
20,2,"Reviewer - full details",4,"rptReviewerFull",
20,3,"Reviews, protocols and registered titles",4,"rptReview",
20,4,"Return to reports switchboard",1,"2",
20,5,"Return to main switchboard",1,"1",
\.
END;
