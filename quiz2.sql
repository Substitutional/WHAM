-- Query


SELECT sumProduct.productLine, 
SUM(sumProduct.quantityInStock) AS productLineQuantitySum
FROM (SELECT productName, quantityInStock, productLine FROM classicmodels.products) AS sumProduct
GROUP BY sumProduct.productline;
-- result--
#productLine, productLineQuantitySum
'Classic Cars','219183'
'Motorcycles','69401'
'Planes','62287'
'Ships','26833'
'Trains','16696'
'Trucks and Buses','35851'
'Vintage Cars','124880'
