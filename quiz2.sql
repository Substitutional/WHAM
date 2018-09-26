-- Query


SELECT products.productLine, 
FORMAT(SUM(products.quantityInStock*products.buyPrice),2) AS productLineQuantitySum
FROM classicmodels.products
GROUP BY products.productline;
-- result--
# productLine, productLineQuantitySum
'Classic Cars', '14,059,337.71'
'Motorcycles', '3,565,714.18'
'Planes', '3,099,282.76'
'Ships', '1,239,140.43'
'Trains', '727,251.77'
'Trucks and Buses', '2,139,329.56'
'Vintage Cars', '5,704,259.82'
