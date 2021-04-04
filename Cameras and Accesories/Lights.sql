CREATE TABLE Lights (
	ID int,
	brand_name varchar(50)FOREIGN KEY REFERENCES Manufacturers(brand_name),
	light_model nvarchar(80) PRIMARY KEY,
	size nvarchar(60),
	MSRP money
)