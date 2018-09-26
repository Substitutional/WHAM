-- Query

SELECT customers.country, SUM(orderSum.totalPriceSum) AS countryOrderSum FROM customers 
JOIN 
(SELECT orders.customerNumber AS customerNumber, 
SUM(orderdetails.priceEach*orderdetails.quantityOrdered) AS totalPriceSum
FROM orderdetails JOIN orders ON orderdetails.orderNumber = orders.orderNumber
WHERE Year(orders.orderDate) = 2005 GROUP BY orders.customerNumber
) AS orderSum ON customers.customerNumber = orderSum.customerNumber 
GROUP BY customers.country ORDER BY countryOrderSum DESC LIMIT 5

-- result--
# country, countryOrderSum
'USA', '574579.81'
'Spain', '290018.52'
'France', '217347.62'
'New Zealand', '165343.66'
'Australia', '131561.38'
