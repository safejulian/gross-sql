select a.Name,b.Name,c.Name from production.product as a 
join production.ProductSubcategory as b
on a.productsubcategoryid = b.productsubcategoryid
join production.productcategory as c
on b.productcategoryid = c.productcategoryid
where a.class = 'L'
 
select a.Name,b.Name,c.Name from production.productsubcategory as a 
join production.Product as b
on a.productsubcategoryid = b.productsubcategoryid
join production.productcategory as c
on a.productcategoryid = c.productcategoryid
where a.productcategoryid = 4
 
select a.Name,b.Name,c.Name from production.productcategory as a 
join production.productsubcategory as b
on b.productcategoryid = a.productcategoryid
join production.product as c
on b.productsubcategoryid = c.productsubcategoryid
where a.name like 'C%'
