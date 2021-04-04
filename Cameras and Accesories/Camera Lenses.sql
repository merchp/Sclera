CREATE TABLE Camera_Lenses (
	ID int,
	brand_name varchar(50) FOREIGN KEY REFERENCES Manufacturers(brand_name),
	lens_model nvarchar(80) PRIMARY KEY,
	focal_length nvarchar(80),
	aperture float,
	MSRP money
)