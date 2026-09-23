create view sales_summary as
select
	p.product_name,
	SUM(od.quantity) as total_quantity,
	SUM(od.quantity * p.unit_price) as total_sales
from products p
join order_details od
	on p.product_id = od.product_id
group by p.product_name;

select*
from sales_summary;
