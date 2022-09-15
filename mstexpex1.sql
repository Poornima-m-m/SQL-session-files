select * from Purchasing.PurchaseOrderHeader;


WITH most_exp AS
(SELECT PurchaseOrderID, VendorID, OrderDate, TaxAmt, Freight,
MOST_EXPENSIVE_RANK = ROW_NUMBER () OVER (PARTITION BY VendorID ORDER BY TotalDue desc)
FROM Purchasing.PurchaseOrderHeader)
SELECT PurchaseOrderID, VendorID, OrderDate , TaxAmt, Freight, MOST_EXPENSIVE_RANK
FROM most_exp
WHERE MOST_EXPENSIVE_RANK <= 3
