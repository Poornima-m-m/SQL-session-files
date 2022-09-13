create table pro1
(productid int,productname varchar(100))
go

create table prodesc
(productid int,prodesc varchar(800))
go

insert into pro1 values(680,'frme-blak,58'),(706,'red-58'),(707,'helmet')
go

insert into prodesc values (680,'example'),
(706,' hub')

create procedure getproddescription as
begin
set nocount on

select p.productid,p.productname,pd.productdesc
from product1 as p
inner join productdesc pd
on p.productid = pd.productid
end

exec getproddescription