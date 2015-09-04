BEGIN;
SET search_path = "dirty", pg_catalog;
ALTER TABLE "tblReportCRGKeyword" ADD CONSTRAINT "tblReportCRGKeyword_CRGKeywordID_fk" FOREIGN KEY ("CRGKeywordID") REFERENCES "tblCRGKeyword"("CRGKeywordID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblReportCRGKeyword" ADD CONSTRAINT "tblReportCRGKeyword_CRGReportID_fk" FOREIGN KEY ("CRGReportID") REFERENCES "tblReport"("CRGReportID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyDesign" ADD CONSTRAINT "tblStudyDesign_DesignID_fk" FOREIGN KEY ("DesignID") REFERENCES "tblDesign"("DesignID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyHealthCareCondition" ADD CONSTRAINT "tblStudyHealthCareCondition_HealthCareConditionID_fk" FOREIGN KEY ("HealthCareConditionID") REFERENCES "tblHealthCareCondition"("HealthCareConditionID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyIntervention" ADD CONSTRAINT "tblStudyIntervention_InterventionID_fk" FOREIGN KEY ("InterventionID") REFERENCES "tblIntervention"("InterventionID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyMethod" ADD CONSTRAINT "tblStudyMethod_MethodofAllocationID_fk" FOREIGN KEY ("MethodofAllocationID") REFERENCES "tblMethodofAllocation"("MethodofAllocationID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyOutcome" ADD CONSTRAINT "tblStudyOutcome_OutcomeID_fk" FOREIGN KEY ("OutcomeID") REFERENCES "tblOutcome"("OutcomeID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyParticipant" ADD CONSTRAINT "tblStudyParticipant_ParticipantsID_fk" FOREIGN KEY ("ParticipantsID") REFERENCES "tblParticipant"("ParticipantsID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyCRGInterest" ADD CONSTRAINT "tblStudyCRGInterest_CRGStudyID_fk" FOREIGN KEY ("CRGStudyID") REFERENCES "tblStudy"("CRGStudyID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyDesign" ADD CONSTRAINT "tblStudyDesign_CRGStudyID_fk" FOREIGN KEY ("CRGStudyID") REFERENCES "tblStudy"("CRGStudyID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyHealthCareCondition" ADD CONSTRAINT "tblStudyHealthCareCondition_CRGStudyID_fk" FOREIGN KEY ("CRGStudyID") REFERENCES "tblStudy"("CRGStudyID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyIntervention" ADD CONSTRAINT "tblStudyIntervention_CRGStudyID_fk" FOREIGN KEY ("CRGStudyID") REFERENCES "tblStudy"("CRGStudyID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyMethod" ADD CONSTRAINT "tblStudyMethod_CRGStudyID_fk" FOREIGN KEY ("CRGStudyID") REFERENCES "tblStudy"("CRGStudyID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyOutcome" ADD CONSTRAINT "tblStudyOutcome_CRGStudyID_fk" FOREIGN KEY ("CRGStudyID") REFERENCES "tblStudy"("CRGStudyID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyParticipant" ADD CONSTRAINT "tblStudyParticipant_CRGStudyID_fk" FOREIGN KEY ("CRGStudyID") REFERENCES "tblStudy"("CRGStudyID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyReport" ADD CONSTRAINT "tblStudyReport_CRGStudyID_fk" FOREIGN KEY ("CRGStudyID") REFERENCES "tblStudy"("CRGStudyID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblReviewerKeyword" ADD CONSTRAINT "tblReviewerKeyword_CRGKeywordID_fk" FOREIGN KEY ("CRGKeywordID") REFERENCES "tblCRGKeyword"("CRGKeywordID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyReport" ADD CONSTRAINT "tblStudyReport_CRGReportID_fk" FOREIGN KEY ("CRGReportID") REFERENCES "tblReport"("CRGReportID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblSearchLines" ADD CONSTRAINT "tblSearchLines_SavedSearchID_fk" FOREIGN KEY ("SavedSearchID") REFERENCES "tblSavedSearch"("SavedSearchID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblSearchLines" ADD CONSTRAINT "tblSearchLines_SearchFieldDefID_fk" FOREIGN KEY ("SearchFieldDefID") REFERENCES "tblSearchFieldsDef"("SearchFieldID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyTopic" ADD CONSTRAINT "tblStudyTopic_CRGStudyID_fk" FOREIGN KEY ("CRGStudyID") REFERENCES "tblStudy"("CRGStudyID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblReportReviewer" ADD CONSTRAINT "tblReportReviewer_CRGReportID_fk" FOREIGN KEY ("CRGReportID") REFERENCES "tblReport"("CRGReportID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblReportReviewer" ADD CONSTRAINT "tblReportReviewer_reviewer_id_fk" FOREIGN KEY ("reviewer_id") REFERENCES "tblReviewer"("reviewer_id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblReview" ADD CONSTRAINT "tblReview_cnt_reviewer_fk" FOREIGN KEY ("cnt_reviewer") REFERENCES "tblReviewer"("reviewer_id") ON UPDATE CASCADE;
ALTER TABLE "tblReviewerKeyword" ADD CONSTRAINT "tblReviewerKeyword_Reviewer_ID_fk" FOREIGN KEY ("Reviewer_ID") REFERENCES "tblReviewer"("reviewer_id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyReview" ADD CONSTRAINT "tblStudyReview_ReviewID_fk" FOREIGN KEY ("ReviewID") REFERENCES "tblReview"("AutoID") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "tblStudyReview" ADD CONSTRAINT "tblStudyReview_CRGStudyID_fk" FOREIGN KEY ("CRGStudyID") REFERENCES "tblStudy"("CRGStudyID") ON UPDATE CASCADE ON DELETE CASCADE;

END;
