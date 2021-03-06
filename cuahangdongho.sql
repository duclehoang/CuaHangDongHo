-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2021 at 05:39 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuahangdongho`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `MaTK` varchar(10) NOT NULL,
  `TenAdmin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chitiethd`
--

CREATE TABLE `chitiethd` (
  `MaHD` varchar(10) NOT NULL,
  `MaSP` varchar(10) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitiethd`
--

INSERT INTO `chitiethd` (`MaHD`, `MaSP`, `DonGia`, `SoLuong`, `ThanhTien`) VALUES
('HD1', 'sp11', 2000, 2, 4000),
('HD1', 'sp12', 2000, 2, 4000),
('HD2', 'msp1', 3000, 2, 6000),
('HD4', 'msp1', 2000, 4, 8000),
('HD4', 'sp11', 3000, 2, 6000),
('HD4', 'sp12', 3000, 2, 6000),
('HD5', 'msp1', 2000, 1, 2000),
('HD6', 'sp11', 3000, 1, 3000),
('HD7', 'sp4', 3000, 4, 12000),
('HD7', 'msp1', 2000, 1, 2000),
('HD8', 'sp11', 3000, 1, 3000),
('HD9', 'msp1', 2000, 10, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `chitietpn`
--

CREATE TABLE `chitietpn` (
  `MaPN` varchar(20) NOT NULL,
  `MaSP` varchar(20) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietpn`
--

INSERT INTO `chitietpn` (`MaPN`, `MaSP`, `DonGia`, `SoLuong`, `ThanhTien`) VALUES
('PN1', 'sp12', 2000, 2, 4000),
('PN2', 'sp11', 3000, 1, 3000),
('PN3', 'sp3', 2400, 2, 4800),
('PN5', 'sp4', 2500, 6, 15000),
('PN4', 'msp1', 1600, 32, 51200);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` varchar(10) NOT NULL,
  `MaNV` varchar(10) NOT NULL,
  `MaKH` varchar(10) NOT NULL,
  `NgayLap` text NOT NULL,
  `TongTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaNV`, `MaKH`, `NgayLap`, `TongTien`) VALUES
('HD1', 'NV1', 'KH2', '2021-02-10', 8000),
('HD2', 'NV2', 'KH2', '2021-5-9', 6000),
('HD3', 'NV2', 'KH1', '2021-5-9', 4000),
('HD4', 'NV2', 'KH2', '2021-05-10', 20000),
('HD5', 'NV2', 'KH5', '2021-05-10', 2000),
('HD6', 'NV2', 'KH1', '2021-05-10', 3000),
('HD7', 'NV1', 'KH1', '2021-05-15', 17000),
('HD8', 'NV1', 'KH1', '2021-05-15', 3000),
('HD9', 'NV1', 'KH1', '2021-05-15', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(10) NOT NULL,
  `TenKH` text NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `SDT` varchar(13) NOT NULL,
  `NgaySinh` text NOT NULL,
  `GioiTinh` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `DiaChi`, `SDT`, `NgaySinh`, `GioiTinh`) VALUES
('KH1', '?????ng Ch???n C?????ng', '58/100 An D????ng V????ng', '0908892333', '2001-05-09', 'nam'),
('KH2', 'Nguy???n Th??? h????ng', '909 Nguy???n tr??i', '0778900320', '2001-01-03', 'N???'),
('KH3', 'L?? Th??? Tuy???t', '302 ch??ng c?? S?? V???n H???nh', '0778900222', '1990-04-01', 'N???'),
('KH4', 'Tr???n Qu???c A', '311/22', '0988772663', '2021-05-26', 'nam'),
('KH5', 'Ng?? ????nh Qu??n', '33/22 H?? n???i', '0778900320', '1996-03-11', 'nam'),
('KH7', 'Xi Nhan', 'ADV', '01234', '2001-07-08', 'N???');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `MaLSP` varchar(10) NOT NULL,
  `TenLSP` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`MaLSP`, `TenLSP`) VALUES
('LSP1', 'ROLEX'),
('LSP2', 'CASIO'),
('LSP3', 'CITIZEN'),
('LSP4', 'OMEGA');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` varchar(20) NOT NULL,
  `TenNCC` text NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `SDT` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `SDT`) VALUES
('ncc1', 'sanh', 'H?? n???i', '081238721'),
('NCC2', 'ABC', 'S??i G??n', '012312772'),
('ncc3', 'sanh', 'B???c Ninh', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` varchar(10) NOT NULL,
  `TenNV` text NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(300) NOT NULL,
  `SDT` varchar(13) NOT NULL,
  `Gioitinh` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `NgaySinh`, `DiaChi`, `SDT`, `Gioitinh`) VALUES
('NV1', 'Nguy???n H???ng Nhung', '1999-03-02', '33/33 h?? giang', '0124567892', 'N???'),
('NV2', 'Nguy???n H???ng Th???o', '1997-03-01', 'C???n th??', '0123456789', 'N???'),
('NV3', 'V??n Tri???u', '2001-02-28', '99ADV', '0777123123', 'Nam'),
('NV4', 'L?? Ho??ng ?????c', '1993-03-21', '22/22 AnDuongVuong', '0778901111', 'Nam'),
('NV5', 'L?? Vi???t Sanh\r\n', '2001-09-12', 'H??? Ch?? Minh', '0778901111', 'Nam');

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` varchar(10) NOT NULL,
  `TenQuyen` text NOT NULL,
  `ChiTietQuyen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
('Q1', 'Admin', 'all'),
('Q2', 'Qu???n l??', 'c???a h??ng + nh???p h??ng+s???n ph???m+lo???i sp +h??a ????n+phi???u nh???p+nh??n vi??n+kh??ch h??ng+ncc'),
('Q3', 'Nh??n vi??n', 'c???a h??ng + nh???p h??ng+ th??m, s???a kh??ch h??ng,ncc');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` varchar(20) NOT NULL,
  `MaNV` varchar(20) NOT NULL,
  `MaNCC` varchar(20) NOT NULL,
  `NgayLap` text NOT NULL,
  `TongTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`MaPN`, `MaNV`, `MaNCC`, `NgayLap`, `TongTien`) VALUES
('PN1', 'NV1', 'ncc1', '2021-05-11', 2000),
('PN2', 'NV1', 'ncc1', '2021-05-12', 3000),
('PN3', 'NV1', 'ncc1', '2021-05-14', 4800),
('PN4', 'NV1', 'ncc1', '2021-05-15', 51200),
('PN5', 'NV1', 'ncc1', '2021-05-14', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` varchar(10) NOT NULL,
  `TenSP` text NOT NULL,
  `MaLoai` varchar(10) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `HinhAnh` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaLoai`, `DonGia`, `SoLuong`, `HinhAnh`) VALUES
('msp1', 'rolex', 'LSP4', 2000, 22, 'casio2.png'),
('sp11', 'citizen', 'LSP3', 3000, 1, '637832913_donghonhat11.jpg'),
('sp12', 'casio', 'LSP2', 3000, 1, 'GA700DC-1A_large.png'),
('sp2', 'casio', 'LSP2', 3000, 2, 'casio2.png'),
('sp3', 'casio', 'LSP2', 3000, 2, '248667585_donghonhat17.jpg'),
('sp4', 'casio', 'LSP2', 3000, 2, 'MSGS500G-2A_large.png');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTK` varchar(20) NOT NULL,
  `MatKhau` varchar(20) NOT NULL,
  `MaQuyen` varchar(10) NOT NULL,
  `MaNV` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaTK`, `MatKhau`, `MaQuyen`, `MaNV`) VALUES
('admin', 'admin', 'Q1', 'NV3'),
('nhanvien', '123456789', 'Q1', 'NV3'),
('nhanvien1', '1234', 'Q1', 'NV1'),
('quanly1', '123456789', 'Q2', 'NV2'),
('vantrieu', 'vantrieu', 'Q3', 'NV2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD KEY `MaTK` (`MaTK`);

--
-- Indexes for table `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `MaHD` (`MaHD`);

--
-- Indexes for table `chitietpn`
--
ALTER TABLE `chitietpn`
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `MaPN` (`MaPN`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`MaLSP`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTK`),
  ADD KEY `MaQuyen` (`MaQuyen`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`MaTK`) REFERENCES `taikhoan` (`MaTK`);

--
-- Constraints for table `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD CONSTRAINT `chitiethd_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethd_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chitietpn`
--
ALTER TABLE `chitietpn`
  ADD CONSTRAINT `chitietpn_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietpn_ibfk_2` FOREIGN KEY (`MaPN`) REFERENCES `phieunhap` (`MaPN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `hoadon_ibfk_3` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaisp` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`),
  ADD CONSTRAINT `taikhoan_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
