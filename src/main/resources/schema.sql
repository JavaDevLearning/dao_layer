create schema netology;
create table netology.customers
(
    id           int primary key,
    name         varchar(255),
    surname      varchar(255),
    age          int,
    phone_number int
);
insert into netology.CUSTOMERS
values (1, 'Alexey', 'Dmitriev', 28, 923923212);
insert into netology.CUSTOMERS
values (2, 'Maksim', 'Petrov', 34, 8585968);
insert into netology.CUSTOMERS
values (3, 'Alexey', 'Ivanov', 50, 890696956);
insert into netology.CUSTOMERS
values (4, 'Andre', 'Vasilev', 38, 994958896);
insert into netology.CUSTOMERS
values (5, 'Dominik', 'Smith', 45, 958686795);

create table netology.orders
(
    id           int primary key,
    date         varchar(255),
    customers_id int,
    product_name varchar(255),
    amount       int,
    foreign key (customers_id) references netology.customers (id)
);
insert into netology.ORDERS
values (1, '25.06.2023', 2, 'iPhone11', 1);
insert into netology.ORDERS
values (2, '22.06.2023', 1, 'iPhone12', 3);
insert into netology.ORDERS
values (3, '20.06.2023', 3, 'MacProM1', 3);
insert into netology.ORDERS
values (4, '22.06.2023', 4, 'MacAir', 2);