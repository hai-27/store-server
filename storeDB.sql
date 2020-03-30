/*
 * @Description: 建库建表语句
 * @Author: hai-27
 * @Date: 2020-02-07 16:51:58
 * @LastEditors: hai-27
 * @LastEditTime: 2020-03-27 15:36:01
 */
create database storeDB;
use storeDB;
create table users(
  user_id int primary key auto_increment,
  userName char (40) not null unique,
  password char (40) not null,
  userPhoneNumber char(11) null
);
-- ALTER TABLE users MODIFY COLUMN userName char (40) not null unique;
-- ALTER TABLE users MODIFY COLUMN password char (40)  not null;
-- insert into users
-- values(null, 'admin', '123456', '13580018623');
create table carousel(
  carousel_id int primary key auto_increment,
  imgPath char (50) not null,
  describes char (50) not null
);
-- insert into carousel
-- values(null, 'public/imgs/cms_1.jpg', '123456');
-- insert into carousel
-- values(null, 'public/imgs/cms_2.jpg', '123456');
-- insert into carousel
-- values(null, 'public/imgs/cms_3.jpg', '123456');
-- insert into carousel
-- values(null, 'public/imgs/cms_4.jpg', '123456');
create table category(
  category_id int primary key auto_increment,
  category_name char(20) not null
);
create table product(
  product_id int primary key auto_increment,
  product_name char (100) not null,
  category_id int not null,
  product_title char (30) not null,
  product_intro text not null,
  product_picture char (200),
  product_price double not null,
  product_selling_price double not null,
  product_num int not null,
  product_sales int not null,
  constraint FK_product_category foreign key (category_id) references category (category_id)
);
create table product_picture(
  id int primary key auto_increment,
  product_id int not null,
  product_picture char (200),
  intro text null,
  constraint FK_product_id foreign key (product_id) references product (product_id)
);
create table shoppingCart(
  id int primary key auto_increment,
  user_id int not null,
  product_id int not null,
  num int not null,
  constraint FK_user_id foreign key (user_id) references users (user_id),
  constraint FK_shoppingCart_id foreign key (product_id) references product (product_id)
);
create table orders(
  id int primary key auto_increment,
  order_id bigint not null,
  user_id int not null,
  product_id int not null,
  product_num int not null,
  product_price double not null,
  order_time bigint not null,
  constraint FK_order_user_id foreign key (user_id) references users (user_id),
  constraint FK_order_id foreign key (product_id) references product (product_id)
);
create table collect(
  id int primary key auto_increment,
  user_id int not null,
  product_id int not null,
  collect_time bigint not null,
  constraint FK_collect_user_id foreign key (user_id) references users (user_id),
  constraint FK_collect_id foreign key (product_id) references product (product_id)
);
