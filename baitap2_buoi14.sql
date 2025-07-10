CREATE DATABASE quanlysach;

USE quanlysach;

CREATE TABLE tacgia(
   matacgia int auto_increment,
   tentacgia varchar(100) not null,
   quoctich varchar(50),
   
   primary key(matacgia)
   
);

CREATE TABLE sach(
  masach int auto_increment,
  tieude varchar(200) not null,
  namxuatban int,
  matacgia int,
  
  primary key(masach)
);

ALTER TABLE sach ADD CONSTRAINT FK_matacgia_sach FOREIGN KEY(matacgia)
REFERENCES tacgia(matacgia);

INSERT INTO tacgia(tentacgia, quoctich) VALUES 
('Nguyễn Nhật Ánh', 'Việt Nam'),
('Haruki Murakami', 'Nhật Bản'),
('J.K. Rowling', 'Anh');

INSERT INTO sach (tieude, namxuatban, matacgia) VALUES
('Mắt Biếc', 1990, 1),
('Tôi thấy hoa vàng trên cỏ xanh', 2005, 1),
('Rừng Na Uy', 1987, 2),
('Harry Potter và Hòn đá Phù thủy', 1997, 3);


-- câu1
SELECT * 
FROM  sach;

-- câu 2
SELECT *
FROM tacgia
WHERE quoctich = 'Việt Nam';


-- câu 3
SELECT s.tieude, t.tentacgia
FROM sach s
JOIN tacgia t ON s.matacgia = t.matacgia;

-- câu 4
SELECT *
FROM sach
WHERE namxuatban > 1990;

-- câu 5
SELECT t.tentacgia, count(*) soluongsach
FROM sach s
JOIN tacgia t ON t.matacgia = s.matacgia
GROUP BY t.tentacgia;

-- câu 6
SELECT t.tentacgia, count(*) soluongsach
FROM sach s
JOIN tacgia t ON t.matacgia = s.matacgia
GROUP BY t.tentacgia
ORDER BY soluongsach DESC
LIMIT 1;
