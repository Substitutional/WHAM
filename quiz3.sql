--query

SELECT SUM(orderdetails.priceEach*orderdetails.quantityOrdered) AS totalPriceCancelledSum
FROM orderdetails JOIN orders 
WHERE orders.status = "Cancelled"

-- result--
#orderdetails.priceEach,orderdetails.quantityOrdered,totalPriceCancelledSum
'57625143.66'