USE QCardinalites;

SELECT category_Name, product_name, Stock_quantity
FROM Category, Products, Stock
WHERE category_Id=1 AND FK_category_Id=1 AND FK_product_Id=product_Id;
