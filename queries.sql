##PRDODUCT & SUPPLIER REPORT##
select
	p.product_name,
	p.category,
	p.unit_price,
	s.supplier_name
from products p
join suppliers s
	on p.supplier_id = s.supplier_id;

##ORDER_DETAILS REPORT##
SELECT
	o.order_id,
	c.customer_name,
	p.product_name,
	od.quantity,
	p.unit_price,
	(od.quantity * p.unit_price) as total_price
from order_details od
join orders o
	on od.order_id = o.order_id
join customers c
	on o.customer_id = c.customer_id
join products p
	on od.product_id = p.product_id;

##REVENUE REPORT##
select
	p.product_name,
	SUM(od.quantity) as quantity_sold,
	SUM(od.quantity * p.unit_price) as revenue
from products p
join order_details od
	on p.product_id = od.product_id
group by p.product_name
order by revenue DESC;

##TOP CUSTOMERS REPORT##
select
	c.customer_name,
	SUM(od.quantity * p.unit_price) as amount_spent
from customers c
join orders o
	on c.customer_id = o.customer_id
join order_details od
	on o.order_id = od.order_id
join products p
	on od.product_id = p.product_id
group by c.customer_name
order by amount_spent DESC;
