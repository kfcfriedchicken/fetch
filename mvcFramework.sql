drop database if exists patternMVCAuth;
drop user if exists 'mvcuser'@'localhost';

create database patternMVCAuth;
use patternMVCAuth;

create table users(
   userID int AUTO_INCREMENT,
   username varchar(30) not null, index(username),
   lastname varchar(50),
   firstname varchar(30),
   passwd varchar(30),
   email varchar(255),
   urole varchar(30),
   lastModified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   primary key(userID)
)engine=innodb;

create user 'mvcuser'@'localhost' identified by 'mvcpass';
grant all privileges on patternMVCAuth.* to 'mvcuser'@'localhost';

insert into users(username,lastname,firstname,passwd,email,urole) values 
   ('admin','Admin','Admin','admin123','admin@mail.com','admin'),
    ('jsmith','Smith','Joe','buddy','jsmith@gmail.com','admin'),
   ('bwilliams','Williams','Brian','pass123','bwilliams@gmail.com','user'),
   ('mjones','Jones','Mike','pass1234','mjones@gmail.com','user'),
   ('mjohnson','Johnson','Monica','password','mjohnson@gmail.com','user'),
   ('user1', 'Doe', 'John', 'password1', 'user1@example.com', 'user'),
   ('user2', 'Smith', 'Alice', 'password2', 'user2@example.com', 'user'),
   ('user3', 'Johnson', 'Michael', 'password3', 'user3@example.com', 'user'),
   ('user4', 'Williams', 'Emma', 'password4', 'user4@example.com', 'user'),
   ('user5', 'Brown', 'Olivia', 'password5', 'user5@example.com', 'user'),
   ('user6', 'Jones', 'William', 'password6', 'user6@example.com', 'user'),
   ('user7', 'Garcia', 'Sophia', 'password7', 'user7@example.com', 'user'),
   ('user8', 'Martinez', 'James', 'password8', 'user8@example.com', 'user'),
   ('user9', 'Hernandez', 'Charlotte', 'password9', 'user9@example.com', 'user'),
   ('user10', 'Young', 'Daniel', 'password10', 'user10@example.com', 'user');