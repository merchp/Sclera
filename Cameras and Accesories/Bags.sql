CREATE TABLE Bags (
	ID int,
	brand_name varchar(50) FOREIGN KEY REFERENCES Manufacturers(brand_name),
	bag_model nvarchar(80) PRIMARY KEY,
	liter_size float,
	MSRP money
)