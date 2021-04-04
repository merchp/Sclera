CREATE TABLE Response (
	survey_response_id int FOREIGN KEY REFERENCES survey_response(survey_response_id),
	question_id int FOREIGN KEY REFERENCES question(question_id),
	respondent_id int FOREIGN KEY REFERENCES respondent(respondent_id),
	answer varchar (254)
)