-- Query


SELECT customers.country, SUM(orderSum.totalPriceSum) AS countryOrderSum FROM customers JOIN
(SELECT orders.customerNumber AS customerNumber, SUM(orderdetails.priceEach*orderdetails.quantityOrdered) AS totalPriceSum
FROM orders JOIN orderdetails
WHERE Year(orders.orderDate) = 2005 GROUP BY orders.customerNumber
) AS orderSum GROUP BY customers.country ORDER BY countryOrderSum DESC LIMIT 5

-- result--
#country, countryOrderSum
'USA','22128055165.44'
'Germany','7990686587.52'
'France','7376018388.48'
'Spain','4302677393.28'
'UK','3073340995.20'