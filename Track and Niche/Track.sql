CREATE TABLE Track (
	ID int identity,
	respondent_id int FOREIGN KEY REFERENCES respondent(respondent_id),
	survey_response_id int FOREIGN KEY REFERENCES survey_response(survey_response_id),
	track_name varchar (80) primary key, 
	camera_model nvarchar (80) FOREIGN KEY REFERENCES Camera_Bodies(camera_model) ,
	lens_model nvarchar (80) FOREIGN KEY REFERENCES Camera_Lenses(lens_model),
	drone_model nvarchar (80) FOREIGN KEY REFERENCES Drones(drone_model),
	bag_model nvarchar (80) FOREIGN KEY REFERENCES Bags(bag_model),
	light_model nvarchar (80) FOREIGN KEY REFERENCES Lights(light_model)
)