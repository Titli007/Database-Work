create database shop;
use shop;
select database();
 create table Customer(
 customer_id int not null primary key,
 first_name varchar(30),
 last_name varchar(30),
 phone_no varchar(10),
 email varchar(20),
 city varchar(20),
 country varchar(20)
 );
 
 create table products(
productType_id int NOT NULL primary key,
product_type varchar(30)
);

create table Product_Data (
    product_id int not null primary key,
    product_title varchar(55),
    description varchar(100),
    unit_price int not null,
    release_date date,
    language varchar(30),
    genre varchar(30),
    Product_type varchar(40),
    productType_id int not null,
    FOREIGN KEY (productType_id)
    REFERENCES products(productType_id)
);

create table employee(
emp_id int not null primary key,
productType_id int not null,
emp_firstname varchar(20),
emp_lastname varchar(20),
foreign key (productType_id)
references products(productType_id)
);

create table orders(
order_id int not null primary key,
product_id int not null,
customer_id int not null,
payment_type varchar(50),
order_date date,
FOREIGN KEY (product_id)
    REFERENCES product_data(product_id),
    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id)
);

INSERT INTO Customer (customer_id, first_name, last_name, phone_no, email, city, country) VALUES ('1', 'Peter', 'Parker', '1293029339', 'peter@yahoo.com', 'Denmark', 'US');
INSERT INTO Customer (customer_id, first_name, last_name, phone_no, email, city, country) VALUES ('2', 'Hulk', 'Khan', '3928037820', 'khan33@gmail.com', 'Bolivia', 'America');
INSERT INTO Customer (customer_id, first_name, last_name, phone_no, email, city, country) VALUES ('3', 'Tony', 'Strark', '3457820160', 'Tony@yahoo.com', 'Newyork', 'America');
INSERT INTO Customer (customer_id, first_name, last_name, phone_no, email, city, country) VALUES ('4', 'Sahrukh', 'Khan', '6789054321', 'Sahru@gmail.com', 'Mumbai', 'India');
INSERT INTO Customer (customer_id, first_name, last_name, phone_no, email, city, country) VALUES ('5', 'Yash', 'Gu', '3982397692', 'sgfjfd@gmail.com', 'Runadip', '"Austria "');
INSERT INTO Customer (customer_id, first_name, last_name, phone_no, email, city, country) VALUES ('6', 'John', 'Gulal', '9873983998', 'efetyh@gmail.com', 'Begin', 'Australia');
INSERT INTO Customer (customer_id, first_name, last_name, phone_no, email, city, country) VALUES ('7', 'Kyly', 'Tunuh', '2342342342', 'dfge4434@gmail.com', 'Huiston', 'India');
INSERT INTO Customer (customer_id, first_name, last_name, phone_no, email, city, country) VALUES ('8', 'Mili', 'Kim', '4566766423', 'sfg55@gmail.com', 'Fugiama', 'Brazil');
INSERT INTO Customer (customer_id, first_name, last_name, phone_no, email, city, country) VALUES ('9', 'Rikki', 'Luis', '3469654528', 'aesrt46@gmail.com', '"Washington DC"', 'US');
INSERT INTO Customer (customer_id, first_name, last_name, phone_no, email, city, country) VALUES ('10', 'Pema', 'Nasrin', '1245678956', 'erw33@gmail.com', 'Fugiama', 'Brazil');


INSERT INTO products (productType_id, product_type) VALUES ('201', 'Book');
INSERT INTO products (productType_id, product_type) VALUES ('202', 'Movies');
INSERT INTO products (productType_id, product_type) VALUES ('203', 'Music');

INSERT INTO Product_data (product_id, product_title, description, unit_price, language, genre, Product_type, release_date, productType_id) VALUES ('101', 'The incompletion', 'The author of this book died while completing the book', '110', 'Japanese', 'Sad', 'Book', '2020-04-12', '201');
INSERT INTO Product_data (product_id, product_title, description, unit_price, language, genre, Product_type, release_date, productType_id) VALUES ('102', 'X Pro', 'The best creation of the greatest musician', '200', 'Marathi', 'Romantic', 'Music', '2021-02-02', '203');
INSERT INTO Product_data (product_id, product_title, description, unit_price, language, genre, Product_type, release_date, productType_id) VALUES ('103', 'Good and Bad', 'Best book of this year', '400', 'English', 'Motivational', 'Book', '2021-04-21', '201');
INSERT INTO Product_data (product_id, product_title, description, unit_price, language, genre, Product_type, release_date, productType_id) VALUES ('104', 'La La Land', 'Award winning movie', '200', 'French', 'Romantic', 'Movie', '2020-03-30', '202');
INSERT INTO Product_data (product_id, product_title, description, unit_price, language, genre, Product_type, release_date, productType_id) VALUES ('105', 'lady Gaga', 'The famous actress\'s autobiography', '300', 'Bengali', 'Happy', 'Book', '2021-06-20', '201');
INSERT INTO Product_data (product_id, product_title, description, unit_price, language, genre, Product_type, release_date, productType_id) VALUES ('106', 'Knife', 'This album is for adult', '100', 'Spanish', 'Sad', 'Music', '2021-04-05', '203');
INSERT INTO Product_data (product_id, product_title, description, unit_price, language, genre, Product_type, release_date, productType_id) VALUES ('107', 'Anti fog', 'The Best song album of this year', '340', '" Chinese"', 'Rap', 'Music', '2022-08-08', '203');
INSERT INTO Product_data (product_id, product_title, description, unit_price, language, genre, Product_type, release_date, productType_id) VALUES ('108', 'The Rible', 'The movie of world war', '200', 'Korean', 'sad', 'movie', '2019-04-09', '202');
INSERT INTO Product_data (product_id, product_title, description, unit_price, language, genre, Product_type, release_date, productType_id) VALUES ('109', 'Horror 101', 'best 101 horror story for kids', '300', 'English', 'Horror', 'Book', '2021-04-03', '201');


INSERT INTO employee (emp_id, productType_id, emp_firstname, emp_lastname) VALUES ('1001', '201', 'John', 'Sina');
INSERT INTO employee (emp_id, productType_id, emp_firstname, emp_lastname) VALUES ('1002', '201', 'Devid', 'G');
INSERT INTO employee (emp_id, productType_id, emp_firstname, emp_lastname) VALUES ('1003', '203', 'Michel', 'Ray');
INSERT INTO employee (emp_id, productType_id, emp_firstname, emp_lastname) VALUES ('1004', '201', 'John', 'Martin');
INSERT INTO employee (emp_id, productType_id, emp_firstname, emp_lastname) VALUES ('1005', '202', 'Soider', 'Kishor');
INSERT INTO employee (emp_id, productType_id, emp_firstname, emp_lastname) VALUES ('1006', '202', 'Pami', 'Husten');
INSERT INTO employee (emp_id, productType_id, emp_firstname, emp_lastname) VALUES ('1007', '203', 'Kerin', 'Mar');
INSERT INTO employee (emp_id, productType_id, emp_firstname, emp_lastname) VALUES ('1008', '203', 'Stefen', 'Marco');
INSERT INTO employee (emp_id, productType_id, emp_firstname, emp_lastname) VALUES ('1009', '202', 'Gargi', 'Rider');
INSERT INTO employee (emp_id, productType_id, emp_firstname, emp_lastname) VALUES ('1010', '201', 'Mrinalini', 'Hustin');
INSERT INTO employee (emp_id, productType_id, emp_firstname, emp_lastname) VALUES ('1011', '201', 'Pihu', 'Bieber');
INSERT INTO employee (emp_id, productType_id, emp_firstname, emp_lastname) VALUES ('1012', '201', 'Geek', 'Das');

INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('110', '102', '10', 'cash', '2022-03-02');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('111', '102', '2', 'credit card', '2022-12-21');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('112', '109', '3', 'cash', '2021-12-12');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('113', '101', '1', 'credit card', '2022-09-09');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('114', '104', '4', 'cash', '2022-08-19');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('115', '105', '5', 'credit card', '2022-09-19');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('116', '106', '7', 'credit card', '2022-05-29');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('117', '107', '6', 'cash', '2022-11-29');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('118', '108', '8', 'cash', '2022-12-01');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('119', '109', '9', 'cash', '2022-01-19');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('120', '101', '10', 'cash', '2022-04-30');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('121', '102', '2', 'credit card', '2022-09-09');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('122', '103', '1', 'credit card', '2022-07-06');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('123', '104', '5', 'cash', '2022-09-29');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('124', '105', '6', 'cash', '2022-08-08');
INSERT INTO orders (order_id, product_id, customer_id, payment_type, order_date) VALUES ('125', '106', '7', 'credit card', '2022-09-03');


