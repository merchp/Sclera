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