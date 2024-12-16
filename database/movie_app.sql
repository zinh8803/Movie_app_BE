-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 16, 2024 lúc 04:26 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `movie_app`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `gender` enum('Nam','Nữ','Khác') DEFAULT 'Khác',
  `avatar` varchar(100) NOT NULL DEFAULT 'uploads/avata.jfif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`Id`, `username`, `email`, `password`, `phone`, `gender`, `avatar`) VALUES
(1, 'admin', 'admin@gmail.com', '123456', '0799117548', 'Nam', 'uploads/images.jpeg'),
(2, 'quocvinh', 'quocvinh@gmail.com', '123456', NULL, 'Khác', 'uploads/avata.jfif'),
(3, 'jack97', 'jack97@gmail.com', 'jackbocon', '', 'Nam', 'uploads/avata.jfif'),
(4, 'test', 'test@gmail.com', '123456', NULL, 'Khác', 'uploads/avata.jfif'),
(5, 'taikhon', 'taikhon@gmail.com', 'taikhon', '', 'Nữ', 'uploads/images (2).jpeg'),
(6, 'quocvinh1', 'quocvinh', '123456', NULL, 'Khác', 'uploads/jack-6190-1627551850-6785-1644377647.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video_history`
--

CREATE TABLE `video_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` varchar(255) NOT NULL,
  `video_title` varchar(255) DEFAULT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `video_history`
--

INSERT INTO `video_history` (`id`, `user_id`, `video_id`, `video_title`, `thumbnail_url`, `timestamp`) VALUES
(3, 1, 'bXTspwWR9uY', 'PHP in 60 Seconds: The Basics #php #project #technology', 'https://i.ytimg.com/vi/bXTspwWR9uY/mqdefault.jpg', '2024-11-25 23:12:04'),
(4, 1, '8IoeNii0DWI', 'ĐỨA CHÁU NHÀ TÀI PHIỆT - TẬP 44 | Drama Gia Đình Kịch Tính| Bà Thím Thâm Độc Hại Đứa Cháu Tật Nguyền', 'https://i.ytimg.com/vi/8IoeNii0DWI/mqdefault.jpg', '2024-11-25 23:14:14'),
(6, 2, 'gLfvcCWuyJ8', 'Maharashtra CM News LIVE Update: &#39;Eknath Shinde के संपर्क में शिवसेना UBT के 4-5 विधायक&#39; | Aaj Tak', 'https://i.ytimg.com/vi/gLfvcCWuyJ8/mqdefault_live.jpg', '2024-11-26 00:24:55'),
(7, 1, 'htLCWVLGWk0', '😊 Vân Sơn Chuyển Âm Châu Tinh Trì | Đường Bá Hổ Điểm Thu Hương | Film Bản Gốc @VanSonBolero', 'https://i.ytimg.com/vi/htLCWVLGWk0/mqdefault.jpg', '2024-11-26 00:31:44'),
(8, 1, 'M4TjIScQAJ8', 'I MAXED Town Hall 17 with 195.000 Gems in Clash of Clans', 'https://i.ytimg.com/vi/M4TjIScQAJ8/mqdefault.jpg', '2024-11-27 00:13:19'),
(9, 1, '9mL4iZ5pfo8', 'Restream hôm qua........................', 'https://i.ytimg.com/vi/9mL4iZ5pfo8/mqdefault.jpg', '2024-11-27 00:16:18'),
(10, 1, 'HPJtnBGUFfA', 'Sói cô độc', 'https://i.ytimg.com/vi/HPJtnBGUFfA/mqdefault.jpg', '2024-11-27 00:30:52'),
(11, 1, 'QfyqMrioxwg', '&quot;Step up for Canadian workers&quot; in the wake of Trump&#39;s new tariff proposal', 'https://i.ytimg.com/vi/QfyqMrioxwg/mqdefault.jpg', '2024-11-27 00:31:26'),
(12, 1, 'e93jF4SDcfA', 'Free Fire Ka Baadshah is back 🔥', 'https://i.ytimg.com/vi/e93jF4SDcfA/mqdefault.jpg', '2024-11-27 00:37:54'),
(13, 1, '9mL4iZ5pfo8', 'Restream hôm qua........................', 'https://i.ytimg.com/vi/9mL4iZ5pfo8/mqdefault.jpg', '2024-11-27 00:43:12'),
(14, 1, 'ULOPLaOaY7Y', 'North Texas officer killed in shootout, officials say', 'https://i.ytimg.com/vi/ULOPLaOaY7Y/mqdefault.jpg', '2024-11-27 00:43:52'),
(15, 1, 'xDO4Pde-VIg', 'die 01099 (extra aus Dresden angereist) TOUR 2025', 'https://i.ytimg.com/vi/xDO4Pde-VIg/mqdefault.jpg', '2024-11-27 00:45:31'),
(16, 1, '7pkGlpjcSew', '(Restream) Tôi đã thua trận đầu tiên ở Rank Hàn ( xin lỗi vì gà )', 'https://i.ytimg.com/vi/7pkGlpjcSew/mqdefault.jpg', '2024-11-27 00:53:09'),
(17, 1, 'F2vogIBSFLk', '#BBSPORTSBAR: IBYA MOHAMED SALAH &amp; LIVERPOOL NTIBIVUGWAHO RUMWE || ARTETA YATANGAJE IKI?', 'https://i.ytimg.com/vi/F2vogIBSFLk/mqdefault_live.jpg', '2024-11-27 01:04:14'),
(18, 1, 'NG3GakSnzIg', 'Hallo Anh Em...', 'https://i.ytimg.com/vi/NG3GakSnzIg/mqdefault_live.jpg', '2024-11-27 01:04:39'),
(19, 1, 'MeWrD-e8i8E', 'ĐỨA CHÁU NHÀ TÀI PHIỆT - TẬP 45 | Drama Gia Đình Kịch Tính| Bà Thím Thâm Độc Hại Đứa Cháu Tật Nguyền', 'https://i.ytimg.com/vi/MeWrD-e8i8E/mqdefault.jpg', '2024-11-27 01:04:48'),
(20, 1, 'Yx4veLXFz8I', 'ANCELOTTI y BELLINGHAM, EN DIRECTO | RUEDA DE PRENSA previa LIVERPOOL vs. REAL MADRID', 'https://i.ytimg.com/vi/Yx4veLXFz8I/mqdefault.jpg', '2024-11-27 01:06:31'),
(21, 1, 'CbGuQ1ydCYY', '🔴BIKIN THAI&amp;VIET PANIK,TIMNAS INDO KETIBAN UNTUNG❗JPN BANTU INDO SIKAT BAHRAIN,SIAP UKIR SEJARAH AFF', 'https://i.ytimg.com/vi/CbGuQ1ydCYY/mqdefault.jpg', '2024-11-27 01:11:50'),
(22, 1, 'xDO4Pde-VIg', 'die 01099 (extra aus Dresden angereist) TOUR 2025', 'https://i.ytimg.com/vi/xDO4Pde-VIg/mqdefault.jpg', '2024-11-27 01:20:19'),
(23, 1, '1_MayL0rwoA', 'LIVE🔴 Opozícia chce odvolať ministra Šutaja Eštoka, prišiel ho podporiť aj Fico', 'https://i.ytimg.com/vi/1_MayL0rwoA/mqdefault.jpg', '2024-11-27 01:21:51'),
(24, 1, 'jLQSkhzUNQU', 'Новини ТСН 19:30 26 листопада. Безчинства росіян, скандал з мінами і поширення нового вірусу', 'https://i.ytimg.com/vi/jLQSkhzUNQU/mqdefault.jpg', '2024-11-27 01:25:33'),
(25, 1, '9mL4iZ5pfo8', '(Restream) Cùng vua về nhì Doly nhìn lại giải đấu Ao làng MixiCup 2024 với muôn vàn cung bậc cảm xúc', 'https://i.ytimg.com/vi/9mL4iZ5pfo8/mqdefault.jpg', '2024-11-27 01:25:55'),
(26, 1, '9mL4iZ5pfo8', '(Restream) Cùng vua về nhì Doly nhìn lại giải đấu Ao làng MixiCup 2024 với muôn vàn cung bậc cảm xúc', 'https://i.ytimg.com/vi/9mL4iZ5pfo8/mqdefault.jpg', '2024-11-27 01:30:04'),
(27, 1, '9mL4iZ5pfo8', '(Restream) Cùng vua về nhì Doly nhìn lại giải đấu Ao làng MixiCup 2024 với muôn vàn cung bậc cảm xúc', 'https://i.ytimg.com/vi/9mL4iZ5pfo8/mqdefault.jpg', '2024-11-27 01:31:50'),
(28, 1, '9mL4iZ5pfo8', '(Restream) Cùng vua về nhì Doly nhìn lại giải đấu Ao làng MixiCup 2024 với muôn vàn cung bậc cảm xúc', 'https://i.ytimg.com/vi/9mL4iZ5pfo8/mqdefault.jpg', '2024-11-27 01:32:05'),
(29, 1, '56q9EyNiD2w', '【スプラ振り返り】優勝した【不破湊/にじさんじ】', 'https://i.ytimg.com/vi/56q9EyNiD2w/mqdefault.jpg', '2024-11-27 01:32:47'),
(30, 1, 'kBOZI952MFQ', '🔴Thế giới cập nhật - Toàn cảnh quốc tế 24h: Thực địa dậy sóng chưa từng có, Nga tiến nhanh đánh mạnh', 'https://i.ytimg.com/vi/kBOZI952MFQ/mqdefault_live.jpg', '2024-11-27 01:35:50'),
(31, 1, 'nCRKYyCh0mI', 'Une coalition armée européenne en Ukraine ?', 'https://i.ytimg.com/vi/nCRKYyCh0mI/mqdefault.jpg', '2024-11-27 01:38:05'),
(32, 1, 'qTEu2UwPa18', 'Chart of the Day: Amgen', 'https://i.ytimg.com/vi/qTEu2UwPa18/mqdefault.jpg', '2024-11-27 01:40:27'),
(33, 1, 'ajJNI2Yz3UY', '13 Cristiano siuuu in different Voices | Siuuu Meme', 'https://i.ytimg.com/vi/ajJNI2Yz3UY/mqdefault.jpg', '2024-11-27 15:25:52'),
(34, 1, 'ajJNI2Yz3UY', '13 Cristiano siuuu in different Voices | Siuuu Meme', 'https://i.ytimg.com/vi/ajJNI2Yz3UY/mqdefault.jpg', '2024-11-27 15:27:16'),
(35, 1, 'v1fBZQl2HYg', '【每日必看】陸生團來台!賴政府緊張了｜陸生團背景敏感? 沈伯洋提1事:不得不慎 精華版 20241127', 'https://i.ytimg.com/vi/v1fBZQl2HYg/mqdefault.jpg', '2024-11-27 15:28:44'),
(36, 1, 'CGnBnVDzW9o', 'QCPD, naghain ng reklamo laban kay VP Sara Duterte kaugnay ng naging tensyon sa VMMC', 'https://i.ytimg.com/vi/CGnBnVDzW9o/mqdefault.jpg', '2024-11-27 15:30:07'),
(37, 1, 'WgZ8jL5qisw', 'อวสาน “ทนายตั้ม” #10 ! ตร.สอย “ดาว” จับตาทนายคนต่อไป | เรื่องใหญ่รายวัน | 27 พ.ย. 67 | one31', 'https://i.ytimg.com/vi/WgZ8jL5qisw/mqdefault.jpg', '2024-11-27 15:31:16'),
(38, 1, 'cpaSY9JW7kA', 'WATCH: NBI gives details on subpoena served to VP Sara Duterte after &#39;kill threat&#39; | ANC', 'https://i.ytimg.com/vi/cpaSY9JW7kA/mqdefault.jpg', '2024-11-27 15:32:25'),
(39, 1, 'AeB94TO3ZS8', '[🔴LIVE] 김건희 외척+경찰에게도 당하는 한동훈/ 오세훈발 핵폭탄, 드디어 보수내분으로 가는 분수령(인규픽)/ 김진성 진술, 기자들은 왜 모르는 척 하나(띵굴픽) I 뉴스배틀', 'https://i.ytimg.com/vi/AeB94TO3ZS8/mqdefault_live.jpg', '2024-11-27 15:34:24'),
(40, 1, 'ajJNI2Yz3UY', '13 Cristiano siuuu in different Voices | Siuuu Meme', 'https://i.ytimg.com/vi/ajJNI2Yz3UY/mqdefault.jpg', '2024-11-27 15:34:46'),
(41, 1, 'kQyCp9zOBk4', 'Cristiano Ronaldo SIUUU!!!', 'https://i.ytimg.com/vi/kQyCp9zOBk4/mqdefault.jpg', '2024-11-27 15:35:40'),
(44, 1, 'riQERLpQCYY', 'Luận Điệu Nực Cười Của Ts Vũ Thế Dũng', 'https://i.ytimg.com/vi/riQERLpQCYY/mqdefault.jpg', '2024-11-28 13:40:20'),
(45, 3, 'OrDB4jpA1g8', 'JACK - J97 | THIÊN LÝ ƠI | Official Music Video', 'https://i.ytimg.com/vi/OrDB4jpA1g8/mqdefault.jpg', '2024-11-28 13:43:53'),
(46, 1, 'KIi5qckbuJg', 'Priyanka Gandhi To Take Oath Live: Parliament Winter Session | Rahul Gandhi | Wayanad Seat | PM Modi', 'https://i.ytimg.com/vi/KIi5qckbuJg/mqdefault.jpg', '2024-11-28 13:55:32'),
(47, 1, 'IzSYlr3VI1A', 'ĐỖ PHÚ QUÍ &#39;PICKLEBALL&#39; OFFICIAL VISUALIZER', 'https://i.ytimg.com/vi/IzSYlr3VI1A/mqdefault.jpg', '2024-11-28 17:39:20'),
(48, 1, 'AE1FFiG8TQI', 'Xếp Hạng Trang Phục Toàn Bộ Movie Doraemon | Doraemon Điện Ảnh | Ten Anime', 'https://i.ytimg.com/vi/AE1FFiG8TQI/mqdefault.jpg', '2024-11-28 17:40:19'),
(52, 1, '5n4l8mklgfU', 'Lại phát hiện vật thể lạ ở bờ biển Quảng Ngãi', 'https://i.ytimg.com/vi/5n4l8mklgfU/mqdefault.jpg', '2024-11-28 18:38:07'),
(53, 1, 'kvrDF4Su_2A', 'Nhạc Trẻ Ballad Việt Hay Nhất 2024 | Lk Nhạc Trẻ Mới Gây Nghiện | Nhạc Việt Hot Nhất Hiện Nay', 'https://i.ytimg.com/vi/kvrDF4Su_2A/mqdefault.jpg', '2024-11-28 19:38:21'),
(54, 1, 'aOm3zmevhFI', 'Giành giật điểm số liên tục trong phần thi Về đích, phần thắng thuộc về ai? | Đường lên đỉnh Olympia', 'https://i.ytimg.com/vi/aOm3zmevhFI/mqdefault.jpg', '2024-11-28 19:42:02'),
(55, 1, 'bNbP4O9b_Ak', '10 Ca Khúc KHUYNH ĐẢO TOP TRENDING Nửa Đầu 2024 | Phan Mạnh Quỳnh, Văn Mai Hương, Quốc Thiên... Live', 'https://i.ytimg.com/vi/bNbP4O9b_Ak/mqdefault.jpg', '2024-11-28 19:42:13'),
(56, 1, 'aF1yvp7Lygk', '🔴LIVE:  gaming', 'https://i.ytimg.com/vi/aF1yvp7Lygk/mqdefault_live.jpg', '2024-11-28 23:05:28'),
(57, 1, 'rZlDNofyEL8', 'Nhạc Remix TikTok Triệu View - BXH Nhạc Trẻ Remix Hay Nhất Hiện Nay🎼Top 20 Nhạc TikTok Hay 2024', 'https://i.ytimg.com/vi/rZlDNofyEL8/mqdefault.jpg', '2024-11-28 23:05:51'),
(58, 1, 'Nd8Nc5-vo74', 'Restream hôm qua.........................', 'https://i.ytimg.com/vi/Nd8Nc5-vo74/mqdefault_live.jpg', '2024-11-28 23:07:26'),
(59, 1, '77TatYJyoaI', '【スプラトゥーン3 ガチマッチ】ハイハイからよちよちへ🐤 【本間ひまわり/にじさんじ】', 'https://i.ytimg.com/vi/77TatYJyoaI/mqdefault.jpg', '2024-11-28 23:07:39'),
(61, 1, 'ZU3W8GamirQ', 'TT Biden đề nghị duyệt thêm 24 tỷ đô viện trợ cho Ukraine. NATO muốn tấn công NGA phủ đầu.', 'https://i.ytimg.com/vi/ZU3W8GamirQ/mqdefault.jpg', '2024-11-28 23:08:00'),
(63, 5, 'ajJNI2Yz3UY', '13 Cristiano siuuu in different Voices | Siuuu Meme', 'https://i.ytimg.com/vi/ajJNI2Yz3UY/mqdefault.jpg', '2024-11-29 15:29:50'),
(64, 5, 'lmV4dx6PPjQ', '[S11] Doraemon - Phần 2 | Tổng Hợp Bộ Hoạt Hình Doraemon Mùa 11 Hay Nhất - POPS Kids', 'https://i.ytimg.com/vi/lmV4dx6PPjQ/mqdefault.jpg', '2024-11-29 15:30:56'),
(65, 5, '4JtOTAIpiJs', 'Doraemon Vietsub: Jaian Ở Địa Ngục- Thành Lập Công Ty Báo Lá Cải', 'https://i.ytimg.com/vi/4JtOTAIpiJs/mqdefault.jpg', '2024-11-29 15:39:07'),
(66, 5, 'IquMtiKqs_0', '29/11/2024 | Kênh chia sẻ kiến thức TFT ! !legi', 'https://i.ytimg.com/vi/IquMtiKqs_0/mqdefault_live.jpg', '2024-11-29 16:29:31'),
(67, 1, 'QN5ieBU6shk', 'Thắng Dương TV Lên Tiếng Đính Chính Giải Đáp 1 Số Khán Giả Hiểu Lầm Các Sư Thầy', 'https://i.ytimg.com/vi/QN5ieBU6shk/mqdefault_live.jpg', '2024-11-29 16:35:08'),
(68, 1, 'FxpPY6QW2qU', 'Tổng thống Bulgaria và phu nhân ngồi tàu nghe nhạc ngắm cảnh sông Sài Gòn', 'https://i.ytimg.com/vi/FxpPY6QW2qU/mqdefault.jpg', '2024-11-29 16:35:42'),
(69, 1, '-OKd84VR6Lc', '🛑Trực tiếp Chim Sẻ Đi Nắng Ngày 29/11/2024 #aoe #chimsedinang', 'https://i.ytimg.com/vi/-OKd84VR6Lc/mqdefault_live.jpg', '2024-11-29 16:40:18'),
(70, 6, 'fvVB5T1PokM', '💥XRP JUST HIT A NEW HIGH!!! THIS IS CRAZY!!! ($1.65)', 'https://i.ytimg.com/vi/fvVB5T1PokM/mqdefault_live.jpg', '2024-11-29 17:01:21'),
(71, 1, 'mNw4sOQ_t7E', 'Thiên Lý Ơi - Jack-J97 「Cukak Remix」/ Audio Lyrics Video', 'https://i.ytimg.com/vi/mNw4sOQ_t7E/mqdefault.jpg', '2024-12-03 13:52:02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `video_history`
--
ALTER TABLE `video_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `video_history`
--
ALTER TABLE `video_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `video_history`
--
ALTER TABLE `video_history`
  ADD CONSTRAINT `video_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
