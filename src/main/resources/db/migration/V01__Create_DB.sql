create table if not exists categories
(
    id       serial primary key,
    name      varchar(50)  not null,
    imageName varchar(100) not null
);

create table if not exists users
(
    id       serial primary key,
    name     varchar(45)    not null,
    surname  varchar(45)    not null,
    email    varchar(200)   not null,
    password varchar(50)    not null
);
create table if not exists products
(
    id          serial primary key,
    name        varchar(200) not null,
    description varchar(255) null,
    price       int          not null,
    image_path  varchar(255) null,
    category_id int          not null
);
create table if not exists orders
(
    id      serial primary key,
    date    timestamp not null,
    price   int       not null,
    user_id int       not null
);
create table if not exists "store".orders_products
(
    order_id   int not null,
    product_id int not null,
    primary key (order_id, product_id)
    );