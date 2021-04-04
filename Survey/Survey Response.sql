CREATE TABLE Survey_Response (
	survey_response_id int primary key,
	survey_id int FOREIGN KEY REFERENCES survey(survey_id),
	respondent_id int FOREIGN KEY REFERENCES Respondent(respondent_id),
	updated timestamp
)