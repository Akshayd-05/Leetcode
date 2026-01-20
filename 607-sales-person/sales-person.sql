select name
from SalesPerson
where sales_id not in(select o.sales_id from orders o join Company c on o.com_id = c.com_id where c.name = 'RED');