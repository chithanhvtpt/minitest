create database `Tour`;

create TABLE `tours`(
    id int primary key auto_increment,
    code int,
    category int,
    price varchar(50),
    startDate date,
    finishDate date
);

create table `destinations`(
    id int primary key auto_increment,
    name varchar(50),
    description varchar(100),
    price varchar(50),
    city_id int
);

create table `tourists`(
    id int primary key auto_increment,
    name varchar(50),
    number_idCard int,
    birth_year int,
    city_id int
);

create table `cities`(
    id int primary key auto_increment,
    name varchar(50)
);

create table `categories`(
    id int primary key auto_increment,
    code int,
    name varchar(50)
);

create table `bills`(
    id int primary key auto_increment,
    tour_id int,
    tourist_id int,
    status varchar(50)
);

insert into `tours`(code, category, price, startDate, finishDate) values
('101', 'du lich tham quan', '1000000', '2022/01/12', '2020/01/15'),
('102', 'du lich van hoa', '2000000', '2020/02/14', '2020/02/15'),
('103', 'du lich quoc te', '3000000', '2020/03/16', '2020/01/13'),
('104', 'du lich the thao', '4000000', '2020/04/15', '2020/01/13'),
('105', 'du lich tham quan', '5000000', '2020/08/22', '2020/01/13'),
('106', 'du lich van hoa', '6000000', '2020/06/12', '2020/01/13'),
('107', 'du lich gia dinh', '7000000', '2020/04/30', '2020/01/13'),
('108', 'du lich ca nhan', '8000000', '2020/02/12', '2020/01/13'),
('109', 'du lich noi dia', '9000000', '2020/03/20', '2020/01/13'),
('110', 'du lich tham quan', '4000000', '2020/08/12', '2020/01/13'),
('111', 'du lich van hoa', '5000000', '2020/07/29', '2020/01/13'),
('112', 'du lich quoc te', '6000000', '2020/09/20', '2020/01/13'),
('113', 'du lich gia dinh', '10000000', '2020/04/26', '2020/01/13'),
('114', 'du lich nui', '4000000', '2020/11/14', '2020/01/13'),
('115', 'du lich bien', '3000000', '2020/12/15', '2020/01/13');

insert into `destinations`(name, description, price, city_id) values
('Nha Trang', 'Bien dep', '1000000', '1'),
('Da Nang', 'Bien dep', '2000000', '2'),
('Phu Tho', 'Bien dep', '3000000', '3'),
('Hue', 'Bien dep', '4000000', '4'),
('Sai Gon', 'Bien dep', '5000000', '5');
alter table `destinations` add foreign key (city_id) references cities(id);

insert into `tourists`(name, number_idCard, birth_year, city_id) values
('thanh', '132466656', '2003', '1'),
('minh', '132466656', '2003', '2'),
('duc', '132466656', '2003', '3'),
('tuan anh', '132466656', '2003', '4'),
('hoang', '132466656', '2003', '5');

alter table `tourists` add foreign key (city_id) references cities(id);

insert into `cities`(name) values
('Nha Trang'),
('Da Nang'),
('Phu Tho'),
('Hue'),
('Sai Gon');

insert into `categories` (code, name) values
('101', 'Nha Trang'),
('102', 'Da Nang');

insert into `bills`(tour_id, tourist_id, status) values
('1', '1', 'Da Dat'),
('2', '2', 'Da Dat'),
('3', '3', 'Da Dat'),
('4', '4', 'Da Dat'),
('5', '5', 'Da Dat'),
('6', '1', 'Da Dat'),
('7', '3', 'Da Dat'),
('8', '2', 'Da Dat'),
('9', '4', 'Da Dat'),
('10', '5', 'Da Dat');

select count(startDate)
from `tours`
where `startDate` between '2020/03/01' and '2020/03/31';

select count(finishDate)
from `tours`
where `finishDate` between '2020/04/01' and '2020/04/31'






