set statistics time on
select ProductNumber, Name, Color
from SalesLt.Product
where ProductID in
(select ProductID from SalesLt.ProductDescription)