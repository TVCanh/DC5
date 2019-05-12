-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2019 lúc 11:28 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webmap`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baidang_diendan`
--

CREATE TABLE `baidang_diendan` (
  `id_baidang` int(11) NOT NULL,
  `chude` text COLLATE utf8_unicode_ci NOT NULL,
  `tieude` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `nguoidang` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` text COLLATE utf8_unicode_ci NOT NULL,
  `viewcount` int(5) NOT NULL,
  `luot_like` int(4) NOT NULL,
  `luot_dislike` int(4) NOT NULL,
  `trangthai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baidang_diendan`
--

INSERT INTO `baidang_diendan` (`id_baidang`, `chude`, `tieude`, `noidung`, `hinhanh`, `nguoidang`, `ngaydang`, `viewcount`, `luot_like`, `luot_dislike`, `trangthai`) VALUES
(1, 'Tình Yêu', 'abc', 'noidung', '5afb36a294cff.jpg', 'nguoidung', '03/04/2019', 303, 14, 17, 1),
(2, 'Thả Thính', 'Tinh Yeu', 'Noi dung', 'Ringtrambus_LR.jpg', 'nguoidung', '03/04/2019', 17, 0, 0, 1),
(3, 'Thơ Tình', 'sfdfds', 'dfsdfds', 'Saigon_bus_15.jpg', 'nguoidung', '07/04/2019', 0, 0, 0, 1),
(4, 'Chính Trị', 'Chính Trị', 'ádsadasfdfdf', 'Ringtrambus_LR.jpg', 'nguoidung', '07/04/2019', 0, 0, 0, 1),
(5, 'Chính Trị', 'babgagffg', 'đâsdfsfdhgfjghk', '1547638505.jpg', 'user1', '20/04/2019', 0, 0, 0, 1),
(6, 'Tình Yêu', 'ggfgfgf', 'fgfgf', '1547638505.jpg', 'user1', '27/04/2019', 0, 0, 0, 1),
(7, 'Tình Yêu', 'Tinh yêu', 'ewaeddsggs', 'Ringtrambus_LR.jpg', 'user1', '27/04/2019', 0, 0, 0, 1),
(8, 'Tình Yêu', 'Tinh yêu', 'ewaeddsggs', 'Ringtrambus_LR.jpg', 'user1', '27/04/2019', 0, 0, 0, 1),
(9, 'Tình Yêu', 'Tinh yêu', 'ewaeddsggs', 'Ringtrambus_LR.jpg', 'user1', '27/04/2019', 18, 0, 0, 1),
(10, 'Tình Yêu', 'Tinh yêu', 'ewaeddsggs', 'Ringtrambus_LR.jpg', 'user1', '27/04/2019', 13, 0, 0, 1),
(11, 'Tình Yêu', 'Tinh yêu', 'ewaeddsggs', 'Ringtrambus_LR.jpg', 'user1', '27/04/2019', 0, 0, 0, 1),
(12, 'Tình Yêu', 'Tinh yêu', 'ewaeddsggs', 'Ringtrambus_LR.jpg', 'user1', '27/04/2019', 0, 0, 0, 1),
(13, 'Tình Yêu', 'Tinh yêu', 'ewaeddsggs', 'Ringtrambus_LR.jpg', 'user1', '27/04/2019', 2, 0, 0, 1),
(14, 'Tình Yêu', 'Tinh yêu', 'ewaeddsggs', 'Ringtrambus_LR.jpg', 'user1', '27/04/2019', 0, 0, 0, 1),
(15, 'Tình Yêu', '3424', 'rewrewr', '1547638505.jpg', '', '27/04/2019', 0, 0, 0, 1),
(16, 'Tình Yêu', '3424', 'rewrewr', '1547638505.jpg', '', '27/04/2019', 0, 0, 0, 1),
(17, 'Thơ Tình', '3434', '342342', '1547638505.jpg', 'user1', '27/04/2019', 0, 0, 0, 1),
(18, 'Thơ Tình', 'ewr', 'ểwr', '1547638505.jpg', 'user1', '27/04/2019', 0, 0, 0, 1),
(19, 'Thơ Tình', 'ewr', 'ểwr', '1547638505.jpg', 'user1', '27/04/2019', 0, 0, 0, 1),
(20, 'Thơ Tình', 'ewr', 'ểwr', '1547638505.jpg', 'user1', '27/04/2019', 0, 0, 0, 1),
(21, 'Tâm Sự', 'Tâm sự', 'Tâm sự', 'Saigon_bus_15.jpg', 'user1', '28/04/2019', 0, 0, 0, 0),
(22, 'Học Tập', 'Học Tập', 'Học Tập', '5afb36a294cff.jpg', 'user1', '28/04/2019', 0, 0, 0, 0),
(23, 'Việc Làm', 'Việc Làm', 'Việc Làm', '5afb36a294cff.jpg', 'user1', '28/04/2019', 0, 0, 0, 0),
(24, 'Game', 'Game', 'Game', '5afb36a294cff.jpg', 'user1', '28/04/2019', 0, 0, 0, 0),
(25, 'Game', 'Game', 'Game', '5afb36a294cff.jpg', 'user1', '28/04/2019', 0, 0, 0, 0),
(26, 'Ý Đẹp', 'Ý Đẹp', 'Ý Đẹp', '5afb36a294cff.jpg', 'user1', '28/04/2019', 0, 0, 0, 0),
(27, 'Từ Thiện', 'Từ Thiện', 'Từ Thiện', '5afb36a294cff.jpg', 'user1', '28/04/2019', 0, 0, 0, 0),
(28, 'Phim Ảnh', 'Phim ảnh', 'Phim Ảnh', '5afb36a294cff.jpg', 'user1', '28/04/2019', 0, 0, 0, 0),
(29, 'Chủ Đề Khác', 'Chủ đề khác', 'Chủ đề khác', '5afb36a294cff.jpg', 'user1', '28/04/2019', 0, 0, 0, 0),
(30, 'Game', 'Game', 'dsa', '_DSC0001.JPG', 'caoductai113', '03/05/2019', 3, 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `com_mess` text COLLATE utf8_unicode_ci NOT NULL,
  `com_date` date NOT NULL,
  `id_baidang` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`com_id`, `com_name`, `com_mess`, `com_date`, `id_baidang`) VALUES
(1, 'user1', 'user1 đã đến đây!', '2019-04-09', 1),
(2, 'user1', 'user1 cmt thứ 2', '2019-04-12', 1),
(3, 'user1', 'abc', '2019-04-03', 2),
(4, 'user1', 'abc', '2019-04-12', 3),
(5, 'user1', 'abc', '2019-05-04', 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id_rate` int(10) NOT NULL,
  `ma_thongbao` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id_rate`, `ma_thongbao`, `rate`) VALUES
(1, 1, 4),
(2, 1, 4),
(3, 1, 4),
(4, 1, 4),
(5, 1, 4),
(6, 1, 4),
(7, 1, 4),
(8, 1, 4),
(9, 1, 4),
(10, 1, 4),
(11, 1, 4),
(12, 1, 4),
(13, 1, 4),
(14, 1, 4),
(15, 1, 3),
(16, 2, 5),
(17, 1, 3),
(18, 8, 3),
(19, 8, 4),
(20, 8, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reply`
--

CREATE TABLE `reply` (
  `rep_id` int(10) UNSIGNED NOT NULL,
  `rep_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rep_mess` text COLLATE utf8_unicode_ci NOT NULL,
  `rep_date` date NOT NULL,
  `com_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reply`
--

INSERT INTO `reply` (`rep_id`, `rep_name`, `rep_mess`, `rep_date`, `com_id`) VALUES
(1, 'user2', 'user2 reply', '2019-04-09', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `tentaikhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `sdt` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `tentaikhoan`, `matkhau`, `email`, `sdt`, `hinhanh`, `quyen`) VALUES
(1, 'tai', 'a412ba79e6bcd018c48faf00f057c0bb', '', '0', 'anDanh.png', 1),
(2, 'user1', '202cb962ac59075b964b07152d234b70', 'user1@gmail.com', '0987654321', 'default.png', 0),
(3, 'user2', '202cb962ac59075b964b07152d234b70', 'user2@gmail.com', '0987654321', '20190310_100258.jpg', 0),
(4, 'caoductai113', '0545abd0dc44d4531a53331e44febd02', 'ductai139@gmail.com', '0396166118', '_DSC0001.JPG', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `ma_thongbao` int(20) NOT NULL,
  `chude` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tieude` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`ma_thongbao`, `chude`, `tieude`, `noidung`, `hinhanh`, `ngaydang`) VALUES
(1, 'An Ninh', 'Tạm giữ đối tượng nghi dùng súng điện để cướp tiệm vàng', 'Thông tin ban đầu, sau thời gian theo dõi, đến khoảng 13h30 ngày 30/4, đối tượng Nguyễn Thanh Hãn (sinh năm 1995, thường trú thôn Mỹ Hòa, xã Hòa Thắng, huyện Phú Hòa, tỉnh Phú Yên) đã dùng súng điện đến tiệm vàng Ngọc Kim Cúc thuộc chợ Đông Lộc, xã Hòa Th', '70GQNT6XZM.jpg', '30/04/2019'),
(2, 'Chính Trị', 'Pháo hoa lung linh trên bầu trời TPHCM đêm 30/4', 'Hàng ngàn người dân Sài Gòn có mặt tại khu Toà nhà Landmark 81 ven sông Sài Gòn đã trầm trồ, vỗ tay khi chiêm ngưỡng màn bắn pháo hoa kỷ niệm 44 giải phóng miền Nam thống nhất đất nước. Hàng ngàn người dân Sài Gòn có mặt tại khu Toà nhà Landmark 81 ven sô', '3-1556635467364.jpg', '30/04/2019'),
(3, 'Tìm Đồ Và Vật Bị Mất', 'Gặp lại chiếc xe sau 6 năm biệt tích!', 'Tối 26-1, gia đình anh Trương Tín Dương đã đến Công an phường Bưởi, TP Hà Nội để được hướng dẫn các thủ tục, nhận lại chiếc xe bị mất trộm từ 6 năm trước.\r\nTại đây, vợ chồng anh Dương không giấu nổi vẻ xúc động, bắt tay cảm ơn các cán bộ tổ công tác Y2/14', '7DJQUYVFA6.jpg', '30/04/2019'),
(4, 'Góp Ý', 'Tin tức về chủ đề \"đóng góp ý kiến\"', 'đóng góp ý kiến | Dân trí - Trang tổng hợp tin tức, hình ảnh, video clip, bình luận, đánh giá mới nhất, cập nhật đầy đủ nhất 24h liên quan đến chủ đề đóng góp ý kiến.đóng góp ý kiến | Dân trí - Trang tổng hợp tin tức, hình ảnh, video clip, bình luận, đánh', 'JMVRBGMXZY.jpg', '30/04/2019'),
(5, 'An Ninh', 'Nâng cao hiệu quả công tác xây dựng phong trào', 'Những năm qua, Công an các tỉnh trong Cụm thi đua số 4 đã đạt được nhiều kết quả nổi bật trong phong trào thi đua “Vì an ninh Tổ quốc” và công tác chuyên môn. Với quyết tâm thực hiện thắng lợi nhiệm vụ công tác công an và tiếp tục đẩy mạnh phong trào thi đua “Vì an ninh Tổ quốc” năm 2019, tại hội nghị, Công an 8 tỉnh đã thảo luận thông qua Quy chế làm việc, Quy định tiêu chí chấm điểm thực hiện phong trào thi đua và thống nhất thực hiện hiệu quả với các nội dung, chỉ tiêu thi đua như: Tiếp tục quán triệt, triển khai thực hiện nghiêm túc các chủ trương chỉ đạo của Đảng, Nhà nước, Đảng ủy Công an Trung ương, lãnh đạo Bộ Công an và của cấp ủy, chính quyền địa phương về công tác thi đua, khen thưởng.Khẳng định năm 2019 có ý nghĩa quan trọng đối với phong trào thi đua “Vì an ninh Tổ quốc”, Đại tá Nguyễn Công Bảy, Phó Cục trưởng Cục Công tác Đảng và Công tác chính trị, Bộ Công an, nhấn mạnh Công an 8 tỉnh cần triển khai đồng bộ các giải pháp đảm bảo an ninh chính trị nội bộ, an ninh kinh tế, an ninh văn hóa tư tưởng, an ninh mạng, bảo vệ bí mật nhà nước; tăng cường hiệu lực, hiệu quả công tác quản lý nhà nước về an ninh trật tự; nâng cao hiệu quả công tác dân vận, công tác xây dựng phong trào \"Toàn dân bảo vệ an ninh Tổ quốc\"…', 'vov1_vianninh_toquoc.jpg', '30/04/2019'),
(6, 'Tìm Đồ Và Vật Bị Mất', 'Đối phó với nạn trộm cắp trên xe buýt', 'Dù lực lượng chức năng đã bắt nhiều nghi phạm, nhưng tình trạng trộm cắp vẫn xảy ra ở nhiều tuyến xe buýt TP.HCM khiến hành khách bức xúc và bất an.Ngày 22.4, sinh viên Nguyễn Huy Phương đón xe buýt tuyến số 8 để đến Đại học Sư phạm kỹ thuật TP.HCM (Q.Thủ Đức, TP.HCM). Khi xe đến trạm, sinh viên này phát hiện ba lô đeo sau lưng đã bị rạch, chiếc laptop hiệu HP trị giá 15 triệu đồng “không cánh mà bay”. Trước đó, ngày 15.4, một nam sinh viên khác của Trường cao đẳng Xây dựng cũng bị kẻ gian lấy mất laptop ngay trên tuyến xe buýt số 8 này.Không đeo ba lô phía sau, không chen lấn khi lên xuống xe để tránh bị kẻ gian lợi dụng trộm cắp, móc túiKhông đeo ba lô phía sau, không chen lấn khi lên xuống xe để tránh bị kẻ gian lợi dụngtrộm cắp, móc túi - Ảnh: Hải NamCũng vào ngày 22.4, Công an Q.Thủ Đức tiếp nhận một vụ trộm laptop trên xe buýt khác. Sáng hôm đó, chị Nguyễn Thị Cẩm Thu (ngụ P.Phước Long B, Q.9) đón xe buýt tuyến 150 tại trạm Bình Thái - Trường Thọ đi Thủ Đức. Khi đến trạm, chị Thu xuống xe thì phát hiện ba lô đã bị mở bung dây kéo và chiếc laptop hiệu Acer trị giá 11 triệu đồng cũng mất dạng.Thái Thị Vân Anh, sinh viên Trường cao đẳng Ngoại thương TP.HCM, cho biết không ít lần tận mắt chứng kiến cảnh trộm cắp trên xe buýt. “Có lần, em đi xe buýt tuyến số 8 từ Bến xe Q.8 đến Hàng Xanh. Lợi dụng lúc chen lấn, có hai người ăn mặc khá lịch sự móc túi quần lấy bóp của một người đàn ông đứng phía trước em. Sau khi thực hiện xong, 2 người này liền xuống xe ngay trạm kế tiếp. Dù thấy rõ ràng nhưng vì quá sợ nên em không dám la lên”, Vân Anh kể.', 'trom-tren-xe-buyt-d.jpg', '30/04/2019'),
(7, 'Góp Ý', 'Đi xe buýt, bạn trẻ thảnh thơi giữa dòng xe máy ngược xuôi', 'Phạm Hữu Nghĩa (31 tuổi, ngụ quận 8) hàng ngày bắt xe buýt đi từ quận 8 xuống làng đại học ở Thủ Đức để làm việc. Nhà cách trạm xe gần một cây số và ở điểm đến anh cũng phải đi bộ thêm khoảng 30 phút để đi từ bến vào chỗ làm.\"Nhưng tôi thích đi bộ và đã quen với việc đó nên thấy không khó khăn gì. Trên xe buýt thì có thể ngắm phố phường, nghe nhạc, tranh thủ đọc sách, học tiếng Anh\", anh chia sẻ. Đó là lý do anh quyết định bán hẳn xe máy sau gần chục năm chạy xe để chuyển sang đi xe buýt.Một năm chuyển từ xe máy qua đi xe buýt từ Bình Thạnh lên quận 1 (TP.HCM), Nguyễn Khánh Toàn (29 tuổi, ngụ Bình Thạnh) thấy cái lợi lớn nhất là thảnh thơi hơn, không phải căng người lái xe máy giữa dòng người đông đúc hai buổi sáng, chiều\"Sau khi tốt nghiệp, tôi cũng đã có 7 năm đi làm bằng xe máy. Thấy trạm xe buýt cách nhà vài trăm mét, tôi nghĩ sao mình không thử. Đi một thời gian, tôi ghiền, chuyển hẳn qua xe buýt\", Khánh Toàn kể.Toàn liệt kê những điểm lợi của xe buýt: rẻ, thoải mái, không tốn tiền gửi xe, góp phần bảo vệ môi trường, giảm khí thải.\"100 người đi xe buýt sẽ giảm 100 xe máy đi ngoài đường, sẽ có bao nhiêu lợi ích. Xe buýt hiện tại bất tiện cũng một phần do xe máy quá nhiều, đường không thông thoáng. Nếu có thêm nhiều khách, xe buýt sẽ càng thuận tiện hơn\", Toàn chia sẻ.Công việc làm bếp 8 tiếng vắt kiệt sức lực của Toàn, nên anh vô cùng mệt mỏi khi phải lái xe căng thẳng, còn \"lên xe buýt thì chỉ cắm tai nghe rồi nghe nhạc thảnh thơi\".Anh cảm thấy thoải mái khi mỗi ngày đi bộ từ nhà ra bến chừng 5-7 phút và cũng hiếm khi phải chờ đợi, lỡ chuyến như nhiều người nghĩ\"Đi xe buýt khỏe. Với Google map tôi có thể chọn phương tiện di chuyển. Sau khi chọn tuyến buýt trên map, chừng 10 phút trước khi xe tới, app sẽ réo \"10 phút nữa sẽ có một chuyến xe đi qua điểm này\". App thông báo chính xác nên khá tiện\", anh kể.Đi xe buýt từ thời còn sinh viên, ra trường cũng sắm xe máy như hầu hết mọi người với ý nghĩ đi làm cho tiện nhưng hai năm nay Tô Văn Lộc (30 tuổi, ngụ quận 8) cũng bán xe máy để đi xe buýt.Thời gian ngồi trên xe buýt anh chàng sẽ thảnh thơi ngắm phố phường. \"Có rất nhiều ý tưởng cho công việc của tôi nảy ra từ những lần ngồi xe buýt quan sát mọi thứ từ trên xe\", Lộc kể.', 'JMVRBGMXZY.jpg', '30/04/2019'),
(8, 'An Ninh', 'Nâng cao hiệu quả công tác xây dựng phong trào', 'Những năm qua, Công an các tỉnh trong Cụm thi đua số 4 đã đạt được nhiều kết quả nổi bật trong phong trào thi đua “Vì an ninh Tổ quốc” và công tác chuyên môn. Với quyết tâm thực hiện thắng lợi nhiệm vụ công tác công an và tiếp tục đẩy mạnh phong trào thi đua “Vì an ninh Tổ quốc” năm 2019, tại hội nghị, Công an 8 tỉnh đã thảo luận thông qua Quy chế làm việc, Quy định tiêu chí chấm điểm thực hiện phong trào thi đua và thống nhất thực hiện hiệu quả với các nội dung, chỉ tiêu thi đua như: Tiếp tục quán triệt, triển khai thực hiện nghiêm túc các chủ trương chỉ đạo của Đảng, Nhà nước, Đảng ủy Công an Trung ương, lãnh đạo Bộ Công an và của cấp ủy, chính quyền địa phương về công tác thi đua, khen thưởng.Khẳng định năm 2019 có ý nghĩa quan trọng đối với phong trào thi đua “Vì an ninh Tổ quốc”, Đại tá Nguyễn Công Bảy, Phó Cục trưởng Cục Công tác Đảng và Công tác chính trị, Bộ Công an, nhấn mạnh Công an 8 tỉnh cần triển khai đồng bộ các giải pháp đảm bảo an ninh chính trị nội bộ, an ninh kinh tế, an ninh văn hóa tư tưởng, an ninh mạng, bảo vệ bí mật nhà nước; tăng cường hiệu lực, hiệu quả công tác quản lý nhà nước về an ninh trật tự; nâng cao hiệu quả công tác dân vận, công tác xây dựng phong trào \"Toàn dân bảo vệ an ninh Tổ quốc\"…', 'vov1_vianninh_toquoc.jpg', '30/04/2019');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh_thanh`
--

CREATE TABLE `tinh_thanh` (
  `ma_tinhthanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_tinhthanh` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinh_thanh`
--

INSERT INTO `tinh_thanh` (`ma_tinhthanh`, `ten_tinhthanh`) VALUES
('CT', 'Thành Phố Cần Thơ'),
('HN', 'Thủ Đô Hà Nội'),
('TPHCM', 'Thành Phố Hồ Chí Minh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tram_xebus`
--

CREATE TABLE `tram_xebus` (
  `ma_tram` int(50) NOT NULL,
  `ten_tram` text COLLATE utf8_unicode_ci,
  `ma_sotuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `stt_theotuyen` int(11) NOT NULL,
  `danhsachnode` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tram_xebus`
--

INSERT INTO `tram_xebus` (`ma_tram`, `ten_tram`, `ma_sotuyen`, `lat`, `lon`, `stt_theotuyen`, `danhsachnode`) VALUES
(1, 'Cổng Trường Mê Linh', '01', 10.776951380282, 106.70552747324, 1, '[{\"lat\":10.776498176850874,\"lng\":106.70511977747084},{\"lat\":10.775676085164203,\"lng\":106.70606391504408},{\"lat\":10.77534935579351,\"lng\":106.70592444017531},{\"lat\":10.774980467368174,\"lng\":106.70602099969985},{\"lat\":10.774816443619596,\"lng\":106.70625686645508},{\"lat\":10.774748594412337,\"lng\":106.70652525499465}]'),
(2, 'Bến Bạch Đằng', '01', 10.77323087611, 106.70642869547, 2, '[{\"lat\":10.77091212504376,\"lng\":106.70622484758498}]'),
(3, 'Cục Hải Quan Thành Phố', '01', 10.770912125044, 106.7056347616, 3, '[]'),
(4, 'Trường Cao Thắng', '01', 10.771101841711, 106.70186894014, 4, '[]'),
(5, 'Trạm Trung Chuyển Đường Hàm Nghi', '01', 10.771112381522, 106.69969098642, 5, '[{\"lat\":10.770732948081937,\"lng\":106.69903652742506},{\"lat\":10.769394387406521,\"lng\":106.69993774965407}]'),
(6, 'Bảo Tàng Mỹ Thuật', '01', 10.769120350629, 106.69965879992, 6, '[{\"lat\":10.767676383492786,\"lng\":106.69803874567152},{\"lat\":10.769278448800373,\"lng\":106.69644014909865}]'),
(7, 'Ký Túc Xá Trần Hưng Đạo', '01', 10.767360185386, 106.694744993, 7, '[]'),
(8, 'Rạp Hưng Đạo', '01', 10.766116469613, 106.69359700754, 8, '[]'),
(9, 'Bệnh Viện Răng Hàm Mặt', '01', 10.762827976059, 106.69073240831, 9, '[]'),
(10, 'Tổng Công Ty Samco', '01', 10.759708090035, 106.68792145327, 10, '[]'),
(11, 'Chợ Nanci', '01', 10.757441936364, 106.68595807627, 11, '[{\"lat\":10.756408986249665,\"lng\":106.68507831171156}]'),
(12, 'Nguyễn Biểu', '01', 10.755544678333, 106.68185966089, 12, '[]'),
(13, 'Trường Cao Đẳng Kinh Tế Đối Ngoại', '01', 10.755217927135, 106.68069021776, 13, '[]'),
(14, 'Trần Bình Trọng', '01', 10.754585504454, 106.6783513315, 14, '[]'),
(15, 'Rạp Đồng Tháp', '01', 10.754079565355, 106.67645232752, 15, '[]'),
(16, 'Rạp Đống Đa', '01', 10.753478761572, 106.67419927195, 16, '[]'),
(17, 'Đồng Khánh', '01', 10.752846335246, 106.67144196108, 17, '[{\"lat\":10.752667147545326,\"lng\":106.66944639757277},{\"lat\":10.753394438138661,\"lng\":106.66946785524489}]'),
(18, 'Nhà Văn Hóa Quận 5', '01', 10.752941199279, 106.66858809069, 18, '[{\"lat\":10.75255581395737,\"lng\":106.66768670082094}]'),
(19, 'Ngô Quyền', '01', 10.752403636028, 106.66604535654, 19, '[]'),
(20, 'Tản Đà', '01', 10.752239599992, 106.66387796402, 20, '[]'),
(21, 'Triệu Quang Phục', '01', 10.752003098081, 106.66171090677, 21, '[{\"lat\":10.75196093616105,\"lng\":106.65889995172621}]'),
(22, 'Bưu Điện Quận 5', '01', 10.751223101606, 106.65894286707, 22, '[{\"lat\":10.750812021571168,\"lng\":106.65901796892287}]'),
(23, 'Hải Thượng Lãn Ông', '01', 10.750812021571, 106.65829913691, 23, '[]'),
(24, 'Chợ Kim Biện', '01', 10.750980669858, 106.65573494509, 24, '[{\"lat\":10.751064993966507,\"lng\":106.65385739877821},{\"lat\":10.751634181080648,\"lng\":106.65324585512282}]'),
(25, 'Bến Xe Chợ Lớn', '01', 10.751244182618, 106.65213005617, 25, 'null'),
(26, 'Cổng Trường Mê Linh(02)', '02', 10.776930301068, 106.70552747324, 1, '[{\"lat\":10.776498176850874,\"lng\":106.70511977747084},{\"lat\":10.77602389345948,\"lng\":106.705688405782},{\"lat\":10.77563392655564,\"lng\":106.7060853727162},{\"lat\":10.77531773680334,\"lng\":106.70594589784743},{\"lat\":10.77500615782672,\"lng\":106.70603156089784},{\"lat\":10.77479536425587,\"lng\":106.70624613761903},{\"lat\":10.774759134096021,\"lng\":106.70650379732253}]'),
(27, 'Bến Bạch Đằng(02)', '02', 10.77323087611, 106.70646088198, 2, '[{\"lat\":10.77089104540672,\"lng\":106.70621411874892}]'),
(28, 'Cục Hải Quan Thành Phố(02)', '02', 10.770869965768, 106.70564549044, 3, '[]'),
(29, 'Trường Cao Thắng(02)', '02', 10.771070222274, 106.70185821131, 4, '[]'),
(30, 'Trạm Trung Chuyển Hàm Nghi(02)', '02', 10.771101841711, 106.69970171526, 5, '[{\"lat\":10.771186160190938,\"lng\":106.69900434091689},{\"lat\":10.771717761315927,\"lng\":106.69878959655763},{\"lat\":10.771970716168596,\"lng\":106.6985321044922},{\"lat\":10.771133461143528,\"lng\":106.69657962396742}]'),
(31, 'Khách Sạn New World', '02', 10.771217779615, 106.69488446787, 6, '[{\"lat\":10.771249399035641,\"lng\":106.6935326345265},{\"lat\":10.771523433875949,\"lng\":106.69325368478896},{\"lat\":10.771418035889965,\"lng\":106.69300692155959},{\"lat\":10.771228319422228,\"lng\":106.69309275224806}]'),
(32, 'Nguyễn Trãi', '02', 10.770969435299, 106.69273853302, 7, '[{\"lat\":10.76877253436051,\"lng\":106.68969171121718}]'),
(33, 'Nhà Thờ Huyệt Sĩ', '02', 10.767792322715, 106.68873684481, 8, '[{\"lat\":10.767191546259914,\"lng\":106.68839352205397},{\"lat\":10.766727788176691,\"lng\":106.68823258951308}]'),
(34, 'Chợ Thái Bình', '02', 10.766875347644, 106.68780343607, 9, '[{\"lat\":10.76834039843697,\"lng\":106.68435947969557}]'),
(35, 'Trung Ưng Hội Chữ Thập Đỏ Thành Phố', '02', 10.766495908867, 106.68262140825, 10, '[{\"lat\":10.766074309666058,\"lng\":106.6822566278279}]'),
(36, 'Chợ Bàn Cũ', '02', 10.767655303629, 106.68028252199, 11, '[{\"lat\":10.770553771013542,\"lng\":106.6767098195851}]'),
(37, 'Cao Thắng', '02', 10.771165080573, 106.67729990557, 12, '[{\"lat\":10.772714428554245,\"lng\":106.67902724817397}]'),
(38, 'Cao Thắng 2', '02', 10.773357352927, 106.67830841616, 13, '[{\"lat\":10.773810561086734,\"lng\":106.67772905901076}]'),
(39, 'Học Viện Hành Chính Quốc Gia', '02', 10.773462750235, 106.67710678652, 14, '[]'),
(40, 'Nhà Hát Hòa Bình', '02', 10.77190286632, 106.67457478121, 15, '[]'),
(41, 'Nhà Thờ Vĩnh Sơn', '02', 10.769921380508, 106.67123811319, 16, '[]'),
(42, 'Bệnh Viện Nhi Đồng 1', '02', 10.769373307663, 106.67036907747, 17, '[]'),
(43, 'Ngã 3 Nguyễn Kim', '02', 10.764535467575, 106.6612710245, 18, '[]'),
(44, 'Nhà Sách Phương Nam', '02', 10.763312820313, 106.65887849405, 19, '[]'),
(45, 'Lê Đại Hành', '02', 10.76181612467, 106.65617482737, 20, '[]'),
(46, 'Tạ Uyên', '02', 10.760530225296, 106.6538037546, 21, '[]'),
(47, 'Xóm Đất', '02', 10.758696228175, 106.6504134424, 22, '[]'),
(48, 'Hàn Hải Nguyên', '02', 10.757294372279, 106.64790289477, 23, '[]'),
(49, 'Vòng Xoay Cây Gỗ', '02', 10.755344411512, 106.64428727701, 24, '[{\"lat\":10.75464874678162,\"lng\":106.64317147806288}]'),
(50, 'Chợ Minh Phụng', '02', 10.750843643132, 106.64255993441, 25, '[{\"lat\":10.749800129869099,\"lng\":106.64230244234206}]'),
(51, 'Cầu Hậu Giang', '02', 10.749357426183, 106.64015667513, 26, '[]'),
(52, 'Nguyễn Văn Luông', '02', 10.74800822999, 106.63492100313, 27, '[]'),
(53, 'Trường THCS Lam Sơn', '02', 10.745868476787, 106.62641303614, 28, '[]'),
(54, 'Mũi Tàu Phú Lâm', '02', 10.745425767334, 106.62458913401, 29, '[{\"lat\":10.745341441650137,\"lng\":106.62402050569655},{\"lat\":10.745678744243476,\"lng\":106.62383811548354},{\"lat\":10.745599030188039,\"lng\":106.62348389625551}]'),
(55, 'Vòng Xoay Kinh Dương Vương', '02', 10.744719539006, 106.62250773981, 30, '[]'),
(56, 'Bến Xe Miền Tây', '02', 10.742368946255, 106.61971824244, 31, '[]'),
(57, '428 Kinh Dương Vương', '02', 10.741409730504, 106.61843078211, 32, '[]'),
(58, 'Bến Xe Miền Tây', '02', 10.74090376932, 106.61849515513, 33, 'null'),
(59, 'Bến Xe Buýt Sài Gòn', '03', 10.767370725328, 106.68894069269, 1, '[{\"lat\":10.766995898405598,\"lng\":106.68910145759584}]'),
(60, 'Tôn Thất Tùng', '03', 10.767708003285, 106.69088261202, 2, '[]'),
(61, 'Nguyễn Thị Nghĩa', '03', 10.768350938345, 106.69253485277, 3, '[]'),
(62, 'Trường THPT Ernst', '03', 10.769436546889, 106.6952492483, 4, '[{\"lat\":10.769784362390585,\"lng\":106.69619338586928},{\"lat\":10.769162510149634,\"lng\":106.69652597978713},{\"lat\":10.770163797025617,\"lng\":106.69744865968825},{\"lat\":10.770874576939274,\"lng\":106.69905781745912}]'),
(63, 'Trạm Trung Chuyển Đường Hàm Nghi(03)', '03', 10.770764567554, 106.70193331316, 5, '[]'),
(64, 'Chợ Cũ(03)', '03', 10.770701328607, 106.70309202746, 6, '[]'),
(65, 'Hồ Tùng Mậu', '03', 10.770606470162, 106.70458333567, 7, '[{\"lat\":10.769447086758197,\"lng\":106.70504467561842},{\"lat\":10.769436546888592,\"lng\":106.70554893091322},{\"lat\":10.769605184757895,\"lng\":106.70614974573256},{\"lat\":10.77057485067418,\"lng\":106.70641796663405}]'),
(66, 'Bến Bạch Đằng(03)', '03', 10.773852719951, 106.70664327219, 8, '[{\"lat\":10.77585987027938,\"lng\":106.70671820640565},{\"lat\":10.775691235912708,\"lng\":106.70606374740602}]'),
(67, 'Cổng Trường Mê Linh(03)', '03', 10.776044972737, 106.70569913462, 9, '[]'),
(68, 'Nhà Hát Hòa Bình', '03', 10.778005339112, 106.70351045206, 10, '[]'),
(69, 'Bệnh Viện Nhi Đồng 2', '03', 10.779607349465, 106.70165436342, 11, '[]'),
(70, 'Bưu Điện Thành Phố', '03', 10.780461048867, 106.70080678537, 12, '[]'),
(71, 'Sở Công Thương', '03', 10.782263295207, 106.69876830652, 13, '[]'),
(72, 'Công Viên Lê Văn Tám', '03', 10.787343253097, 106.6926314123, 14, '[]'),
(73, 'Nhà Thờ Tân Định', '03', 10.788924135348, 106.69061439112, 15, '[]'),
(74, 'Chợ Tân Định', '03', 10.790505009288, 106.68864028528, 16, '[{\"lat\":10.793123313464285,\"lng\":106.68535709381104},{\"lat\":10.796090697289046,\"lng\":106.6816450841725}]'),
(75, 'Trương Cao Đẳng Kinh Tế Đối Ngoại', '03', 10.798303865702, 106.68066876009, 17, '[]'),
(76, 'Ngã Tư Phú Nhuận', '03', 10.800401091199, 106.67978899553, 18, '[]'),
(77, 'Nhà Truyền Thống', '03', 10.802308605191, 106.67915599421, 19, '[]'),
(78, 'Ngã 3 Hồ Văn Huê', '03', 10.805080275197, 106.67871611193, 20, '[]'),
(79, 'Coop Mart Nguyễn Kiệm', '03', 10.807999458903, 106.67850153521, 21, '[]'),
(80, 'Chùa Vạn Hạnh', '03', 10.810096616676, 106.67850153521, 22, '[]'),
(81, 'Trường Cao Đẳng Hải Quan', '03', 10.813173826673, 106.67868392542, 23, '[{\"lat\":10.813532129895519,\"lng\":106.67876975610854},{\"lat\":10.813637513114708,\"lng\":106.6791238076985},{\"lat\":10.813922047621581,\"lng\":106.6791774518788},{\"lat\":10.81420658185854,\"lng\":106.6790701635182},{\"lat\":10.814333041432779,\"lng\":106.67890923097731}]'),
(82, 'Cầu Vượt Nguyễn Thái Sơn - Nguyễn Kiệm', '03', 10.815313101325, 106.67967097834, 24, '[]'),
(83, 'Ngã 3 Phạm Ngũ Lão', '03', 10.819686447832, 106.68316857889, 25, '[{\"lat\":10.820287119357747,\"lng\":106.68358700349928}]'),
(84, 'Cầu Vượt Ngã 6 Gò Vấp', '03', 10.825229441125, 106.68082969263, 26, '[{\"lat\":10.82827488239077,\"lng\":106.67911307886244}]'),
(85, 'Ngã 4 Phan Văn Trị', '03', 10.83001361525, 106.67815821245, 27, '[{\"lat\":10.832057930670455,\"lng\":106.67683856561781},{\"lat\":10.835061152238408,\"lng\":106.6755940206349}]'),
(86, 'Cư Xá Lam Sơn', '03', 10.836167594695, 106.67555110529, 28, '[]'),
(87, 'Đài Liệt Sĩ', '03', 10.839065400794, 106.67566912249, 29, '[]'),
(88, 'Ngã 4 An Nhơn', '03', 10.84165759629, 106.67653815821, 30, '[]'),
(89, 'Bến Đò', '03', 10.847136960001, 106.67853372172, 31, '[]'),
(90, 'Nhà Hàng Bến Xưa', '03', 10.853469714896, 106.67929546908, 32, '[]'),
(91, 'Ngã 4 Ga', '03', 10.857273518137, 106.67978899553, 33, '[]'),
(92, 'Đình Thần Giao Khẩu', '03', 10.862130936068, 106.6803147085, 34, '[{\"lat\":10.864227714621665,\"lng\":106.68056147173048},{\"lat\":10.866039993767615,\"lng\":106.68012158945204},{\"lat\":10.867625070468048,\"lng\":106.67890906333925},{\"lat\":10.868668174098422,\"lng\":106.67778253555299},{\"lat\":10.870033290954778,\"lng\":106.67709605768324},{\"lat\":10.873946854730512,\"lng\":106.6767740249634},{\"lat\":10.873857955568019,\"lng\":106.67675273492934},{\"lat\":10.875080152102264,\"lng\":106.6768171079457},{\"lat\":10.877071478830109,\"lng\":106.67750375345351},{\"lat\":10.878894215976292,\"lng\":106.67834060266615},{\"lat\":10.881532818972907,\"lng\":106.67944550514221}]'),
(93, 'Trường Tiểu Học Hà Huy Giáp', '03', 10.878588671221, 106.68093698099, 35, '[{\"lat\":10.878061869182151,\"lng\":106.68121593073012}]'),
(94, 'Thạnh Lộc', '03', 10.878877753444, 106.68297529221, 36, 'null'),
(95, 'Bến Xe Buýt Sài Gòn(04)', '04', 10.767364796611, 106.68880105019, 1, '[{\"lat\":10.766991287175172,\"lng\":106.68902652338149}]'),
(96, 'Tôn Thất Tùng(04)', '04', 10.767665843561, 106.69088261202, 2, '[]'),
(97, 'Nguyễn Thị Nghĩa(04)', '04', 10.768350938345, 106.69243829325, 3, '[]'),
(98, 'Trường THPT Ernst Thalmann(04)', '04', 10.769468166496, 106.69530289248, 4, '[{\"lat\":10.769752742816081,\"lng\":106.69619338586928},{\"lat\":10.769088730984999,\"lng\":106.69651525095107},{\"lat\":10.770163797025617,\"lng\":106.69743793085219},{\"lat\":10.770874576939274,\"lng\":106.69910073280336}]'),
(99, 'Trạm Trung Chuyển Hàm Nghi(04)', '04', 10.770737559255, 106.70191168785, 5, '[{\"lat\":10.770680248955243,\"lng\":106.70259850099684}]'),
(100, 'Đền Thờ Ấn Giáo Pasteur', '04', 10.773673544738, 106.70130031183, 6, '[{\"lat\":10.776772206914204,\"lng\":106.69995920732619}]'),
(101, 'Lý Tự Trọng', '04', 10.777225409933, 106.69951932505, 7, '[]'),
(102, 'Nguyễn Thị Minh Khai', '04', 10.780039469218, 106.69638650492, 8, '[]'),
(103, 'Đại Học Kiến Trúc', '04', 10.78211574328, 106.694090534, 9, '[]'),
(104, 'Điện Biên Phủ', '04', 10.78342724023, 106.69266343117, 10, '[]'),
(105, 'Võ Thị Sáu', '04', 10.784803284876, 106.69124739245, 11, '[{\"lat\":10.785878294790756,\"lng\":106.69004576280715}]'),
(106, 'Nhà Thiếu Nhi Thành Phố', '04', 10.785562115803, 106.68968098238, 12, '[{\"lat\":10.78513000398191,\"lng\":106.68914454057814}]'),
(107, 'Viện Pasteur', '04', 10.785783441129, 106.68837206438, 13, '[]'),
(108, 'Lý Chính Thắng', '04', 10.7891454582, 106.68465988711, 14, '[{\"lat\":10.790705252727593,\"lng\":106.68294327333571},{\"lat\":10.793002773169095,\"lng\":106.68005721643569}]'),
(109, 'Ngã 4 Trần Huy Liệu', '04', 10.793687810269, 106.67887704447, 15, '[]'),
(110, 'Trung Tâm Văn Hóa Quận Phú Nhuận', '04', 10.795447821504, 106.6759695299, 16, '[]'),
(111, 'Cổng Xe Lửa', '04', 10.797144589043, 106.67307274416, 17, '[]'),
(112, 'Bệnh Viện Quận Phú Nhuận', '04', 10.798472487389, 106.67072312906, 18, '[]'),
(113, 'Cổng Trước Sân Văn Động Quân Khu 7', '04', 10.800875336141, 106.66659252718, 19, '[]'),
(114, 'Công Viên Hoàng Văn Thụ', '04', 10.802287527754, 106.66422145441, 20, '[{\"lat\":10.802624766560442,\"lng\":106.66358845308424},{\"lat\":10.800854258604078,\"lng\":106.66170017793776}]'),
(115, 'Siêu Thị Maximart Cộng Hòa', '04', 10.80097018504, 106.65888922289, 21, '[]'),
(116, 'Nhà Hát Quân Đội', '04', 10.801149343988, 106.65702240542, 22, '[]'),
(117, 'Ngân Hàng Quận Đội', '04', 10.801317964078, 106.65501611307, 23, '[]'),
(118, 'Công Ty Lô Hội', '04', 10.801697358933, 106.65093915537, 24, '[]'),
(119, 'Ngã 4 Hoàng Hoa Thám', '04', 10.802013520946, 106.64690511301, 25, '[]'),
(120, 'E Town', '04', 10.802445608492, 106.64102571085, 26, '[{\"lat\":10.802909311508364,\"lng\":106.63878338411452}]'),
(121, 'Bãi Hậu Cần 2', '04', 10.803931563356, 106.63782851771, 27, '[]'),
(122, 'Thượng Uyển', '04', 10.805702053167, 106.63660543039, 28, '[{\"lat\":10.807493609608507,\"lng\":106.6348351724446}]'),
(123, 'Mũi Tàu Cộng Hòa', '04', 10.808231306212, 106.63454549387, 29, '[]'),
(124, 'Ngã 3 Chế Lan Viên', '04', 10.811076690408, 106.63373010233, 30, '[]'),
(125, 'Siêu Thị Coopmart Thắng Lợi', '04', 10.817188905952, 106.6315199621, 31, '[]'),
(126, 'Siêu Thị Tân Bình', '04', 10.822173430886, 106.63035051897, 32, '[{\"lat\":10.823295069298105,\"lng\":106.62970662117006},{\"lat\":10.824791458811935,\"lng\":106.62806510925294}]'),
(127, 'Cầu Tham Lương - Siêu Thị Thiên Hòa', '04', 10.826409685013, 106.62624137476, 33, '[]'),
(128, 'Chùa Vĩnh Phước', '04', 10.830825020463, 106.62307636812, 34, '[]'),
(129, 'Chùa Lạc Quang', '04', 10.834397284801, 106.62082331255, 35, '[]'),
(130, 'Bitis', '04', 10.839392060813, 106.61758320406, 36, '[]'),
(131, 'Ngã 4 An Sương', '04', 10.840572248877, 106.61678927019, 37, '[]'),
(132, 'Bến Xe An Xương', '04', 10.844165471369, 106.61448257044, 38, '[{\"lat\":10.846652251104683,\"lng\":106.61294834688307},{\"lat\":10.846504730849881,\"lng\":106.61272304132582},{\"lat\":10.844323530018695,\"lng\":106.61411779001357}]'),
(133, 'Bến Xe An Xương Đích', '04', 10.84350162413, 106.6138173826, 39, 'null'),
(134, 'Bến Xe Buýt Biên Hòa', '05', 10.954312025104, 106.80918948725, 1, '[{\"lat\":10.95476495864352,\"lng\":106.8086530454457},{\"lat\":10.953705698742876,\"lng\":106.80783748626709},{\"lat\":10.94958251488886,\"lng\":106.80655019357802},{\"lat\":10.942497983361893,\"lng\":106.80436134338379},{\"lat\":10.938537260751565,\"lng\":106.80401802062988},{\"lat\":10.925854165404173,\"lng\":106.80599212646486},{\"lat\":10.912706996182495,\"lng\":106.79700136184692},{\"lat\":10.90541680868198,\"lng\":106.79436206817628},{\"lat\":10.89424941194855,\"lng\":106.79105758666992},{\"lat\":10.892521588605959,\"lng\":106.78977012634279},{\"lat\":10.891341605927009,\"lng\":106.78801059722902},{\"lat\":10.890667328011062,\"lng\":106.78457736968996},{\"lat\":10.889255553679906,\"lng\":106.77844047546388},{\"lat\":10.888813055870244,\"lng\":106.77693843841554},{\"lat\":10.885926268312529,\"lng\":106.77271127700807}]'),
(135, 'Chùa Từ Quang', '05', 10.885163082346, 106.77219646052, 2, '[]'),
(136, 'Đường số 8', '05', 10.881759999821, 106.76937477663, 3, '[{\"lat\":10.880632654316459,\"lng\":106.76834480836989},{\"lat\":10.878757247676237,\"lng\":106.76675694063307}]'),
(137, 'Chợ Linh Xuân', '05', 10.877134695334, 106.7665101774, 4, '[{\"lat\":10.873805274570332,\"lng\":106.76526563242079},{\"lat\":10.873425971112303,\"lng\":106.7650510556996}]'),
(138, 'Cầu Vượt Linh Xuân', '05', 10.875438381172, 106.75832407549, 5, '[]'),
(139, 'Bến Xe Lam Hồng', '05', 10.875975723969, 106.75559895113, 6, '[{\"lat\":10.876243736497653,\"lng\":106.75368905067445}]'),
(140, 'Cầu Vượt Sóng Thần', '05', 10.874121360417, 106.74687640741, 7, '[{\"lat\":10.872482319965204,\"lng\":106.74196243286134},{\"lat\":10.87181985268703,\"lng\":106.73842225223781}]'),
(141, 'Chợ Tam Bình', '05', 10.87079651565, 106.73459172249, 8, '[]'),
(142, 'Chợ Đầu Mối Nông Sản Thủ Đức', '05', 10.868010308029, 106.72924892977, 9, '[{\"lat\":10.86549802335935,\"lng\":106.72419581562282},{\"lat\":10.865620839340043,\"lng\":106.72384151257576},{\"lat\":10.865541815658528,\"lng\":106.7235786560923},{\"lat\":10.865278403235738,\"lng\":106.72351964749397},{\"lat\":10.864975149396138,\"lng\":106.72364830970766},{\"lat\":10.864890857286133,\"lng\":106.72391653060915}]'),
(143, 'Ngã 4 Bình Phước', '05', 10.863945532813, 106.7244745139, 10, '[{\"lat\":10.863231351523364,\"lng\":106.72479629516602},{\"lat\":10.86239435126818,\"lng\":106.72481792047621}]'),
(144, 'Hồ Bơi Mèo Mun', '05', 10.860455609959, 106.72408835962, 11, '[]'),
(145, 'Trạm Y Tế Huyện Bình Phước', '05', 10.856514868725, 106.72260778025, 12, '[{\"lat\":10.854076245631473,\"lng\":106.72177109867336}]'),
(146, 'Ngã 3 Hiệp Bình', '05', 10.850903305749, 106.71971082687, 13, '[{\"lat\":10.848669451572727,\"lng\":106.71842336654665}]'),
(147, 'Cân Nhơn Hòa', '05', 10.844692333209, 106.71818749979, 14, '[{\"lat\":10.84259080751403,\"lng\":106.71808037906887}]'),
(148, 'Đường Số 3', '05', 10.839529047166, 106.7157198675, 15, '[{\"lat\":10.837611232513732,\"lng\":106.71414272859694}]'),
(149, 'Cầu Ông Dầu', '05', 10.835556417463, 106.71384232119, 16, '[]'),
(150, 'Trạm Xăng Dầu', '05', 10.833322448687, 106.71391742304, 17, '[]'),
(151, 'UBND PHường Hiệp Bình Chánh', '05', 10.830487813369, 106.7141427286, 18, '[{\"lat\":10.8268733509821,\"lng\":106.71423928812148},{\"lat\":10.825988169872053,\"lng\":106.71388523653151},{\"lat\":10.825387509772273,\"lng\":106.71396033838393},{\"lat\":10.82343799062634,\"lng\":106.71360628679396},{\"lat\":10.817700666623693,\"lng\":106.71269450336696}]'),
(152, 'Cổng Vào Bến Xe Miền Đông', '05', 10.816118618584, 106.7108809948, 19, '[]'),
(153, 'Ngã 4 Nguyễn Xí', '05', 10.812815523023, 106.70934693888, 20, '[]'),
(154, 'Ngã 4 Chu Văn An', '05', 10.810844845298, 106.70916454867, 21, '[]'),
(155, 'Cầu Định Bộ Lĩnh', '05', 10.808557999842, 106.70925037935, 22, '[{\"lat\":10.805959590063567,\"lng\":106.7095184326172},{\"lat\":10.803025237150571,\"lng\":106.70940058305861}]'),
(156, 'Chợ Hàng Xanh', '05', 10.802919850205, 106.7103661783, 23, '[{\"lat\":10.802835540621821,\"lng\":106.71139614656569},{\"lat\":10.801634126490201,\"lng\":106.71126740053298},{\"lat\":10.80138119658687,\"lng\":106.71105282381178},{\"lat\":10.801022878859163,\"lng\":106.7112352140248}]'),
(157, 'Trường Trung Học Gia Định', '05', 10.800443246336, 106.71120302752, 24, '[]'),
(158, 'Trường Tiểu Học Hồng Hà', '05', 10.797381055497, 106.71072006226, 25, '[{\"lat\":10.79587925981074,\"lng\":106.71014070510864}]'),
(159, 'Ngã 3 Nguyễn Cửu Vân', '05', 10.795118149525, 106.7095667962, 26, '[]'),
(160, 'Nhà Thờ Thị Nghè', '05', 10.793589994971, 106.70809694566, 27, '[]'),
(161, 'Thảo Cầm Viên', '05', 10.790673635351, 106.70545237139, 28, '[]'),
(162, 'Đài Truyền Hình', '05', 10.787158157589, 106.70212626457, 29, '[]'),
(163, 'Nhà Thờ Mạc Ti Nho', '05', 10.786162855596, 106.70121448115, 30, '[{\"lat\":10.783791507328617,\"lng\":106.69886486604811}]'),
(164, 'Phùng Khắc Khoan', '05', 10.784192003015, 106.69837133959, 31, '[{\"lat\":10.78471897021025,\"lng\":106.69780271127821}]'),
(165, 'Hồ Con Rùa', '05', 10.783543173387, 106.69672429562, 32, '[{\"lat\":10.78302674352586,\"lng\":106.69623076915742},{\"lat\":10.783089979883037,\"lng\":106.69588208198549},{\"lat\":10.782977010756465,\"lng\":106.69563540257515},{\"lat\":10.782681907531833,\"lng\":106.6955334786326},{\"lat\":10.782381534309488,\"lng\":106.69561930932107}]'),
(166, 'Sân Phan Đình Phùng', '05', 10.781019640992, 106.69434802607, 33, '[]'),
(167, 'Bảo Tàn Chiến Tích Chiến Tranh', '05', 10.77910145238, 106.69258849695, 34, '[]'),
(168, 'Trần Quốc Thảo', '05', 10.778020489743, 106.69151544571, 35, '[]'),
(169, 'Đại Học Mở Thành Phố Hồ Chí Minh', '05', 10.776656271149, 106.69034617022, 36, '[{\"lat\":10.77574986271495,\"lng\":106.6896058805287}]'),
(170, 'Nguyễn Thị Minh Khai(05)', '05', 10.77523341948, 106.69016378, 37, '[{\"lat\":10.774769673779334,\"lng\":106.69063584879042}]'),
(171, 'Cách Mạng Tháng 8', '05', 10.773399511855, 106.68912308291, 38, '[]'),
(172, 'Tôn Thất Tùng (05)', '05', 10.771797468467, 106.68773906305, 39, '[]'),
(173, 'Bệnh Viện Từ Dũ', '05', 10.769046571454, 106.68508904055, 40, '[]'),
(174, 'Trung Ương Chữ Thập Đỏ Thành Phố(05)', '05', 10.766401049099, 106.68258922175, 41, '[{\"lat\":10.765663249876798,\"lng\":106.68187038972975},{\"lat\":10.765652709874832,\"lng\":106.6815914399922},{\"lat\":10.76557300109801,\"lng\":106.68134450912477},{\"lat\":10.765383280949328,\"lng\":106.68133378028871},{\"lat\":10.762221260888085,\"lng\":106.67643070220949}]'),
(175, 'Chợ Lê Hồng Phong', '05', 10.764356286821, 106.67560474947, 42, '[{\"lat\":10.765473529784947,\"lng\":106.67516486719252},{\"lat\":10.764693568152431,\"lng\":106.67216079309584},{\"lat\":10.760049987903981,\"lng\":106.6690492630005},{\"lat\":10.7599129652979,\"lng\":106.66868448257448}]'),
(176, 'Nguyễn Tiểu La', '05', 10.759497285761, 106.66694657877, 43, '[]'),
(177, 'Ngã 4 Ngô Quyền', '05', 10.759175150195, 106.66521906853, 44, '[]'),
(178, 'Bênh Viện Chợ Rẫy', '05', 10.757789765708, 106.65858881548, 45, '[{\"lat\":10.757705443479843,\"lng\":106.65823476389052},{\"lat\":10.754632277426719,\"lng\":106.65829896926881}]'),
(179, 'Rạp Đại Quang', '05', 10.752661218539, 106.6586959362, 46, '[]'),
(180, 'Bưu Điện Quận 5(05)', '05', 10.751223101606, 106.6589214094, 47, '[{\"lat\":10.750790940528656,\"lng\":106.65905015543105}]'),
(181, 'Hải Thượng Lãn Ông(05)', '05', 10.750822562092, 106.65830986574, 48, '[]'),
(182, 'Chợ Kim Biên(05)', '05', 10.750980669858, 106.65574567392, 49, '[{\"lat\":10.751033372428697,\"lng\":106.65394322946669},{\"lat\":10.751613100095565,\"lng\":106.65325658395888}]'),
(183, 'Bến Xe Chợ Lớn(05)', '05', 10.751275804134, 106.65218370035, 50, 'null'),
(184, 'Bến Xe Chợ Lớn(06)', '06', 10.751220137088, 106.65225335397, 1, '[{\"lat\":10.751019867395913,\"lng\":106.65224798955025},{\"lat\":10.750988245853359,\"lng\":106.65048309601845},{\"lat\":10.753280799099018,\"lng\":106.65072985924782}]'),
(185, 'Bưu Điện An Dương Vương', '06', 10.753307150184, 106.65159353055, 2, '[]'),
(186, 'Thuận Kiều Plaza', '06', 10.754490640937, 106.65802018717, 3, '[]'),
(187, 'Bệnh Viện Chợ Rẫy(06)', '06', 10.75481146396, 106.65945768356, 4, '[]'),
(188, 'Đại Học Y Dược', '06', 10.755327942195, 106.66296601295, 5, '[]'),
(189, 'Bệnh Viện Đại Học Y Dược', '06', 10.75560792046, 106.66460769251, 6, '[]'),
(190, 'Bệnh Viện Nguyễn Tri Phương', '06', 10.756740347545, 106.6705083847, 7, '[]'),
(191, 'Chợ An Đông', '06', 10.757231130506, 106.673083473, 8, '[{\"lat\":10.757414926871618,\"lng\":106.67410254478456}]'),
(192, 'Huỳnh Mẫn Đạt', '06', 10.75844787354, 106.67652726173, 9, '[]'),
(193, 'Chợ Bầu Sen', '06', 10.759328642235, 106.67870538309, 10, '[]'),
(194, 'Đại Học Sài Gòn', '06', 10.760783189541, 106.68251411989, 11, '[{\"lat\":10.761131015030752,\"lng\":106.68346898630263}]'),
(195, 'Đại Học Khoa Học Tự Nhiên', '06', 10.762058547708, 106.68310420588, 12, '[]'),
(196, 'Trường Lê Hồng Phong', '06', 10.764577627737, 106.68208496645, 13, '[{\"lat\":10.765231109493753,\"lng\":106.68190257623793},{\"lat\":10.765589469855282,\"lng\":106.68191330507399}]'),
(197, 'Phan Viết Chánh', '06', 10.766184320765, 106.68248176575, 14, '[]'),
(198, 'Bệnh Viện Từ Dũ(06)', '06', 10.768835773712, 106.68503539637, 15, '[]'),
(199, 'Tôn Thất Tùng(06)', '06', 10.771765849104, 106.68779270723, 16, '[]'),
(200, 'Sở Y Tế', '06', 10.774221609758, 106.69008867815, 17, '[]'),
(201, 'Nhà Văn Hóa Lao Động', '06', 10.777172711943, 106.69280307367, 18, '[]'),
(202, 'Pasteur(06)', '06', 10.780851009516, 106.69621484354, 19, '[]'),
(203, 'Ngã 4 Mạc Đĩnh Chi', '06', 10.784813824207, 106.69996993616, 20, '[]'),
(204, 'Đinh Tiên Hoàng', '06', 10.786099619884, 106.70123593882, 21, '[]'),
(205, 'Thảo Cầm Viên(06)', '06', 10.790631478844, 106.70545237139, 22, '[]'),
(206, 'Nguyễn Thị Nghè(06)', '06', 10.793150319753, 106.70788781717, 23, '[]'),
(207, 'Trung Tâm Dưỡng Lão', '06', 10.796069619416, 106.7103339918, 24, '[]'),
(208, 'Trung Tâm Học Gia Định', '06', 10.799758224638, 106.71120302752, 25, '[{\"lat\":10.800818031583791,\"lng\":106.71134267002346},{\"lat\":10.80107557266946,\"lng\":106.71137468889357},{\"lat\":10.801296886571755,\"lng\":106.71159999445082}]'),
(209, 'Đại Học Hutech', '06', 10.80113880523, 106.71314494684, 26, '[{\"lat\":10.8004643239016,\"lng\":106.71562330797316},{\"lat\":10.800495940247687,\"lng\":106.71594517305495},{\"lat\":10.800243009385788,\"lng\":106.71641724184157}]'),
(210, 'Khu Du Lịch Văn Thánh', '06', 10.799863612694, 106.71687858179, 27, '[]'),
(211, 'Cầu Sài Gòn', '06', 10.798430331976, 106.71958224848, 28, '[{\"lat\":10.79769261129374,\"lng\":106.72122376039626},{\"lat\":10.797766383443498,\"lng\":106.72242539003493},{\"lat\":10.798820269319007,\"lng\":106.7284549959004}]'),
(212, 'Cầu Đen', '06', 10.8000533111, 106.73433439806, 29, '[]'),
(213, 'Metro Quận 2', '06', 10.801476045326, 106.74202697352, 30, '[{\"lat\":10.802002982217376,\"lng\":106.74489157274367},{\"lat\":10.801950288569808,\"lng\":106.74602882936598},{\"lat\":10.802034598401484,\"lng\":106.7465545423329}]'),
(214, 'Ngã 3 Cát Lát', '06', 10.802603689146, 106.74791710451, 31, '[{\"lat\":10.803251160290612,\"lng\":106.7503845691681},{\"lat\":10.804241795026044,\"lng\":106.75235867500305},{\"lat\":10.805375356427978,\"lng\":106.75365703180434},{\"lat\":10.807019375120518,\"lng\":106.75503032281996},{\"lat\":10.809717232435741,\"lng\":106.75641434267165},{\"lat\":10.813015751586345,\"lng\":106.75707953050734},{\"lat\":10.81678845426398,\"lng\":106.75783054903151},{\"lat\":10.818811783633606,\"lng\":106.75818460062148},{\"lat\":10.821024784497098,\"lng\":106.7585493810475},{\"lat\":10.823501218473321,\"lng\":106.75942914560439}]'),
(215, 'Ngã 4 Tây Hòa(RMK)', '06', 10.825861715214, 106.76062004641, 32, '[]'),
(216, 'Khu QLGTDT Số 2', '06', 10.830260593531, 106.76316261292, 33, '[{\"lat\":10.835866616408204,\"lng\":106.76620960235597},{\"lat\":10.837668530038957,\"lng\":106.7673146724701}]'),
(217, 'Tu Viện Quảng Đức', '06', 10.839571196801, 106.76627414301, 34, '[{\"lat\":10.840650620575351,\"lng\":106.76565170288087},{\"lat\":10.841040503007003,\"lng\":106.76508307456972}]'),
(218, 'Công Ty Sanofi Aventis', '06', 10.841604909614, 106.76416056231, 35, '[{\"lat\":10.842079089370001,\"lng\":106.76347391679884}]'),
(219, 'Công Ty Mai Sài Gòn', '06', 10.84394418912, 106.76244394854, 36, '[{\"lat\":10.844639647066863,\"lng\":106.76185386255385},{\"lat\":10.846030558109424,\"lng\":106.76138179376723}]'),
(220, 'Trường Mầm Non Vành Khuyên', '06', 10.847906170332, 106.76002996042, 37, '[{\"lat\":10.848648377397248,\"lng\":106.75918221473695},{\"lat\":10.849238453749242,\"lng\":106.75881743431093}]'),
(221, 'Làng Trẻ SOS', '06', 10.849813381932, 106.75872104242, 38, '[{\"lat\":10.85060365941606,\"lng\":106.7586030252278}]'),
(222, 'Ngã 3 Chương Dương', '06', 10.850572048357, 106.76001923159, 39, '[{\"lat\":10.850424530036076,\"lng\":106.76175730302931},{\"lat\":10.85087169472166,\"lng\":106.76279783248901}]'),
(223, 'Cao Đẳng Xây Dựng 2', '06', 10.85064580749, 106.76486866549, 40, '[{\"lat\":10.850287548673062,\"lng\":106.76732556894423},{\"lat\":10.849771233740652,\"lng\":106.76785128191115}]'),
(224, 'Siêu Thị Nguyễn Kim', '06', 10.849697474392, 106.76903145388, 41, '[]'),
(225, 'Trường Đại Học Sư Phạm Kỷ Thuật', '06', 10.849665863237, 106.77203552797, 42, '[{\"lat\":10.8495710297514,\"lng\":106.77337663248183},{\"lat\":10.849143620128364,\"lng\":106.77411675453187}]'),
(226, 'Công An Quận 9', '06', 10.849897678296, 106.77496450022, 43, '[{\"lat\":10.851535525598532,\"lng\":106.77708864212038},{\"lat\":10.852689981935352,\"lng\":106.779170203954},{\"lat\":10.854443719680237,\"lng\":106.78206682205202}]'),
(227, 'Trạm Hutech Khu Công Nghệ Cao', '06', 10.856666993892, 106.78628325462, 44, '[]'),
(228, 'Khu Công Nghệ Cao Quận 9', '06', 10.858348268173, 106.78875105456, 45, '[{\"lat\":10.86299493705491,\"lng\":106.7965509183705},{\"lat\":10.862847424868338,\"lng\":106.79709808900954},{\"lat\":10.862425961076548,\"lng\":106.79739849641919},{\"lat\":10.862004496689842,\"lng\":106.79739849641919},{\"lat\":10.861608714747577,\"lng\":106.79689407348634},{\"lat\":10.861735154293646,\"lng\":106.79619669914247},{\"lat\":10.864084812782087,\"lng\":106.79470539093019},{\"lat\":10.86633501491279,\"lng\":106.79225938394667},{\"lat\":10.867220076598658,\"lng\":106.78941624239089},{\"lat\":10.867199003731876,\"lng\":106.78781764581801}]'),
(229, 'Đại Học Nông Lâm', '06', 10.867873334731, 106.78772108629, 46, 'null'),
(230, 'Bến Xe Chợ Lớn(07)', '07', 10.751248794089, 106.65215134621, 1, '[{\"lat\":10.75100175088757,\"lng\":106.6521622426808},{\"lat\":10.751043912941665,\"lng\":106.64956586435439},{\"lat\":10.749673643167784,\"lng\":106.64945857599379},{\"lat\":10.750247444392802,\"lng\":106.65248394012453}]'),
(231, 'Chợ Kim Biên(07)', '07', 10.750742849395, 106.65456533432, 2, '[{\"lat\":10.75076393044077,\"lng\":106.655992269516},{\"lat\":10.750711227823315,\"lng\":106.65742993354797},{\"lat\":10.750643373189776,\"lng\":106.65893213823439},{\"lat\":10.750569589493296,\"lng\":106.65917890146376},{\"lat\":10.75069607581909,\"lng\":106.65935056284071}]'),
(232, 'Bưu Điện Quận 5(07)', '07', 10.751244182618, 106.65921108797, 3, '[]'),
(233, 'Rạp Đại Quang(07)', '07', 10.753236331637, 106.65878193453, 4, '[{\"lat\":10.754437938970941,\"lng\":106.65843861177565}]'),
(234, 'Bệnh Viện Chợ Rẫy(07)', '07', 10.75450118133, 106.65895359591, 5, '[]'),
(235, 'Đại Học Y Dược(07)', '07', 10.755327942195, 106.66297674179, 6, '[]'),
(236, 'Bệnh Viện Đại Học Y Dược(07)', '07', 10.755629001166, 106.66462915018, 7, '[{\"lat\":10.756729807231544,\"lng\":106.66967153549194}]'),
(237, 'Công Viên Văn Lang', '07', 10.757094106619, 106.66958587244, 8, '[]'),
(238, 'Trường Trần Khai Nguyên', '07', 10.759181079073, 106.66910307482, 9, '[{\"lat\":10.75976079108065,\"lng\":106.66899578645827},{\"lat\":10.759908353959107,\"lng\":106.66904943063857},{\"lat\":10.760055916765339,\"lng\":106.66887776926161}]'),
(239, 'Trường Đại Hoc Kinh Tế', '07', 10.761067774062, 106.66863100603, 10, '[]'),
(240, 'Trường Hoàng Văn Thụ', '07', 10.763544702071, 106.66810529307, 11, '[]'),
(241, 'Chợ Nhật Tảo', '07', 10.765315429617, 106.66770832613, 12, '[]'),
(242, 'Học Viện Quân Y', '07', 10.767043986947, 106.66734354571, 13, '[{\"lat\":10.767691534643733,\"lng\":106.66718244552612}]'),
(243, 'Bệnh Viện Nhi Đồng 1(07)', '07', 10.769388458729, 106.67043328285, 14, '[]'),
(244, 'Nhà Thờ Vinh Sơn(07)', '07', 10.770337045667, 106.67224645615, 15, '[]'),
(245, 'Nhà Hát Hòa Bình(07)', '07', 10.771913406103, 106.67484300211, 16, '[]'),
(246, 'Bệnh Viện Bình Dân', '07', 10.77336789266, 106.67724626139, 17, '[{\"lat\":10.774822372190378,\"lng\":106.67954223230483},{\"lat\":10.776002814180291,\"lng\":106.68037908151747},{\"lat\":10.777430273282985,\"lng\":106.68118357658386},{\"lat\":10.777541597681568,\"lng\":106.68166654184462},{\"lat\":10.777762928907936,\"lng\":106.68199913576247},{\"lat\":10.778026418250928,\"lng\":106.68179528787734},{\"lat\":10.778058036956592,\"lng\":106.68150560930373},{\"lat\":10.779217387203538,\"lng\":106.68076531961562},{\"lat\":10.779748974147259,\"lng\":106.68040037155153},{\"lat\":10.781129646630356,\"lng\":106.67831897735597},{\"lat\":10.781767942025267,\"lng\":106.67845861986281},{\"lat\":10.781989270143242,\"lng\":106.67876975610854},{\"lat\":10.781947112419038,\"lng\":106.67910235002638},{\"lat\":10.78073507532202,\"lng\":106.67985336855055},{\"lat\":10.780128396224228,\"lng\":106.68089389801027},{\"lat\":10.781620389856169,\"lng\":106.68166654184462}]'),
(247, 'Trần Quốc Thảo(07)', '07', 10.783970676517, 106.68283598498, 18, '[{\"lat\":10.784997603741786,\"lng\":106.68297529220582}]'),
(248, 'Chợ Nguyễn Văn Chỗi', '07', 10.786742515662, 106.67996065691, 19, '[{\"lat\":10.78766996944328,\"lng\":106.6782762296498}]'),
(249, 'Trần Quang Diệu', '07', 10.789682955877, 106.67815821245, 20, '[{\"lat\":10.7943563786251,\"lng\":106.67788982391359}]'),
(250, 'Trung Tâm Văn Hóa Quận Phú Nhuận', '07', 10.795416204627, 106.67594807222, 21, '[]'),
(251, 'Cổng Xe Lửa(07)', '07', 10.797186744636, 106.67305128649, 22, '[]'),
(252, 'Bệnh Viện Quận Phú Nhuận(07)', '07', 10.798483026241, 106.6707338579, 23, '[]'),
(253, 'Cổng Trước Sân Vận Động QK7', '07', 10.800875336141, 106.66657106951, 24, '[{\"lat\":10.801286347818195,\"lng\":106.66594879701735},{\"lat\":10.801855439980871,\"lng\":106.66564838960768}]'),
(254, 'Rạp Tân Sơn Nhất', '07', 10.802508840764, 106.66590588167, 25, '[]'),
(255, 'Bãi Xe Buýt Phổ Quang', '07', 10.805354279207, 106.66663544253, 26, '[{\"lat\":10.806049826724406,\"lng\":106.66687147691847},{\"lat\":10.805912825068079,\"lng\":106.66823403909804}]'),
(256, 'Cây Xăng Quân Đội', '07', 10.806566217021, 106.66836278513, 27, '[{\"lat\":10.808716077277696,\"lng\":106.66872756555678},{\"lat\":10.80866338480845,\"lng\":106.67123811319472}]'),
(257, 'ĐH Mở', '07', 10.808189152169, 106.67235391214, 28, '[{\"lat\":10.807946766308046,\"lng\":106.67274015024306},{\"lat\":10.808020535938562,\"lng\":106.6733409650624}]'),
(258, 'Cuối Công Viên Gia Định', '07', 10.809812078541, 106.67493956164, 29, '[]'),
(259, 'Công Viên Gia Định', '07', 10.811561456878, 106.67651670054, 30, '[]'),
(260, 'Đầu Công Viên Gia Định', '07', 10.813479438272, 106.6780831106, 31, '[{\"lat\":10.813742896296876,\"lng\":106.67830841615798},{\"lat\":10.813532129895519,\"lng\":106.67875902727248},{\"lat\":10.813669128073245,\"lng\":106.67911307886244},{\"lat\":10.813932585931468,\"lng\":106.67920963838698},{\"lat\":10.814280349949998,\"lng\":106.67902724817397},{\"lat\":10.814385732906322,\"lng\":106.67891995981337}]'),
(261, 'Cầu Vượt Nguyễn Thái Sơn - Nguyễn Kiệm(07)', '07', 10.815313101325, 106.67970316485, 32, '[]'),
(262, 'Ngã 3 Phạm Ngũ Lão', '07', 10.819665371616, 106.68313639238, 33, '[]'),
(263, 'Trường Đại Học Công Nghiệp', '07', 10.823711977867, 106.68623702601, 34, '[{\"lat\":10.824555013958879,\"lng\":106.68692367151381}]'),
(264, 'UBND Phường 5', '07', 10.825261054861, 106.68809311464, 35, '[{\"lat\":10.826272692656929,\"lng\":106.68933765962721},{\"lat\":10.824302103380306,\"lng\":106.69138686731459}]'),
(265, 'Bãi Hậu Cần Số 1', '07', 10.823322072872, 106.69179456308, 36, 'null'),
(266, 'Bến Xe Buýt Quận 8', '08', 10.733793212164, 106.65616393089, 1, '[]'),
(267, 'Bùi Minh Trực', '08', 10.736645229105, 106.65620701388, 2, '[]'),
(268, 'Cầu Nhị Thiên Đường', '08', 10.738363409732, 106.65631430224, 3, '[{\"lat\":10.740471593470447,\"lng\":106.65638940408827},{\"lat\":10.742115966572207,\"lng\":106.65588514879347},{\"lat\":10.742864364185975,\"lng\":106.6555847413838},{\"lat\":10.743554126893548,\"lng\":106.65552020072938}]'),
(269, 'Tùng Thiện Vương', '08', 10.744313061691, 106.65624976158, 4, '[]'),
(270, 'Chợ Xóm Củi', '08', 10.746210390339, 106.65980100632, 5, '[{\"lat\":10.746526610621498,\"lng\":106.66036963462831},{\"lat\":10.748050392462082,\"lng\":106.66064875200392},{\"lat\":10.750032022017178,\"lng\":106.66009085252882},{\"lat\":10.750337697758294,\"lng\":106.66039125993849},{\"lat\":10.75098528133358,\"lng\":106.66147470474245},{\"lat\":10.751206632064015,\"lng\":106.66145324707033},{\"lat\":10.751022831915348,\"lng\":106.66102426126601},{\"lat\":10.750706616343852,\"lng\":106.66054146364333},{\"lat\":10.750495805778762,\"lng\":106.660123039037},{\"lat\":10.75058013002247,\"lng\":106.6596187837422},{\"lat\":10.750790940528656,\"lng\":106.65925400331618}]'),
(271, 'Bưu Điện Quận 5(08)', '08', 10.751185551049, 106.65917873383, 6, '[]'),
(272, 'Rạp Đại Quang(08)', '08', 10.752329852762, 106.65895359591, 7, '[{\"lat\":10.754416858181779,\"lng\":106.65843861177565}]'),
(273, 'Bệnh Viện Chợ Rẫy(08)', '08', 10.754511721721, 106.65893213823, 8, '[{\"lat\":10.755175765663793,\"lng\":106.66248338297011}]'),
(274, 'Bệnh Viện Hùng Vương', '08', 10.756324663635, 106.66210787371, 9, '[]'),
(275, 'Coopmart Lý Thường Kiệt', '08', 10.759676469403, 106.66117446497, 10, '[]'),
(276, 'Điện Lực Phú Thọ', '08', 10.764946528903, 106.65973680094, 11, '[]'),
(277, 'Đại Học Bách Khoa', '08', 10.772503633379, 106.65759103373, 12, '[]'),
(278, 'Bưu Điện Quận 10', '08', 10.776502787936, 106.65649652481, 13, '[]'),
(279, 'Ngã 3 Thành Thái', '08', 10.778711489463, 106.65589587763, 14, '[]'),
(280, 'Siêu Thị Nguyễn Kim - CMC Tân Bình', '08', 10.782832423387, 106.65466206148, 15, '[]'),
(281, 'Chợ Tân Bình', '08', 10.786004766293, 106.65379302576, 16, '[]'),
(282, 'Bệnh Viện Chỉnh Hình Và Phục Hồi Chức Năng', '08', 10.788681733943, 106.65298836306, 17, '[{\"lat\":10.79011506115554,\"lng\":106.65258066728713},{\"lat\":10.79104711539618,\"lng\":106.65256977081299}]'),
(283, 'Bệnh Viện Thống Nhất', '08', 10.792064796761, 106.65299909189, 18, '[]'),
(284, 'Bệnh Viện Quận Tân Bình', '08', 10.794857639245, 106.65524141863, 19, '[]'),
(285, 'Nhà Hàng Đông Phương', '08', 10.798451409683, 106.65893213823, 20, '[{\"lat\":10.799947923111045,\"lng\":106.66061656549574},{\"lat\":10.80069024896827,\"lng\":106.66179656982423}]'),
(286, 'Bảo Tàng Miền Đông', '08', 10.800300314053, 106.66600227356, 21, '[]'),
(287, 'Siêu Thị Big C', '08', 10.799947923111, 106.66958587244, 22, '[]'),
(288, 'Khách Sạn Tân Sơn Nhất', '08', 10.799716069406, 106.67282598093, 23, '[]'),
(289, 'Ngã 4 Phú Nhuận', '08', 10.799189128502, 106.67878048494, 24, '[{\"lat\":10.799125895531304,\"lng\":106.68030397966506}]'),
(290, 'Ngã 4 Phan Xích Long', '08', 10.800675099479, 106.68195622042, 25, '[]'),
(291, 'Ngã 4 Thích Quảng Đức', '08', 10.802466685917, 106.68376939371, 26, '[{\"lat\":10.803757016734105,\"lng\":106.68489575386049}]'),
(292, 'Trường Đại Học Văn Hiển', '08', 10.803946712681, 106.68604373932, 27, '[]'),
(293, 'Bệnh Viện Phước An', '08', 10.803668096718, 106.68772833422, 28, '[]'),
(294, 'Công Viên Văn Hóa Phú Nhuận', '08', 10.803151701437, 106.69180529192, 29, '[]'),
(295, 'Lăng Ông Bà Chiểu', '08', 10.802487763341, 106.69708387926, 30, '[{\"lat\":10.802424531065085,\"lng\":106.69826405122878}]'),
(296, 'Chợ Bà Chiểu', '08', 10.802966615667, 106.69944405556, 31, '[]'),
(297, 'Focomart', '08', 10.803647019377, 106.70106427744, 32, '[{\"lat\":10.803826176728505,\"lng\":106.70157926157118}]'),
(298, 'Chùa Bồ Đề', '08', 10.803341397766, 106.70381085947, 33, '[]'),
(299, 'Nhà Thờ Hàng Xanh', '08', 10.803056853227, 106.70755522326, 34, '[]'),
(300, 'Chợ Hàng Xanh(08)', '08', 10.80278284712, 106.71057002619, 35, '[{\"lat\":10.802761769717176,\"lng\":106.71142833307387}]'),
(301, 'Ngã Ba Hàng Xanh', '08', 10.803657558048, 106.71144979075, 36, '[]'),
(302, 'Cầu Sơn', '08', 10.805080275197, 106.71150343493, 37, '[]'),
(303, 'D5', '08', 10.806387061304, 106.71156780794, 38, '[]'),
(304, 'Siêu Thị Coopmart(08)', '08', 10.808420999331, 106.71176092699, 39, '[]'),
(305, 'Cổng Ra Bến Xe Miền Đông', '08', 10.810960767876, 106.71240465716, 40, '[{\"lat\":10.819659443930323,\"lng\":106.71342372894289},{\"lat\":10.824306713731309,\"lng\":106.71397089958191},{\"lat\":10.825429661397509,\"lng\":106.71429293230177},{\"lat\":10.82577741207944,\"lng\":106.71452896669508},{\"lat\":10.826171924201509,\"lng\":106.71609520912172}]'),
(306, 'Đường Số 20', '08', 10.827737453829, 106.72091262415, 41, '[]'),
(307, 'Cá Sấu Hoa Cà', '08', 10.833522663549, 106.72826187685, 42, '[]'),
(308, 'Trường THCS Ngô Chí Quốc', '08', 10.835545879913, 106.73075096682, 43, '[]'),
(309, 'Chùa An Lạc', '08', 10.837590157559, 106.73344390467, 44, '[{\"lat\":10.8386590510397,\"lng\":106.73565387725831},{\"lat\":10.839434210466935,\"lng\":106.73900144174696},{\"lat\":10.840393113488044,\"lng\":106.74270289018752},{\"lat\":10.840972668769076,\"lng\":106.74371140077712}]'),
(310, 'Cầu Gò Dưa', '08', 10.840761921524, 106.74456970766, 45, '[{\"lat\":10.840782996255232,\"lng\":106.74577133730055}]'),
(311, 'Trạm Xăng 27-7', '08', 10.841330938745, 106.74628632143, 46, '[{\"lat\":10.843280341389296,\"lng\":106.7482282407582},{\"lat\":10.846673325420856,\"lng\":106.75124304369093},{\"lat\":10.849328677374512,\"lng\":106.75364630296828},{\"lat\":10.851088361906044,\"lng\":106.75505178049208},{\"lat\":10.851225342902058,\"lng\":106.75676839426161},{\"lat\":10.850572048356806,\"lng\":106.75867812708022}]'),
(312, 'Ngã 3 Nhà Thờ', '08', 10.850540437294, 106.76000850275, 47, '[{\"lat\":10.850487752182445,\"lng\":106.76188604906203},{\"lat\":10.850856547769757,\"lng\":106.76278727129103}]'),
(313, 'Cao Đẳng Xây Dựng số 2', '08', 10.85073010362, 106.76406400278, 48, '[{\"lat\":10.850624733453706,\"lng\":106.76546948030592},{\"lat\":10.8504350670614,\"lng\":106.76699297502638},{\"lat\":10.850245400548753,\"lng\":106.76737921312453},{\"lat\":10.849834456025174,\"lng\":106.76771180704237}]'),
(314, 'Siêu Thị Nguyễn Kim(08)', '08', 10.849697474392, 106.76903145388, 49, '[]'),
(315, 'Trường ĐHSP Kỷ Thuật', '08', 10.849655326184, 106.77200334147, 50, '[{\"lat\":10.8495710297514,\"lng\":106.77337663248183},{\"lat\":10.849069860624658,\"lng\":106.77411675453187}]'),
(316, 'Công An Quận 9(08)', '08', 10.849918752384, 106.77494304255, 51, '[{\"lat\":10.852416021223037,\"lng\":106.7786659486592},{\"lat\":10.854734142399046,\"lng\":106.78266780450942}]'),
(317, 'Trạm Hutech - Khu Công Nghệ Cao(08)', '08', 10.856651847234, 106.78627269343, 52, '[]'),
(318, 'Khu Công Nghệ Cao Quận 9(08)', '08', 10.858363414745, 106.78875088692, 53, '[{\"lat\":10.862447034280265,\"lng\":106.79555313661696}]'),
(319, 'Cầu Vượt Trạm số 2', '08', 10.863521765698, 106.79738776758, 54, '[]'),
(320, 'Suối Tiên', '08', 10.866339624616, 106.80203318596, 55, '[{\"lat\":10.867420268758881,\"lng\":106.80370705202223},{\"lat\":10.870665470306427,\"lng\":106.80675404146315},{\"lat\":10.87439530121294,\"lng\":106.8094469793141},{\"lat\":10.874627097074624,\"lng\":106.80903928354384},{\"lat\":10.873436507325987,\"lng\":106.80818097665907},{\"lat\":10.874357766070665,\"lng\":106.80702209472658},{\"lat\":10.875143369028148,\"lng\":106.8054129369557},{\"lat\":10.875923043345574,\"lng\":106.80484430864455},{\"lat\":10.876355024184402,\"lng\":106.80393235757948},{\"lat\":10.876491993587983,\"lng\":106.80326716974379},{\"lat\":10.876028404583467,\"lng\":106.80214064195754},{\"lat\":10.875796609810958,\"lng\":106.8010355718434},{\"lat\":10.875617495545146,\"lng\":106.80004851892592},{\"lat\":10.875080152102264,\"lng\":106.79987685754897},{\"lat\":10.874553343865452,\"lng\":106.80001633241774},{\"lat\":10.873973853730183,\"lng\":106.80066006258131},{\"lat\":10.873562941861117,\"lng\":106.8017007596791}]'),
(321, 'Đại Học Quốc Gia', '08', 10.874163505171, 106.80202262476, 56, 'null'),
(322, 'Bến Xe Chợ Lớn(09)', '09', 10.751272839617, 106.65243574418, 1, '[{\"lat\":10.75100405662505,\"lng\":106.65243574418129},{\"lat\":10.751006362362517,\"lng\":106.6504615545273}]'),
(323, 'Trường Võ Văn Tần', '09', 10.752253104971, 106.65058501996, 2, '[{\"lat\":10.753481067290847,\"lng\":106.65076741017404}]'),
(324, 'Cây Mai', '09', 10.753654984297, 106.64933511056, 3, '[]'),
(325, 'Lò Siêu', '09', 10.753944845751, 106.64635785855, 4, '[{\"lat\":10.754371732112505,\"lng\":106.64216288365425},{\"lat\":10.75458253996944,\"lng\":106.64016732014717}]'),
(326, 'Tân Hóa', '09', 10.754788077488, 106.63764604367, 5, '[{\"lat\":10.75479038319669,\"lng\":106.63636386394502}]'),
(327, 'Trường THPT Mạc Đĩnh Chi', '09', 10.754672133264, 106.63557537831, 6, '[{\"lat\":10.754255787728383,\"lng\":106.63470634259286},{\"lat\":10.75429267912816,\"lng\":106.6342986468226},{\"lat\":10.75412930289488,\"lng\":106.63412162102762},{\"lat\":10.753792009746288,\"lng\":106.63410016335548}]'),
(328, 'Cư Xá Phú Lâm A', '09', 10.753470526863, 106.63367637433, 7, '[]'),
(329, 'Hồ Bơi Phú Lâm', '09', 10.74962094036, 106.62867682055, 8, '[]'),
(330, 'Công Viên Phú Lâm(08)', '09', 10.74631118559, 106.62449257448, 9, '[{\"lat\":10.745615500035925,\"lng\":106.6235806234181}]'),
(331, '428 Kinh Dương Vương', '09', 10.740745656276, 106.61781923845, 10, '[]'),
(332, 'Bệnh Viện Triều An', '09', 10.73975481265, 106.61668198183, 11, '[{\"lat\":10.73863747445012,\"lng\":106.61536233499648}]'),
(333, 'Hàng Dương', '09', 10.736740098229, 106.61416070536, 12, '[]'),
(334, 'Sinco', '09', 10.732102017313, 106.61141412333, 13, '[{\"lat\":10.730057022665909,\"lng\":106.61007301881911}]'),
(335, 'Thời Trang', '09', 10.726730582691, 106.60498738289, 14, '[{\"lat\":10.725528865135958,\"lng\":106.60309910774232},{\"lat\":10.724196033557583,\"lng\":106.60203712061049},{\"lat\":10.723964121580845,\"lng\":106.60169379785658},{\"lat\":10.723953580123139,\"lng\":106.60123245790602},{\"lat\":10.723690043560971,\"lng\":106.60102861002089}]'),
(336, 'Bãi Xe Phương Trang', '09', 10.72087545876, 106.60038487986, 15, '[{\"lat\":10.715172418295777,\"lng\":106.59946219995619},{\"lat\":10.711714700048804,\"lng\":106.59880774095656}]'),
(337, 'Giao Lộ Hùng Nhơn', '09', 10.710080703606, 106.59867899492, 16, '[{\"lat\":10.705969318732734,\"lng\":106.59793870523573}]'),
(338, 'Dương Đình Cúc', '09', 10.704714808139, 106.59741299227, 17, '[{\"lat\":10.703681677868309,\"lng\":106.59716622903944},{\"lat\":10.699918102107945,\"lng\":106.59729497507216}]'),
(339, 'Nguyễn Hữu Trí', '09', 10.698294584416, 106.59710185602, 18, '[]'),
(340, 'Nút Giao Bình Thuật', '09', 10.693076075836, 106.59554617479, 19, '[{\"lat\":10.689776245300624,\"lng\":106.59446256235243},{\"lat\":10.685885983673565,\"lng\":106.59316437318923},{\"lat\":10.683503305597752,\"lng\":106.59137265756728},{\"lat\":10.681110065881422,\"lng\":106.58867971971632},{\"lat\":10.677810105306806,\"lng\":106.5847315080464},{\"lat\":10.674172727051893,\"lng\":106.5807511098683}]'),
(341, 'Trịnh Như Khuê', '09', 10.669544232085, 106.57562272623, 20, '[{\"lat\":10.664837249311661,\"lng\":106.56982932239772},{\"lat\":10.663656373663525,\"lng\":106.5703657642007},{\"lat\":10.662168411103991,\"lng\":106.57412052154542},{\"lat\":10.661273521349036,\"lng\":106.5758589282632}]'),
(342, 'Điện Máy Lộc Đức', '09', 10.658426726428, 106.58051524311, 21, '[{\"lat\":10.65580000731541,\"lng\":106.58514976501466},{\"lat\":10.65636937334154,\"lng\":106.58641576766969},{\"lat\":10.657065263705483,\"lng\":106.58815383911134},{\"lat\":10.658932825248295,\"lng\":106.5925529971719},{\"lat\":10.662294934332717,\"lng\":106.59997701644899},{\"lat\":10.659143699508595,\"lng\":106.60628590732814},{\"lat\":10.653670147186027,\"lng\":106.61712169647218},{\"lat\":10.64938006811405,\"lng\":106.62570510059597},{\"lat\":10.644403237113906,\"lng\":106.63508210331203},{\"lat\":10.639161396907731,\"lng\":106.64473772048952}]'),
(343, 'Hưng Long', '09', 10.638013373108, 106.64666924626, 22, 'null'),
(344, 'Đại Học Quốc Gia(10)', '10', 10.873794079857, 106.80174350739, 1, '[{\"lat\":10.87360739148964,\"lng\":106.80177577771248},{\"lat\":10.873449348335898,\"lng\":106.8026984576136},{\"lat\":10.873570514761267,\"lng\":106.80423804558815},{\"lat\":10.873846760856784,\"lng\":106.80477976799013},{\"lat\":10.874363034161101,\"lng\":106.80516064167024},{\"lat\":10.874982363393642,\"lng\":106.80522509850563},{\"lat\":10.875066652652828,\"lng\":106.80540748871864},{\"lat\":10.87472949547319,\"lng\":106.80615314282478},{\"lat\":10.874118397113621,\"lng\":106.80729576386514},{\"lat\":10.873681144932723,\"lng\":106.80784293450417},{\"lat\":10.87348622507927,\"lng\":106.80807360447946},{\"lat\":10.873507297501996,\"lng\":106.80764445103706},{\"lat\":10.872466515593985,\"lng\":106.80696308612823},{\"lat\":10.87220080447755,\"lng\":106.80725821293892}]'),
(345, 'Khu DL Suối Tiên', '10', 10.871210394662, 106.80657156743, 2, '[{\"lat\":10.870006291598479,\"lng\":106.80559515953065},{\"lat\":10.8685394326544,\"lng\":106.80412002839151},{\"lat\":10.867701788756994,\"lng\":106.80384107865395},{\"lat\":10.866152931584198,\"lng\":106.80144854821266},{\"lat\":10.8623861195467,\"lng\":106.79503270424905},{\"lat\":10.859646590034608,\"lng\":106.79047294892374},{\"lat\":10.854043317827264,\"lng\":106.78097248077393},{\"lat\":10.851122277879652,\"lng\":106.77616068162027}]'),
(346, 'Ngã 4 Thủ Đức', '10', 10.849928630862, 106.77493751049, 3, '[{\"lat\":10.848274969104052,\"lng\":106.77329080179335},{\"lat\":10.845672293762453,\"lng\":106.77161710336806}]');
INSERT INTO `tram_xebus` (`ma_tram`, `ten_tram`, `ma_sotuyen`, `lat`, `lon`, `stt_theotuyen`, `danhsachnode`) VALUES
(347, 'Ngã 4 Bình Thái', '10', 10.834386747211, 106.76507251337, 4, '[{\"lat\":10.824225044645983,\"lng\":106.75942964851859},{\"lat\":10.821494386448201,\"lng\":106.75844226032497},{\"lat\":10.817616361193473,\"lng\":106.75775561481716},{\"lat\":10.810640004725236,\"lng\":106.75631795078517},{\"lat\":10.806865907410454,\"lng\":106.75455272197725},{\"lat\":10.805516968969412,\"lng\":106.75330281257631},{\"lat\":10.804447298630947,\"lng\":106.75197243690491},{\"lat\":10.803535704644942,\"lng\":106.75021290779115},{\"lat\":10.80294092759703,\"lng\":106.74837844446303}]'),
(348, 'Cát Lát', '10', 10.802772308419, 106.74772398546, 5, '[{\"lat\":10.80200759291109,\"lng\":106.74352884292604},{\"lat\":10.801132877177668,\"lng\":106.7384970188141},{\"lat\":10.799920917433026,\"lng\":106.73256397247316},{\"lat\":10.798957274211242,\"lng\":106.7277683503926},{\"lat\":10.798108238079495,\"lng\":106.72300457954408},{\"lat\":10.797960693929785,\"lng\":106.72202825546266},{\"lat\":10.79815039353754,\"lng\":106.72074079513551},{\"lat\":10.798440870829744,\"lng\":106.7200435884297},{\"lat\":10.798683264364268,\"lng\":106.71966807916762},{\"lat\":10.799009968383931,\"lng\":106.71931402757765}]'),
(349, 'Khu Du Lịch Văn Thánh', '10', 10.800253548176, 106.71703951433, 6, '[{\"lat\":10.800906952443967,\"lng\":106.71548383310439},{\"lat\":10.801248803505654,\"lng\":106.71464681625366},{\"lat\":10.801602510263933,\"lng\":106.71285526826979},{\"lat\":10.801591971521109,\"lng\":106.71156780794264},{\"lat\":10.801707897671875,\"lng\":106.71127812936903},{\"lat\":10.801554427246788,\"lng\":106.7110311985016},{\"lat\":10.801307425324934,\"lng\":106.70969026163222},{\"lat\":10.800590789265975,\"lng\":106.70797364786269},{\"lat\":10.79952637078708,\"lng\":106.7062999494374},{\"lat\":10.798198477099628,\"lng\":106.70489447191359},{\"lat\":10.796754649524765,\"lng\":106.70360701158644},{\"lat\":10.795468899420442,\"lng\":106.70239465311171},{\"lat\":10.794678476543629,\"lng\":106.70151488855483},{\"lat\":10.79386104536503,\"lng\":106.70084953308107},{\"lat\":10.792644445448781,\"lng\":106.69965879991652},{\"lat\":10.792591750159756,\"lng\":106.69927256181838},{\"lat\":10.792402047042792,\"lng\":106.69911162927748},{\"lat\":10.792117492142864,\"lng\":106.69910090044142},{\"lat\":10.790452313624304,\"lng\":106.69747011736037},{\"lat\":10.79180131971587,\"lng\":106.69587152078749}]'),
(350, 'Đền Trần Hưng Đạo', '10', 10.791548381535, 106.69554965571, 7, '[{\"lat\":10.78980942577892,\"lng\":106.69373648241164},{\"lat\":10.787027075648822,\"lng\":106.6910650022328}]'),
(351, 'Trần Quốc Thảo(10)', '10', 10.783359392964, 106.68748157099, 8, '[{\"lat\":10.777915094031664,\"lng\":106.68209552764894},{\"lat\":10.77787589999199,\"lng\":106.68192931450906},{\"lat\":10.77807845736889,\"lng\":106.68179512023927},{\"lat\":10.778091961189183,\"lng\":106.68164500035347},{\"lat\":10.778081421622177,\"lng\":106.68152698315681},{\"lat\":10.77798129571731,\"lng\":106.68136068619789},{\"lat\":10.777854820842492,\"lng\":106.68132313527168}]'),
(352, 'Siêu Thị Maximart(10)', '10', 10.77700638385, 106.68074914254, 9, '[{\"lat\":10.775478137271262,\"lng\":106.67988010682168},{\"lat\":10.775137903733556,\"lng\":106.67959570884706}]'),
(353, 'Học Viện Hành Chính Quốc Gia', '10', 10.774376740961, 106.6784746293, 10, '[{\"lat\":10.77329115022484,\"lng\":106.6768062952906},{\"lat\":10.770964824129884,\"lng\":106.67302982881667},{\"lat\":10.76780747386061,\"lng\":106.66712880134584}]'),
(354, 'Đại Học Kinh Tế Thành Phố Hồ Chí Minh(10)', '10', 10.7610572339, 106.66858809069, 11, '[{\"lat\":10.759961054969619,\"lng\":106.66881339624526},{\"lat\":10.75622387172908,\"lng\":106.66627049446107}]'),
(355, 'Hùng Vương Plazza(10)', '10', 10.755190917443, 106.66120648384, 12, '[{\"lat\":10.75453280250397,\"lng\":106.65825622156264},{\"lat\":10.750822562091871,\"lng\":106.6590608842671},{\"lat\":10.750864724171016,\"lng\":106.65748374536635},{\"lat\":10.75100175088757,\"lng\":106.6565396077931},{\"lat\":10.751012291401631,\"lng\":106.65449040010573},{\"lat\":10.751138777541872,\"lng\":106.65385739877821},{\"lat\":10.751033372428697,\"lng\":106.65215151384474},{\"lat\":10.751096615501032,\"lng\":106.64955513551833},{\"lat\":10.749663102606942,\"lng\":106.64944784715773},{\"lat\":10.749589318670774,\"lng\":106.64751665666701}]'),
(356, 'Ngã 4 Hậu Giang - Minh Phụng', '10', 10.749757967641, 106.64280669764, 13, '[{\"lat\":10.749262561022366,\"lng\":106.63981335237624},{\"lat\":10.747259845126196,\"lng\":106.63184182718398}]'),
(357, 'Mũi Tàu Phú Lâm(10)', '10', 10.745446848751, 106.62458913401, 14, '[{\"lat\":10.745267656657617,\"lng\":106.62411706522109},{\"lat\":10.745394145205182,\"lng\":106.62396686151625},{\"lat\":10.745615500035925,\"lng\":106.62394540384413},{\"lat\":10.745741988437782,\"lng\":106.6237952001393},{\"lat\":10.745541715110376,\"lng\":106.62353770807387},{\"lat\":10.741472975591918,\"lng\":106.61850588396193}]'),
(358, 'Bến Xe Miền Tây(10)', '10', 10.740945932784, 106.61889212206, 15, 'null'),
(359, 'Bến Xe Miền Tây', '99', 10.740655400043, 106.61847889423, 1, '[]'),
(360, '428 Kinh Dương Vương(99)', '99', 10.741438717837, 106.6184038762, 2, '[]'),
(361, 'Bến Xe Miền Tây(99)', '99', 10.742687805761, 106.62008830346, 3, '[]'),
(362, 'Vòng Xoay Kinh Dương Vương(99)', '99', 10.745238669691, 106.62309237756, 4, '[{\"lat\":10.74569719046818,\"lng\":106.62373610772195},{\"lat\":10.745691920118379,\"lng\":106.62387558259071},{\"lat\":10.74554962063899,\"lng\":106.62397750653328},{\"lat\":10.74537240498985,\"lng\":106.62395596504211}]'),
(363, 'Mũi Tàu Phú Lâm(99)', '99', 10.74543894322, 106.62457832135, 5, '[]'),
(364, 'Trường THCS Lam Sơn', '99', 10.745918545077, 106.62638613023, 6, '[]'),
(365, 'Nguyễn Văn Luông', '99', 10.748029970015, 106.63489954546, 7, '[]'),
(366, 'Cầu Hậu Giang(99)', '99', 10.749365331611, 106.64019414224, 8, '[{\"lat\":10.749786954173528,\"lng\":106.64233990944923}]'),
(367, 'Chợ Minh Phụng(99)', '99', 10.750865382953, 106.64257066324, 9, '[{\"lat\":10.754796970935294,\"lng\":106.64323585107924}]'),
(368, 'Hàn Hải Nguyên(99)', '99', 10.755977491372, 106.64528505877, 10, '[]'),
(369, 'Xóm Đất(99)', '99', 10.757326651928, 106.64788143709, 11, '[]'),
(370, 'Tạ Uyên(99)', '99', 10.758707427185, 106.65042417124, 12, '[]'),
(371, 'Lê Đại Hành(99)', '99', 10.759681080746, 106.6522371769, 13, '[]'),
(372, 'Nhà Sách Phương Nam(99)', '99', 10.763113217406, 106.65858881548, 14, '[]'),
(373, 'Ngã 3 Nguyễn Kim(99)', '99', 10.764789087211, 106.66162507609, 15, '[]'),
(374, 'Bệnh Viện Nhi Đồng 1(99)', '99', 10.769426665761, 106.67036907747, 16, '[]'),
(375, 'Nhà Thờ Vĩnh Sơn(99)', '99', 10.769953658806, 106.67121665552, 17, '[]'),
(376, 'Nhà Hát Hòa Bình(99)', '99', 10.77191406484, 106.67459623888, 18, '[]'),
(377, 'Học Viện Hành Chính Quốc Gia(99)', '99', 10.773410710319, 106.67719261721, 19, '[{\"lat\":10.773832299251652,\"lng\":106.67775051668288}]'),
(378, 'Cao Thắng 2(99)', '99', 10.77336196406, 106.67830824852, 20, '[{\"lat\":10.772761198713747,\"lng\":106.67901635169984}]'),
(379, 'Cao Thắng(99)', '99', 10.771155199502, 106.67728917673, 21, '[{\"lat\":10.77056496958344,\"lng\":106.6767098195851}]'),
(380, 'Chợ Bàn Cũ(99)', '99', 10.76763488251, 106.68029325083, 22, '[{\"lat\":10.766074968415278,\"lng\":106.6822566278279}]'),
(381, 'Trung Ương Hội Chữ Thập Đỏ Thành Phố(99)', '99', 10.766391167871, 106.68259995058, 23, '[{\"lat\":10.768256737904542,\"lng\":106.68446676805617}]'),
(382, 'Chợ Thái Bình(99)', '99', 10.766869418917, 106.68776035309, 24, '[{\"lat\":10.76673239941114,\"lng\":106.68825387954713},{\"lat\":10.767329224303456,\"lng\":106.68846862390639}]'),
(383, 'Nhà Thờ Huyệt Sĩ', '99', 10.767972160171, 106.68891923502, 25, '[{\"lat\":10.768741573423183,\"lng\":106.68969171121718}]'),
(384, 'Nguyễn Trãi(99)', '99', 10.770944403235, 106.69277088717, 26, '[{\"lat\":10.771197358737325,\"lng\":106.69312493875624},{\"lat\":10.77140156745132,\"lng\":106.69309258461},{\"lat\":10.771528045037002,\"lng\":106.69318914413454},{\"lat\":10.771492473221398,\"lng\":106.69343607500197},{\"lat\":10.77129616942268,\"lng\":106.6935968399048}]'),
(385, 'Khách Sạn New World(99)', '99', 10.771186818929, 106.69479863718, 27, '[{\"lat\":10.771116992689336,\"lng\":106.69650435447693},{\"lat\":10.771956223969244,\"lng\":106.69854300096632},{\"lat\":10.771566251797237,\"lng\":106.69885413721205},{\"lat\":10.770986562500227,\"lng\":106.69904725626112}]'),
(386, 'Trạm Trung Chuyển Hàm Nghi(99)', '99', 10.771095913067, 106.69973373413, 28, '[]'),
(387, 'Trường Cao Thắng(99)', '99', 10.771085373255, 106.70190095901, 29, '[]'),
(388, 'Cục Hải Quan Thành Phố(99)', '99', 10.770881164326, 106.7056347616, 30, '[{\"lat\":10.77089170414541,\"lng\":106.70623557642104}]'),
(389, 'Bến Bạch Đằng(99)', '99', 10.773220995106, 106.70646088198, 31, '[{\"lat\":10.77471763408938,\"lng\":106.70652525499465},{\"lat\":10.775834838621554,\"lng\":106.70670764520766},{\"lat\":10.775834838621554,\"lng\":106.70633213594557},{\"lat\":10.775697823194418,\"lng\":106.70606391504408},{\"lat\":10.776544946422609,\"lng\":106.70511960983278}]'),
(390, 'Cổng Trường Mê Linh(99)', '99', 10.776998149784, 106.70555949211, 32, 'null');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuyen_xebus`
--

CREATE TABLE `tuyen_xebus` (
  `ma_sotuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_tuyen` text COLLATE utf8_unicode_ci NOT NULL,
  `donvi_damnhan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dodai_tuyen` double DEFAULT NULL,
  `loai_xe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gia_ve` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ma_tinhthanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `so_chuyen` int(11) DEFAULT NULL,
  `tu` time DEFAULT NULL,
  `den` time DEFAULT NULL,
  `giancach_chuyen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tuyen_xebus`
--

INSERT INTO `tuyen_xebus` (`ma_sotuyen`, `ten_tuyen`, `donvi_damnhan`, `dodai_tuyen`, `loai_xe`, `gia_ve`, `ma_tinhthanh`, `so_chuyen`, `tu`, `den`, `giancach_chuyen`) VALUES
('01', 'Bến Thành- BX Chợ Lớn', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:01:00', '13:01:00', 100),
('02', 'Bến Thành- BX Miền Tây', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('03', 'Bến Thành - Thành Lộc', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('04', 'Bến Thành - Cộng Hòa - An Sương', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('05', 'Bến xe Chợ Lớn - Biên Hòa', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('06', 'Bến xe Chợ Lớn - Đại Học Nông Lâm', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '02:00:00', 15),
('07', 'Bến xe Chợ Lớn - Gò Vấp', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('08', 'Bến xe Quận 8 - Đại học Quốc Gia', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('09', 'Chợ Lớn - Bình Chánh - Hưng Long', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('10', 'Đại học Quốc Gia - Bến xe Miền Tây', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('11', 'Bến Thành - Đầm Sen', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('13', 'Công viên 23/9 - Bến xe Củ Chi', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('14', 'Miền Đông - 3 tháng 2 - Miền Tây', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('15', 'Bến Phú Định-Bến Xe Buýt Đầm Sen', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '14:00:00', 15),
('16', 'Bến Xe Chợ Lớn - Bến Xe Tân Phú', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:01:00', '13:00:00', 6),
('17', 'Chợ Lớn - ĐHSG - KCN Tân Thuận', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '112,500 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('18', 'Bến Xe Buýt Sài Gòn - Hiệp Thành', 'Công ty Cổ phần Xe khách Sài Gòn', 124, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('19', 'Sài Gòn - Linh Trung - ĐHQG', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '2,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 16),
('20', 'Bến Xe Buýt Sài Gòn - Nhà Bè', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '2,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 15),
('21', 'Huỳnh Văn Nghệ - THCS Trường Trinh', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:01:00', '13:00:00', 14),
('22', 'Bến Xe Quận 8 - KCN Lê Minh Xuân', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '26-80 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '01:00:00', 14),
('23', 'Chợ Lớn - Ngã 3 Giồng - Cầu Lớn', 'Công ty Cổ phần Xe khách Sài Gòn', 21, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '01:00:00', 5),
('24', 'Bến Xe Miền Đông - Hóc Môn', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '2,000 VNĐ', 'TPHCM', 126, '01:01:00', '01:00:00', 4),
('25', 'Bến Xe Quận 8 - KDC Vĩnh Lộc A', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '01:00:00', 6),
('27', 'BX SG - Âu Cơ - BX An Sương', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '14:00:00', 5),
('28', 'BX SG - Chợ Xuân - Thới Thượng', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 7),
('29', 'Bến Phà Cát Lát - Chợ Nông Sản Thủ Đức', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '26-80 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 4),
('30', 'Chợ Tân Hương - Đại Học Quốc Tế', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:01:00', 8),
('31', 'ĐH Tôn Đức Thắng - ĐH Văn Lang', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '02:00:00', 8),
('32', 'Bến Xe Miền Tây - Bến Xe Ngã Tư Ga', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '01:00:00', 8),
('33', 'Bến Xe An Sương - Suối Tiến - ĐHQG', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '02:00:00', '01:00:00', 9),
('34', 'Bến Xe SG - ĐH Công Nghệ SG', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 6),
('36', 'Bến Xe Buýt Sài Gòn - Bến Xe Thới An', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '01:00:00', 8),
('38', 'KDC Tân Quy - Bến Xe Đầm Sen', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:01:00', '00:01:00', 7),
('39', 'Sài Gòn - Võ Văn Kiệt - BX Miền Tây', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 6),
('41', 'BX Miền Tây - Bốn Xã - An Sương', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '13:00:00', '13:00:00', 7),
('42', 'Chợ Cầu Muối - Bến Nông Sản Thủ Đức', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 9),
('43', 'Bến Xe Miền Đông - Phà Cát Lát', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '02:00:00', 6),
('44', 'Cảng Quận 4 - Bình Quới', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '02:00:00', '01:00:00', 6),
('45', 'Quận 8 - Bến Thành - BX Miền Đông', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '14:00:00', 4),
('46', 'Cảng Quận 4 - Bến Thành - Mễ Cốc', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:02:00', '01:01:00', 5),
('47', 'Chợ Lớn - Quốc Lộ 50 - Hưng Long', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 5),
('48', 'Tân Phú - Chợ Hiệp Thành', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 6),
('50', 'ĐH Bách Khoa - ĐH QG', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '39-80 chỗ', '5,000 VNĐ', 'TPHCM', 126, '02:00:00', '13:00:00', 6),
('51', 'Bến Xe Miền Đông - Bình Hưng Hòa', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 4, '01:01:00', '14:00:00', 7),
('52', 'BX Buýt SG - ĐH Quốc Tế', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '13:00:00', '14:00:00', 7),
('53', 'Lê Hồng Phong - ĐH QG', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '13:00:00', '14:00:00', 7),
('54', 'Bến Xe Miền Đông - Bến Xe Chợ Lớn', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '13:00:00', '13:00:00', 7),
('64', 'Bến Xe Miền Đông - Đầm Sen', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '13:00:00', 8),
('66', 'Bến Xe Chợ Lớn - BX An Sương', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '01:00:00', 3),
('68', 'Bến xe Chợ Lớn - ĐH Tài Chính Marketing', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '02:00:00', '01:00:00', 7),
('94', 'Chợ Lớn - Củ Chi', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '01:00:00', '14:00:00', 8),
('96', 'Bến Xe Buýt Sài Gòn - Chợ Bình Điền', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '6 chỗ', '5,000 VNĐ', 'TPHCM', 126, '13:01:00', '13:00:00', 7),
('99', 'Chợ Thạnh Mỹ Lợi - ĐHQG', 'Công ty Cổ phần Xe khách Sài Gòn', 12, '26-55 chỗ', '112,500 VNĐ', 'TPHCM', 126, '01:01:00', '13:56:00', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_online`
--

INSERT INTO `user_online` (`id`, `session`, `time`) VALUES
(1, '29vokpdh3min2efsv2h1ech911', 1556256627);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baidang_diendan`
--
ALTER TABLE `baidang_diendan`
  ADD PRIMARY KEY (`id_baidang`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`com_id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id_rate`);

--
-- Chỉ mục cho bảng `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`rep_id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`ma_thongbao`);

--
-- Chỉ mục cho bảng `tinh_thanh`
--
ALTER TABLE `tinh_thanh`
  ADD PRIMARY KEY (`ma_tinhthanh`);

--
-- Chỉ mục cho bảng `tram_xebus`
--
ALTER TABLE `tram_xebus`
  ADD PRIMARY KEY (`ma_tram`);

--
-- Chỉ mục cho bảng `tuyen_xebus`
--
ALTER TABLE `tuyen_xebus`
  ADD PRIMARY KEY (`ma_sotuyen`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baidang_diendan`
--
ALTER TABLE `baidang_diendan`
  MODIFY `id_baidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id_rate` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `reply`
--
ALTER TABLE `reply`
  MODIFY `rep_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `ma_thongbao` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `user_online`
--
ALTER TABLE `user_online`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
