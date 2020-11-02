USE QCardinalites;

SELECT Products.product_name AS Nom_Produits, dbo.Stock.Stock_quantity 
FROM Products 
JOIN dbo.Stock ON dbo.Products.Products_ID = dbo.Stock.FK_Products_ID
WHERE  FK_Category_ID = 1;