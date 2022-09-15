select * from purchasing.purchaseorderheader;

WITH purchase AS
(
SELECT distinct top 3 VendorID, PurchaseOrderID, OrderDate,totaldue, Freight, taxamt, 
mostexpensiveorder=Row_number() OVER ( ORDER BY totaldue Desc),
top3=row_number() over( order by totaldue desc) 
FROM Purchasing.PurchaseOrderHeader
)
SELECT * FROM purchase WHERE mostexpensiveorder<=3;