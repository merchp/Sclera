DROP DATABASE IF EXISTS ScleraEngine;
CREATE DATABASE ScleraEngine;


USE ScleraEngine;


-- USER

DROP TABLE IF EXISTS Respondent;
CREATE TABLE Respondent  (
	respondent_id int primary key,
	rname varchar (75),
	npassword varchar (100),
	email varchar(254),
	created timestamp
)



-- SURVEY

DROP TABLE IF EXISTS Survey;
CREATE TABLE Survey (
	survey_id int primary key,
	survey_name varchar(50),
	survey_description varchar (254),
	updated timestamp
)

DROP TABLE IF EXISTS Question;
CREATE TABLE Question (
	question_id int Primary Key,
	question varchar (254),
	updated timestamp
)

DROP TABLE IF EXISTS Question_Order;
CREATE TABLE Question_Order (
	question_id int FOREIGN KEY REFERENCES question(question_id),
	survey_id int FOREIGN KEY REFERENCES survey(survey_id),
	question_order int
)

DROP TABLE IF EXISTS Survey_Response;
CREATE TABLE Survey_Response (
	survey_response_id int primary key,
	survey_id int FOREIGN KEY REFERENCES survey(survey_id),
	respondent_id int FOREIGN KEY REFERENCES Respondent(respondent_id),
	updated timestamp
)

DROP TABLE IF EXISTS Response;
CREATE TABLE Response (
	survey_response_id int FOREIGN KEY REFERENCES survey_response(survey_response_id),
	question_id int FOREIGN KEY REFERENCES question(question_id),
	respondent_id int FOREIGN KEY REFERENCES respondent(respondent_id),
	answer varchar (254)
)


-- Cameras 

DROP TABLE IF EXISTS  Manufacturers;
CREATE TABLE Manufacturers (
	ID int identity,
	brand_name varchar(50) PRIMARY KEY,
	country varchar(80)
)

DROP TABLE IF EXISTS  Camera_Bodies;
CREATE TABLE Camera_Bodies (
	ID int,
	brand_name varchar(50) FOREIGN KEY REFERENCES Manufacturers(brand_name),
	camera_model nvarchar(80) PRIMARY KEY,
	megapixels int,
	sensor nvarchar(25), 
	MSRP money
)

DROP TABLE IF EXISTS  Camera_Lenses;
CREATE TABLE Camera_Lenses (
	ID int,
	brand_name varchar(50) FOREIGN KEY REFERENCES Manufacturers(brand_name),
	lens_model nvarchar(80) PRIMARY KEY,
	focal_length nvarchar(80),
	aperture float,
	MSRP money
)


-- Accesories

DROP TABLE IF EXISTS Drones;
CREATE TABLE Drones (
	ID int,
	brand_name varchar(50)FOREIGN KEY REFERENCES Manufacturers(brand_name),
	drone_model nvarchar(80) PRIMARY KEY,
	focal_Length nvarchar(80),
	aperture float,
	flight_time int,
	Top_MPH int,
	MSRP money
)

DROP TABLE IF EXISTS Bags;
CREATE TABLE Bags (
	ID int,
	brand_name varchar(50) FOREIGN KEY REFERENCES Manufacturers(brand_name),
	bag_model nvarchar(80) PRIMARY KEY,
	liter_size float,
	MSRP money
)

DROP TABLE IF EXISTS Lights;
CREATE TABLE Lights (
	ID int,
	brand_name varchar(50)FOREIGN KEY REFERENCES Manufacturers(brand_name),
	light_model nvarchar(80) PRIMARY KEY,
	size nvarchar(60),
	MSRP money
)

DROP TABLE IF EXISTS Track;
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


DROP TABLE IF EXISTS Niche;
CREATE TABLE Niche (
	ID int identity,
	Niche varchar(50) PRIMARY KEY,
	track_name varchar(80) FOREIGN KEY REFERENCES track(track_name),	
)

