use shop;
select database();

-- 4.a)--  
select * from customer where city='Mumbai';
-- 4.b) --
select * from product_data where genre='sad';
-- 4.c) --
select count(*) as number_of_customer, city from customer group by city;
-- 4.d) --
select avg(unit_price) as average_of_unit_price from product_data;
-- 4.e) --
select * from orders order by order_date desc limit 5;

-- 4.f) --
select orders.*, product_data.description from orders
INNER JOIN product_data ON Orders.product_id=product_data.product_id
where product_data.description like 'The%' or '%The%' or '%The';

-- 4.g) --
select orders.*, product_data.product_type from orders 
INNER JOIN product_data ON Orders.product_id=product_data.product_id
where product_data.product_type='book'and orders.payment_type='credit card';

-- 4.h)--
select COUNT(emp_id) as number_of_employee from employee
inner join products on employee.productType_id=products.productType_id
where products.product_type='music';

-- 4.i)--
select count(*) from employee where emp_firstname='john';

-- 4.j)--
select count(*) as number_of_orders from orders;

