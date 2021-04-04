CREATE TABLE Camera_Bodies (
	ID int,
	brand_name varchar(50) FOREIGN KEY REFERENCES Manufacturers(brand_name),
	camera_model nvarchar(80) PRIMARY KEY,
	megapixels int,
	sensor nvarchar(25), 
	MSRP money
)