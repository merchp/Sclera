CREATE TABLE Niche (
	ID int identity,
	Niche varchar(50) PRIMARY KEY,
	track_name varchar(80) FOREIGN KEY REFERENCES track(track_name),	
)