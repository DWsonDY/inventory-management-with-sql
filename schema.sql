create table suppliers (
supplier_id int auto_increment primary key,
supplier_name varchar(100) Not Null,
contact_email varchar(100),
phone varchar(20)
);

create table products (
product_id int auto_increment primary key,
product_name varchar(100) Not Null,
category Varchar(50),
unit_price decimal(10,2),
supplier_id int,
foreign key (supplier_id)
references suppliers(supplier_id)
);

create table customers (
customer_id INT AUTO_INCREMENT primary key,
customer_name varchar(100) Not Null,
city varchar(50),
email varchar(100)
);

create table orders (
order_id INT AUTO_INCREMENT primary key,
customer_id INT,
order_date DATE,
foreign key (customer_id)
references customers(customer_id)
);

create table order_details (
detail_id int auto_increment primary key,
order_id int,
product_id int,
quantity int,
foreign key (order_id)
references orders(order_id),
foreign key (product_id)
references products(product_id)
);

show tables;
