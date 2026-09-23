# inventory-management-with-sql
This project demonstrates SQL database design, data management, and business reporting skills using MySQL
The system manages:
 
- Suppliers
- Products
- Customers
- Orders
- Order Details
 
The project showcases relational database concepts including primary keys, foreign keys, joins, aggregate functions, and views.

## Database Structure
 
Tables:
 
1. suppliers
2. products
3. customers
4. orders
5. order_details
 
 
## Technologies Used
 
- MySQL Workbench 8.0 CE
 
 
## Skills Demonstrated
 
- Database Design
- Data Modeling
- Primary and Foreign Keys
- INNER JOIN
- Aggregate Functions
- GROUP BY
- ORDER BY
- Business Reporting
- SQL Views
 
 
## Example Reports
 
### Revenue by Product
 
sql
SELECT
p.product_name,
SUM(od.quantity) AS quantity_sold,
SUM(od.quantity * p.unit_price) AS revenue
FROM products p
JOIN order_details od
ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

## Entity Relationship Diagram
 
docs/inventory_management_ERD.png

## Author

Ivaldo Gilson Jorge Chilundo

