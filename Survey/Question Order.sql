CREATE TABLE Question_Order (
	question_id int FOREIGN KEY REFERENCES question(question_id),
	survey_id int FOREIGN KEY REFERENCES survey(survey_id),
	question_order int
)