--query

SELECT FORMAT(SUM(orderdetails.priceEach*orderdetails.quantityOrdered),2) AS totalPriceCancelledSum
FROM orderdetails JOIN orders ON orderdetails.orderNumber = orders.orderNumber
WHERE orders.status = "Cancelled"

-- result--
#totalPriceCancelledSum
'238,854.18'
