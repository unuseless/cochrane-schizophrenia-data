BEGIN;
SET CONSTRAINTS ALL DEFERRED;
COPY "dirty"."tblReviewTopic" FROM STDIN WITH CSV HEADER;
ReviewTopicID,ReviewID,TopicID
\.
END;
