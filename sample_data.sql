##SUPPLIERS##
insert into suppliers
(supplier_name, contact_email, phone)
values
('Tech Support Lda.', 'techsupportlda@email.com', 25881323232),
('Mehul Enterprises', 'mehulent@email.com', 91535354354),
('Moz Armazens', 'armazenmoz@emailco.mz', 258864658465),
('Bit Technologies', 'support@bittech.com', 258876512368),
('ConectaTech', 'suporte@conectatech.com', 258853124674),
('IntegraOps',  'ops@integraops.com', 258842657892),
('MOZ_Procuremet & Servicos', 'info@mozprocurementeservicos.co.mz', +258863247023),
('Impulso Lda', 'contacto@impulso.co.mz', 258823648030);

SET @num := 0;
UPDATE suppliers SET supplier_id = @num := (@num + 1) ORDER BY supplier_id;
ALTER TABLE suppliers AUTO_INCREMENT = 1;

delete from suppliers
where supplier_id in (2, 9, 5, 8, 11, 12, 13, 14, 15, 16, 17, 18);

select *
from suppliers;

##PRODUCTS##
insert into products
(product_name, category, unit_price, supplier_id)
values
('Laptop', 'Electronics', 45000.00, 1),
('Printer', 'Electronics', 12000.00, 1),
('Router', 'Networking', 3500.00, 2),
('RJ45 cable', 'Networking', 250.00, 2),
('Keyboard', 'Accessories', 800.00, 5),
('Telephone', 'Office', 3500.00, 3),
('Whiteboard', 'Office', 750.00, 3),
('VoIP Systems', 'Office', 2500.00, 3),
('Mouse', 'Accessories', 500.00, 4),
('External Drive', 'Electronics', 2000.00, 5),
('Desktop', 'Electronics', 60000.00, 1),
('Fiber-optic cable', 'Networking', 550.00, 2),
('Speakers', 'Accessories', 1000.00, 4),
('Headphones', 'Accessories', 700.00, 4),
('Firewall', 'Networking', 3500, 6),
('Computer Desk', 'Office', 10000.00, 3),
('Scanner', 'Electronics', 12000.00, 1),
('Modem', 'Networking', 1000.00, 2);

select *
from products; 

##CUSTOMERS##
insert into customers
(customer_name, city, email)
values
('Manuel Luis', 'Maputo', 'luismanuel@hotmail.com'),
('Sara Matimbe', 'Maputo', 'saram@gmail.com'),
('Carlos Tembe', 'Beira', 'tembecarlos@gmail.com'),
('Max Services', 'Matola', 'maxservice@gmail.com'),
('Tomas Atanasio', 'Nacala', 'tomasata@yahoo.com'),
('Rolando Vaz', 'Xai-Xai', 'vazroland@gmail.com'),
('Alberto Gil', 'Nampula', 'albertog@hotmail.com'),
('Joao Figueiredo', 'Maputo', 'j.figueiredo@gmail.com'),
('Ivaldo Chilundo', 'Maputo', 'chilundoivaldo@gmail.com'),
('Domingos Neves', 'Beira', 'nevesdom@yahoo.com');

select *
from customers;

##ORDERS##
insert into orders
(customer_id, order_date)
values
(2, '2026-03-20'),
(2, '2026-03-22'),
(10, '2026-03-27'),
(9, '2026-04-04'),
(1, '2026-04-17'),
(5, '2026-04-17'),
(3, '2026-05-05'),
(8, '2026-05-12'),
(10, '2026-05-20'),
(4, '2026-05-29'),
(9, '2026-05-31'),
(6, '2026-06-02'),
(5, '2026-06-08'),
(7, '2026-06-16');

SET @num := 0;
UPDATE orders SET order_id = @num := (@num + 1) ORDER BY order_id;
ALTER TABLE orders AUTO_INCREMENT = 1;

select *
from orders;

##ORDER_DETAILS##
insert into order_details
(order_id, product_id, quantity)
values
(1, 1, 2),
(3, 4, 5),
(2, 8, 2),
(7, 6, 6),
(10, 2, 5),
(14, 13, 10),
(5, 7, 3),
(8, 9, 10),
(13, 10, 5),
(6, 3, 3),
(11, 5, 7),
(4, 18, 3),
(9, 16, 5),
(12, 17, 5);

select *
from order_details;
