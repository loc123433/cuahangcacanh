-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 26, 2022 at 05:54 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webgiay`
--

-- --------------------------------------------------------

--
-- Table structure for table `ct_hoadon`
--

DROP TABLE IF EXISTS `ct_hoadon`;
CREATE TABLE IF NOT EXISTS `ct_hoadon` (
  `MaHD` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  PRIMARY KEY (`MaHD`,`MaSP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ct_hoadon`
--

INSERT INTO `ct_hoadon` (`MaHD`, `MaSP`, `SoLuong`, `ThanhTien`) VALUES
('125122022124438', 9, 1, '180000'),
('125122022124438', 10, 1, '180000'),
('125122022123953', 1, 1, '100000'),
('125122022123953', 5, 1, '150000'),
('125122022123831', 1, 1, '100000'),
('125122022123831', 5, 1, '150000'),
('125122022123556', 1, 1, '100000'),
('125122022123556', 5, 1, '150000'),
('12612202212043', 9, 1, '180000'),
('12612202212043', 10, 1, '180000'),
('12612202212043', 2, 1, '120000');

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

DROP TABLE IF EXISTS `giohang`;
CREATE TABLE IF NOT EXISTS `giohang` (
  `MaND` int(11) DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  UNIQUE KEY `MaND` (`MaND`,`MaSP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `MaHD` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` date NOT NULL,
  `MaND` int(11) NOT NULL,
  `TongTien` decimal(11,0) NOT NULL,
  `SDT` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NguoiNhan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TrangThai` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`MaHD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `ThoiGian`, `MaND`, `TongTien`, `SDT`, `DiaChi`, `NguoiNhan`, `TrangThai`) VALUES
('12612202212043', '2022-12-26', 1, '480000', '0349257157', '12612202212043', 'Lê Ngọc', 1),
('125122022124438', '2022-12-25', 1, '360000', NULL, NULL, NULL, 0),
('12512202212321', '2022-12-25', 1, '400000', NULL, NULL, NULL, 1),
('125122022123429', '2022-12-25', 1, '630000', NULL, NULL, NULL, 0),
('125122022123831', '2022-12-25', 1, '250000', NULL, NULL, NULL, 1),
('125122022123953', '2022-12-25', 1, '250000', NULL, NULL, NULL, 0),
('12612202255230', '2022-12-26', 1, '0', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
CREATE TABLE IF NOT EXISTS `loai` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaLoai`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`MaLoai`, `TenLoai`) VALUES
(1, 'GIÀY ADIDAS'),
(2, 'GIÀY NIKE'),
(3, 'GIÀY BITI\'S'),
(4, 'GIÀY CONVERSE');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TenSP` longtext COLLATE utf8_unicode_ci,
  `HinhAnh` longtext COLLATE utf8_unicode_ci,
  `DonGia` int(11) DEFAULT NULL,
  `TieuDe` longtext COLLATE utf8_unicode_ci,
  `MoTa` longtext COLLATE utf8_unicode_ci,
  `MaLoai` int(11) DEFAULT NULL,
  `SoLuong` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `TenSP`, `HinhAnh`, `DonGia`, `TieuDe`, `MoTa`, `MaLoai`, `SoLuong`) VALUES
(1, 'Giày thể thao', 'https://canary.contestimg.wish.com/api/webimage/5f5ad3f3706bf3003d7acbd3-normal.jpg?cache_buster=10f7d3b88daf4019fa9d8be157793111', 200000, 'Giày thể thao nam Adidas Enerergy Falcon EE9844', 'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng ', 1, 70),
(2, 'Giày chạy bộ', 'https://canary.contestimg.wish.com/api/webimage/5d5bd678d55c843e49fe3077-normal.jpg?cache_buster=ddfc80fb52c6bd85a67c68ceb94a91d7', 120000, 'Giày Adidas Nova Run EE9266\n', 'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng \"thon thả\" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị \"mang tiếng\" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng \"tiện tay\" giúp cho người đi \"ăn gian\" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 2, 75),
(3, 'Giày du lịch', 'https://canary.contestimg.wish.com/api/webimage/5da6e559dcf2d00d2fbc707c-normal.jpg?cache_buster=d9139cea7e503395b907432f89e292d6', 130000, 'Dép đúc thể thao nam Adidas Adilette Boost Slides Đen - EH2256\n', 'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng \"thon thả\" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị \"mang tiếng\" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng \"tiện tay\" giúp cho người đi \"ăn gian\" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 1, 84),
(4, 'Giày adidas 2A', 'https://png.pngtree.com/png-vector/20201128/ourlarge/pngtree-casual-shoes-png-image_2394294.jpg', 140000, 'Giày thể thao nam Adidas Enerergy Falcon EE9844\n', 'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng \"thon thả\" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị \"mang tiếng\" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng \"tiện tay\" giúp cho người đi \"ăn gian\" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 2, 84),
(5, 'Giày adidas 2B', 'https://ressmedia.com/wp-content/uploads/2021/07/ANH-1-36.jpg', 150000, 'Giày đá bóng nam chính hãng Adidas Predator 18.4 FXG DB2007\n', 'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng \"thon thả\" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị \"mang tiếng\" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng \"tiện tay\" giúp cho người đi \"ăn gian\" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 1, 81),
(6, 'Giày adidas 2C', 'https://giaysihcm.com/wp-content/uploads/2021/04/z2468147040292_b5a9614b05934d71fc20945ca4609acb-scaled.jpg', 160000, 'Giày đá bóng nam chính hãng Adidas Copa Tango 18.3 TF DB2410\n', 'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng \"thon thả\" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị \"mang tiếng\" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng \"tiện tay\" giúp cho người đi \"ăn gian\" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 2, 84),
(8, 'New Men\'s Running Shoes', 'https://canary.contestimg.wish.com/api/webimage/5c4a05a08b26e56dcf17a643-normal.jpg?cache_buster=6d01b751858e14e68932bb234cdc44c1', 150000, 'Comfortable Sports Shoes Men Athletic Outdoor Cushioning Sneakers for Walking&Jogging (EUR Size 39-48)', 'New Men\'s Running Shoes Comfortable Sports Shoes Men Athletic Outdoor Cushioning Sneakers for Walking&Jogging (EUR Size 39-48)', 4, 81),
(9, 'Men Hiking Shoes Waterproof Non', 'https://canary.contestimg.wish.com/api/webimage/5dc3c309d8b69d0de8949a21-large.jpg?cache_buster=68ad269a9f7b07d0effa9e48c1dc5c0f', 180000, 'Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-47 3 Colors\n', 'Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-47 3 Colors\n', 3, 78),
(10, 'Winter Men\'s Snow Boots Plus Velvet', 'https://canary.contestimg.wish.com/api/webimage/5da3d0b594a0f07fdec6c5ac-large.jpg?cache_buster=a2471ea62eba44e7c0b0f4d2b4c64681', 180000, 'Winter Men\'s Snow Boots Plus Velvet Cotton Shoes Men\'s Shoes Martin Cotton Boots Warm Shoes\n', 'Winter Men\'s Snow Boots Plus Velvet Cotton Shoes Men\'s Shoes Martin Cotton Boots Warm Shoes\n', 4, 81),
(11, 'New Trend Men Hiking Shoes', 'https://canary.contestimg.wish.com/api/webimage/5df1f07d1fc34e0c50f78eb7-large.jpg?cache_buster=36188c130400df0faa4256aad8e90109', 150000, 'New Trend Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-48\n', 'New Trend Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-48\n', 3, 84),
(12, 'Mens Skid Resistant Hiking Shoes', 'https://canary.contestimg.wish.com/api/webimage/5f3fb6d1b2a7ef003f6bd8a4-large.jpg?cache_buster=c9295f971ce194c1e68f6144f11314c6', 165000, 'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers\n', 'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers\n', 3, 84),
(13, 'NEW Spring White Shoes Men', 'https://canary.contestimg.wish.com/api/webimage/5d0235c9ae115f0be32755ef-large.jpg?cache_buster=fd2c105001ca1cbb03795818542906cc', 185000, 'NEW Spring White Shoes Men Shoes Men\'s Casual Shoes Fashion Sneakers Street Cool Man Footwear\n', 'NEW Spring White Shoes Men Shoes Men\'s Casual Shoes Fashion Sneakers Street Cool Man Footwear\n', 3, 84),
(14, 'Winter Outdoor Waterproof', 'https://canary.contestimg.wish.com/api/webimage/5d70b17d55d5981ab5789f86-large.jpg?cache_buster=19f34456a6b274b940c839db21c2ab51', 200000, 'Winter Outdoor Waterproof Non-slip Plus Velvet Warm Snow Boots Cotton Boots Men\'s Shoes\n', 'Winter Outdoor Waterproof Non-slip Plus Velvet Warm Snow Boots Cotton Boots Men\'s Shoes\n', 4, 84),
(15, 'Men\'s Fashion Casual Shoes', 'https://canary.contestimg.wish.com/api/webimage/5c4a06d9e6a1c62df8877125-large.jpg?cache_buster=d17e757a3f8465edc71812b95b4b1a57', 100000, 'Men\'s Fashion Casual Shoes Sports Running Shoes Men\'s Shoes\n', 'Men\'s Fashion Casual Shoes Sports Running Shoes Men\'s Shoes\n', 4, 84),
(16, 'Mens Skid Resistant Hiking Shoes', 'https://canary.contestimg.wish.com/api/webimage/5c4a02d1344e882b1a41bca4-large.jpg?cache_buster=bc4ce4d229ed4e42dbba614acb622899', 120000, 'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors\n', 'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors\n', 4, 84),
(17, 'Men\'s Modern Classic Lace Up Lined', 'https://canary.contestimg.wish.com/api/webimage/5c9543744578cb33ad0f56cd-large.jpg?cache_buster=ed84658c453c742ad13b9d565566ed06', 100000, 'Men\'s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords\n', 'Men\'s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords\n', 3, 84),
(18, 'Men\'s Outdoors Waterproof Boots Sports Shoes', 'https://canary.contestimg.wish.com/api/webimage/5e0db090b6383fa7bb0416ab-large.jpg?cache_buster=92297459781628185d780669109c00d6', 120000, 'Men\'s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men\'s Winter Warm Boots(No Velvet/Plus Velvet)\n', 'Men\'s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men\'s Winter Warm Boots(No Velvet/Plus Velvet)\n', 3, 84);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE IF NOT EXISTS `taikhoan` (
  `MaND` int(11) NOT NULL AUTO_INCREMENT,
  `TenND` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QuanTriVien` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaND`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaND`, `TenND`, `MatKhau`, `QuanTriVien`) VALUES
(1, 'Adam', '123456', 0),
(2, 'Anjolie', 'SNZ6HE', 1),
(3, 'Ferris', 'RXH3XJ', 1),
(4, 'Katell', 'HWV8ZN', 0),
(5, 'Zahir', 'NPX7OF', 0),
(6, 'Conan', 'WIZ5VZ', 0),
(7, 'Cade', 'ZSW2LU', 0),
(8, 'Micah', 'RVV5SR', 0),
(9, 'Rowan', 'VAI6XR', 1),
(10, 'Kirby', 'DNX6JK', 0),
(11, 'Tanisha', 'XWU7JP', 1),
(12, 'Howard', 'TSR5MR', 1),
(13, 'Tana', 'EHS8CM', 0),
(14, 'Hadassah', 'YOY7ZW', 0),
(15, 'Echo', 'IGE8TN', 0),
(16, 'Slade', 'OFO6QS', 0),
(17, 'Devin', 'IBM6RZ', 0),
(18, 'Rowan', 'ZYS9VI', 0),
(19, 'Rafael', 'WZA0IH', 0),
(20, 'Madaline', 'QMW4EN', 1),
(21, 'Vera', 'CZB2VM', 1),
(22, 'Declan', 'ZKE7QZ', 1),
(23, 'Katell', 'SFS0IW', 1),
(24, 'Summer', 'PSQ7LC', 1),
(25, 'Robin', 'KIS9AF', 1),
(26, 'Dominique', 'IKV0IX', 0),
(27, 'admin', '123', 1),
(28, 'mra', 'mra', 0),
(29, 'mrb', '123', 0),
(30, 'Camden', '123', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
