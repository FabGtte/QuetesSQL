USE QCardinalites

CREATE TABLE Category
(
	category_Id INT PRIMARY KEY IDENTITY(1,1),
	category_Name VARCHAR(50) NOT NULL,
);
GO
CREATE TABLE Products
(
	product_Id INT PRIMARY KEY IDENTITY (1,1),
	product_name VARCHAR(50) NOT NULL,
	product_price FLOAT NOT NULL,
	FK_category_Id INT FOREIGN KEY REFERENCES Category(category_Id)
);

GO
CREATE TABLE Stock
(
	Stock_Id INT PRIMARY KEY IDENTITY (1,1),
	Stock_quantity INT, 
	FK_product_Id INT FOREIGN KEY REFERENCES Products(product_Id)
);
GO

CREATE TABLE Sales
(
	sales_Id INT PRIMARY KEY IDENTITY(1,1),
	sales_Location VARCHAR(50),
	sales_Date DATETIME,
	FK_product_Id INT FOREIGN KEY REFERENCES Products(product_Id)
);
GO