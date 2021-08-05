show databases;

create database bala;

use bala;

drop database bala;

show tables;

CREATE TABLE payment (
    id int NOT NULL,
    name varchar(50) NOT NULL,
    email varchar(50) NOT NULL UNIQUE,
    phone_number varchar(10) NOT NULL,
    address varchar(255) NOT NULL,
    post_code int(6) NOT NULL,
    country varchar(50) NOT NULL,
    card_type varchar(1) NOT NULL CHECK (card_type IN ('V','R','M')), 
    card_number varchar(13) NOT NULL,
    security_code int(3) NOT NULL,
    name_on_card varchar(50) NOT NULL
);

alter table payment add paid bit NOT NULL CHECK (paid IN (0,1));

alter table payment drop paid;

show columns from payment;

drop table payment;

select * from payment order by name desc limit 2;

insert into payment values (1, 'Bala', 'b@t.com', '9876543210', 'Guindy, Chennai', 600025, 'India', 'V', '123412341234', 123, 'Bala S');

insert into payment values (2, 'Logesh', 'l@t.com', '9876543210', 'Velacherry, Chennai', 600032, 'India', 'R', '123412341234', 445, 'Logesh S');

insert into payment values (3, 'Random', 'r@t.com', '9876543210', 'Chennai', 600032, 'India', 'M', '123412341234', 234, 'Rangom Guy', 0);

update payment set name='Bala S' where id=1;

update payment set paid=1 where id=2;

delete from payment where id=2;

commit;