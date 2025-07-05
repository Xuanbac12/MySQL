CREATE DATABASE baitap1;

USE baitap1;

CREATE TABLE students(
   id int auto_increment,
   full_name VARCHAR(255) NOT NULL,
   gender VARCHAR(255),
   age int,
   city VARCHAR(255),
   weight FLOAT(53),
   primary key(id)
);


INSERT INTO students(full_name, gender, age, city, weight )
VALUES ('Nguyễn Thành Nam', 'Nam', 19, 'Cần Thơ', 56.5674);

INSERT INTO students(full_name, gender, age, city, weight )
VALUES ('Phạm Thu Hương', 'Nu', 20, 'Vĩnh Long', 72.456);

INSERT INTO students(full_name, gender, age, city, weight )
VALUES ('Bui Thanh Bao', 'Nam', 19, 'Sóc Trăng ', 49.3);

INSERT INTO students(full_name, gender, age, city, weight )
VALUES ('Lê Mỹ Nhân', 'Nu', 22, 'Cần Thơ', 62.963);

INSERT INTO students(full_name, gender, age, city, weight )
VALUES ('Tân Thúc Bảo', 'Nam', 35, 'An Giang', 56.5678);

INSERT INTO students(full_name, gender, age, city, weight )
VALUES ('Trịnh Giao Kim', 'Nam', 44, 'Bạc Liêu', 67.34);