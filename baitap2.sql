CREATE DATABASE cybersoft_shop;
 
USE cybersoft_shop;

CREATE TABLE LoaiSanPham (
    MaLoaiSP VARCHAR(10) PRIMARY KEY,
    TenLoaiSP VARCHAR(100)
);

CREATE TABLE SanPham (
    MaSP VARCHAR(10) PRIMARY KEY,
    TenSP VARCHAR(100),
    SoLuong INT,
    Gia DECIMAL(10,2),
    GiaBan DECIMAL(10,2),
    MoTa TEXT,
    MaLoaiSP VARCHAR(10),
    FOREIGN KEY (MaLoaiSP) REFERENCES LoaiSanPham(MaLoaiSP)
);

CREATE TABLE KhachHang (
    MaKH VARCHAR(10) PRIMARY KEY,
    Ho VARCHAR(50),
    Ten VARCHAR(50),
    SoDT VARCHAR(15),
    Email VARCHAR(100),
    DiaChi TEXT
);

CREATE TABLE HoaDon (
    MaHoaDon VARCHAR(10) PRIMARY KEY,
    NgayMua DATE,
    MaKH VARCHAR(10),
    FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
);

CREATE TABLE ChiTietHoaDon (
    MaHoaDon VARCHAR(10),
    MaSP VARCHAR(10),
    SoLuong INT,
    GiaBan DECIMAL(10,2),
    PRIMARY KEY (MaHoaDon, MaSP),
    FOREIGN KEY (MaHoaDon) REFERENCES HoaDon(MaHoaDon),
    FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
);

SELECT * FROM SanPham;

INSERT INTO LoaiSanPham (MaLoaiSP, TenLoaiSP) VALUES
('LSP01', 'Điện thoại'),
('LSP02', 'Laptop'),
('LSP03', 'Phụ kiện');

INSERT INTO SanPham (MaSP, TenSP, SoLuong, Gia, GiaBan, MoTa, MaLoaiSP) VALUES
('SP01', 'iPhone 15', 50, 20000000, 22000000, 'Điện thoại Apple thế hệ mới', 'LSP01'),
('SP02', 'MacBook Pro M2', 30, 32000000, 35000000, 'Laptop hiệu suất cao của Apple', 'LSP02'),
('SP03', 'Tai nghe Bluetooth', 100, 300000, 350000, 'Tai nghe không dây chất lượng', 'LSP03');

INSERT INTO KhachHang (MaKH, Ho, Ten, SoDT, Email, DiaChi) VALUES
('KH01', 'Nguyen', 'An', '0912345678', 'an.nguyen@example.com', '123 Lê Lợi, Q.1'),
('KH02', 'Tran', 'Binh', '0987654321', 'binh.tran@example.com', '456 Hai Bà Trưng, Q.3'),
('KH03', 'Le', 'Chi', '0909123456', 'chi.le@example.com', '789 Nguyễn Thị Minh Khai, Q.10');

INSERT INTO HoaDon (MaHoaDon, NgayMua, MaKH) VALUES
('HD01', '2025-07-01', 'KH01'),
('HD02', '2025-07-02', 'KH02'),
('HD03', '2025-07-03', 'KH03');

INSERT INTO ChiTietHoaDon (MaHoaDon, MaSP, SoLuong, GiaBan) VALUES
('HD01', 'SP01', 1, 22000000),
('HD01', 'SP03', 2, 350000),
('HD02', 'SP02', 1, 35000000),
('HD03', 'SP03', 3, 350000),
('HD03', 'SP01', 1, 22000000),
('HD02', 'SP03', 1, 350000);

