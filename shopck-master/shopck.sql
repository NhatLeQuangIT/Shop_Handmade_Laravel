-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 16, 2019 lúc 08:57 AM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopck`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `avatar`, `active`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Quang Nhật', 'nhatalit@gmail.com', NULL, NULL, 1, '$2y$10$vzoxQncQ5BddiwN2pI7I1efJTghMuEOu2NfxWl7.ycsfIM32ripi.', 'KIWVDLjkZbMYbUzXx9adnGpozlWWw5nnW8LbmaeSieeXQcE3J94EUvjn4E68', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` longtext COLLATE utf8mb4_unicode_ci,
  `a_active` tinyint(4) NOT NULL DEFAULT '1',
  `a_author_id` int(11) NOT NULL DEFAULT '0',
  `a_description_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_title_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_view` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_description`, `a_content`, `a_active`, `a_author_id`, `a_description_seo`, `a_title_seo`, `a_avatar`, `a_view`, `created_at`, `updated_at`, `c_hot`) VALUES
(1, 'Top 10 ý tưởng làm đồ handmade đơn giản, cực độc đáo “vạn người mê”', 'top-10-y-tuong-lam-do-handmade-don-gian-cuc-doc-dao-van-nguoi-me', 'Top 10 ý tưởng làm đồ handmade đơn giản, cực độc đáo “vạn người mê”', '<p>Đồ handmade (hay c&ograve;n gọi l&agrave; đồ th&ugrave; c&ocirc;ng) l&agrave; những đồ được tự l&agrave;m bằng tay từ những nguy&ecirc;n vật liệu sẵn c&oacute;, qua sự tỉ mỉ, kh&eacute;o l&eacute;o của người thực hiện để tạo ra được những m&oacute;n đồ xinh xinh, độc đ&aacute;o. Ch&iacute;nh v&igrave; sự &ldquo;c&oacute; một kh&ocirc;ng hai&rdquo; của những đồ handmade đẹp mắt n&agrave;y, rất nhiều người đ&atilde; tự l&agrave;m những đồ handmade độc đ&aacute;o để kinh doanh.</p>\r\n\r\n<p>C&oacute; nhiều&nbsp;<strong>c&aacute;ch l&agrave;m đồ handmade</strong>&nbsp;đơn giản bằng giấy hay c&aacute;c loại nguy&ecirc;n liệu sẵn c&oacute; như bằng vải nỉ, l&otilde;i giấy, th&igrave;a nhựa&hellip; Nhưng bạn sẽ bị th&ocirc;i mi&ecirc;n với&nbsp;20 &yacute; tưởng tự l&agrave;m đồ handmade n&agrave;y v&igrave; n&oacute; qu&aacute;&nbsp;đẹp. Đ&acirc;y cũng l&agrave; cơ hội l&agrave;m gi&agrave;u nếu bạn biết c&aacute;ch vận dụng những gợi &yacute; n&agrave;y v&agrave;o sản xuất thực tế. Chỉ cần c&oacute; đ&ocirc;i b&agrave;n tay kh&eacute;o l&eacute;o, những m&oacute;n đồ handmade dễ thương sẽ được bạn l&agrave;m một c&aacute;ch kh&aacute; đơn giản.</p>\r\n\r\n<p>B&agrave;i viết sau đ&acirc;y, Blog Sapo sẽ chia sẻ cho bạn 20 &yacute; tưởng l&agrave;m đồ handmade đẹp, đơn giản m&agrave; bạn c&oacute; thể dễ d&agrave;ng thực hiện theo. H&atilde;y c&ugrave;ng theo d&otilde;i v&agrave; tạo ra những m&oacute;n đồ handmade đẹp theo phong c&aacute;ch ri&ecirc;ng của bạn.</p>\r\n\r\n<p><img alt=\"\" height=\"500\" sizes=\"(max-width: 600px) 100vw, 600px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa1.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa1.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa1-300x250.jpg 300w\" title=\"Top 14 ý tưởng handmade cực độc đáo khiến thế giới “vỡ òa”\" width=\"600\" /></p>\r\n\r\n<h2>1. Tự l&agrave;m đồ handmade từ những chiếc bật lửa cũ</h2>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 1\" height=\"359\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-1.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-1.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-1-300x196.jpg 300w\" title=\"Top 14 ý tưởng đồ handmade cực độc đáo khiến thế giới “vỡ òa” 1\" width=\"550\" /></p>\r\n\r\n<p>Nếu bạn l&agrave; người kh&eacute;o tay v&agrave; y&ecirc;u th&iacute;ch xe cộ th&igrave; tại sao bạn kh&ocirc;ng tự tạo ra cho m&igrave;nh một m&ocirc; h&igrave;nh xe ph&acirc;n khối lớn cực ngầu. Đừng vội v&agrave;ng vứt bỏ những chiếc bật lửa cũ, bạn h&atilde;y tận dụng n&oacute; để l&agrave;m một chiếc xe m&aacute;y ph&acirc;n khối lớn theo phong c&aacute;ch handmade cực đỉnh. Chi tiết c&aacute;ch l&agrave;m đồ handmade cực ngầu n&agrave;y bạn c&oacute; thể tham khảo qua video hướng dẫn tr&ecirc;n k&ecirc;nh Youtube, sau đ&oacute; thực hiện theo.</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 2\" height=\"420\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-2.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-2.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-2-300x229.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 3\" height=\"420\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-3.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-3.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-3-300x229.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>V&agrave; đ&acirc;y l&agrave; sản phẩm cuối c&ugrave;ng của ch&uacute;ng ta, bạn c&oacute; thấy k&iacute;ch th&iacute;ch kh&ocirc;ng? Một chiếc xe ph&acirc;n khối lớn rất ho&agrave;nh tr&aacute;ng v&agrave; hấp dẫn.</p>\r\n\r\n<h2>2. L&agrave;m đồ handmade đơn giản từ những chiếc th&igrave;a nhựa</h2>\r\n\r\n<p>Những chiếc th&igrave;a nhựa d&ugrave;ng một lần sau khi được người ta sử dụng thường bị vứt đi. Tại sao bạn kh&ocirc;ng giữ ch&uacute;ng lại v&agrave; tự l&agrave;m đồ handmade độc đ&aacute;o bằng ch&iacute;nh những chiếc th&igrave;a nhựa n&agrave;y? Một chiếc gương với viền hoa c&uacute;c được l&agrave;m từ những chiếc th&igrave;a bỏ đi chắc chắn sẽ l&agrave; một m&oacute;n đồ handmade đẹp, độc đ&aacute;o m&agrave; bạn n&ecirc;n thử đ&oacute;.</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 4\" height=\"654\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-4.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-4.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-4-252x300.jpg 252w\" title=\"Top 14 ý tưởng đồ handmade cực độc đáo khiến thế giới “vỡ òa” 2\" width=\"550\" /></p>\r\n\r\n<p>Những chiếc th&igrave;a nhựa được cắt bỏ phần c&aacute;n để tạo h&igrave;nh c&aacute;nh hoa c&uacute;c.</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 5\" height=\"341\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-5.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-5.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-5-300x186.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>Qu&eacute;t sơn m&agrave;u kh&aacute;c, nếu bạn muốn những c&aacute;nh hoa c&oacute; điểm nhấn m&agrave;u sắc</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 6\" height=\"525\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-6.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-6.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-6-300x286.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>V&agrave; đ&acirc;y l&agrave; chiếc gương hoa c&uacute;c đẹp nhất trong lịch sử m&agrave; bạn c&oacute; thể học c&aacute;ch l&agrave;m n&oacute; một c&aacute;ch đơn giản ngay từ h&ocirc;m nay.</p>\r\n\r\n<blockquote>\r\n<p>Xem th&ecirc;m<strong>:</strong>&nbsp;<a href=\"https://www.sapo.vn/blog/huong-dan-lam-do-handmade-dep-va-don-gian/\">Hướng dẫn l&agrave;m đồ handmade đẹp, đơn giản</a></p>\r\n</blockquote>\r\n\r\n<h2>3. Gara để xe ngập tr&agrave;n m&agrave;u sắc với vỏ chai nhựa t&aacute;i chế</h2>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 7\" height=\"366\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-7.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-7.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-7-300x200.jpg 300w\" title=\"Top 14 ý tưởng handmade cực độc đáo khiến thế giới “vỡ òa” 3\" width=\"550\" /></p>\r\n\r\n<p>Đ&acirc;y l&agrave; c&aacute;ch l&agrave;m đồ handmade kh&aacute; c&ocirc;ng phu nhưng sẽ tạo ra một sản phẩm cực chất cho chiếc gara để xe của bạn. Nguy&ecirc;n liệu l&agrave; những chai nhựa t&aacute;i chế với đầy đủ m&agrave;u sắc, được treo l&ecirc;n như thế n&agrave;y.</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 8\" height=\"891\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-8.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-8.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-8-185x300.jpg 185w\" width=\"550\" /></p>\r\n\r\n<p>Phần đ&aacute;y chai sẽ được sơn c&aacute;c m&agrave;u xanh/v&agrave;ng/đỏ t&ugrave;y theo cảm hứng v&agrave; m&agrave;u sắc bạn y&ecirc;u th&iacute;ch</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 9\" height=\"395\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-9.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-9.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-9-300x215.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>V&agrave; đ&acirc;y l&agrave; kết quả! Bạn thấy kh&ocirc;ng, với c&aacute;ch l&agrave;m đồ handmade độc đ&aacute;o như n&agrave;y, bạn vừa c&oacute; thể tận dụng được c&aacute;c chai lọ bỏ đi, vừa tạo ra được một gara xe v&ocirc; c&ugrave;ng mới lạ v&agrave; đầy m&agrave;u sắc. Thật tuyệt phải kh&ocirc;ng n&agrave;o.</p>\r\n\r\n<h2>4. C&aacute;ch&nbsp;l&agrave;m đ&egrave;n ch&ugrave;m handmade đẹp lung linh</h2>\r\n\r\n<p><em><strong>Loại đ&egrave;n ch&ugrave;m từ th&igrave;a nhựa:</strong></em></p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 10\" height=\"438\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-10.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-10.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-10-300x239.jpg 300w\" title=\"Top 14 ý tưởng handmade cực độc đáo khiến thế giới “vỡ òa” 4\" width=\"550\" /></p>\r\n\r\n<p>Những nguy&ecirc;n liệu cần chuẩn bị trước khi bắt đầu:</p>\r\n\r\n<ul>\r\n	<li>2 chai nhựa</li>\r\n	<li>1 s&uacute;ng bắn keo</li>\r\n	<li>1 hộp th&igrave;a nhựa</li>\r\n	<li>1 b&oacute;ng đ&egrave;n</li>\r\n	<li>k&igrave;m, k&eacute;o cắt,..</li>\r\n</ul>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 11\" height=\"827\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-11.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-11.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-11-200x300.jpg 200w\" width=\"550\" /></p>\r\n\r\n<p>C&ocirc;ng đoạn&nbsp;phết keo v&agrave; d&aacute;n những chiếc th&igrave;a nhựa &ocirc;m quanh chiếc chai</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 12\" height=\"827\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-12.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-12.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-12-200x300.jpg 200w\" width=\"550\" /></p>\r\n\r\n<p>Từ những nguy&ecirc;n liệu l&agrave;m đồ handmade dễ kiếm, bạn đ&atilde; tạo ra một chiếc đ&egrave;n ch&ugrave;m kh&aacute; ấn tượng v&agrave; dễ d&agrave;ng</p>\r\n\r\n<p><em><strong>L&agrave;m đồ handmade bằng giấy &ndash; đ&egrave;n ch&ugrave;m bằng b&igrave;a cứng:</strong></em></p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 26\" height=\"422\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-261.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-261.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-261-300x230.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>Cắt b&igrave;a cứng theo dải chữ nhật v&agrave; gấp nếp th&agrave;nh 5 hoặc 6 kh&uacute;c bằng nhau</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 27\" height=\"464\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-27.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-27.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-27-300x253.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>Tạo h&igrave;nh 6 c&aacute;nh hoặc 5 c&aacute;nh</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 28\" height=\"495\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-28.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-28.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-28-300x270.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>V&agrave; đ&acirc;y l&agrave; kết quả!</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 29\" height=\"413\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-29.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-29.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-29-300x225.jpg 300w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-29-320x240.jpg 320w\" width=\"550\" /></p>\r\n\r\n<p>Một chiếc đ&egrave;n tr&ugrave;m handmade được trưng b&agrave;y tinh tế sẽ l&agrave;m cho kh&ocirc;ng gian căn ph&ograve;ng trở n&ecirc;n quyến rũ v&agrave; hấp dẫn hơn bao giờ hết. H&atilde;y thực hiện theo c&aacute;ch l&agrave;m đồ handmade đơn giản tr&ecirc;n v&agrave; bạn sẽ bất ngờ về th&agrave;nh quả m&agrave; m&igrave;nh tạo ra đ&oacute;.</p>\r\n\r\n<h2>5. &Yacute; tưởng trang tr&iacute; cho gi&agrave;y d&eacute;p cực s&aacute;ng tạo</h2>\r\n\r\n<p>Nếu bạn cảm thấy đ&ocirc;i gi&agrave;y của m&igrave;nh qu&aacute; đơn điệu hay muốn tạo ra kh&aacute;c biệt với phong c&aacute;ch h&agrave;ng ng&agrave;y th&igrave; đừng ngần ngại thực hiện theo c&aacute;c bước sau đ&acirc;y nh&eacute;! Chắc chắn bạn sẽ c&oacute; một đ&ocirc;i gi&agrave;y đẹp, độc, lạ, v&agrave; kh&ocirc;ng sợ đụng h&agrave;ng.</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 13\" height=\"366\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-13.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-13.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-13-300x200.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>Nguy&ecirc;n liệu chuẩn bị cho m&oacute;n đồ handmade n&agrave;y kh&aacute; dễ kiếm v&agrave; đơn giản, chỉ cần c&oacute; b&uacute;t m&agrave;u, giấy v&agrave; k&eacute;o. H&atilde;y bắt đầu th&ocirc;i n&agrave;o!</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 14\" height=\"416\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-14.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-14.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-14-300x227.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>Nhớ d&ugrave;ng thước kẻ v&agrave; b&uacute;t ch&igrave; ph&aacute;c qua họa tiết trước khi bắt đầu t&ocirc; m&agrave;u cho đ&ocirc;i gi&agrave;y</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 15\" height=\"825\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-15.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-15.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-15-200x300.jpg 200w\" width=\"550\" /></p>\r\n\r\n<p>C&aacute;ch l&agrave;m đồ handmade n&agrave;y cũng kh&aacute; hay v&agrave; th&uacute; vị chứ nhỉ. V&agrave; th&agrave;nh quả l&agrave; một đ&ocirc;i gi&agrave;y handmade hấp dẫn v&agrave; ph&aacute; c&aacute;ch đ&atilde; ra đời.</p>\r\n\r\n<h2>6. L&agrave;m th&uacute; nhồi b&ocirc;ng handmade với một chiếc găng tay</h2>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 16\" height=\"221\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-16.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-16.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-16-300x121.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>C&aacute;ch l&agrave;m đồ handmade đẹp n&agrave;y kh&aacute; đơn giản v&agrave; nguy&ecirc;n liệu để bạn l&agrave;m m&oacute;n&nbsp;đồ handmade n&agrave;y kh&aacute; dễ kiếm, chỉ bao gồm gang tay, b&ocirc;ng trắng v&agrave; kim chỉ. Thực hiện lần lượt từng bước như h&igrave;nh hướng dẫn nh&eacute;.</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 17\" height=\"292\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-17.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-17.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-17-300x159.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>Một chiếc m&oacute;c ch&igrave;a kh&oacute;a th&uacute; nhồi b&ocirc;ng handmade bằng vải nỉ hoặc len quả thực l&agrave; rất kh&aacute;c biệt đ&uacute;ng kh&ocirc;ng n&agrave;o. Bạn c&oacute; thể tự l&agrave;m đồ handmade như n&agrave;y để tặng bạn trai, tặng bạn g&aacute;i hay người y&ecirc;u của m&igrave;nh trong những sự kiện quan trọng nh&eacute;!</p>\r\n\r\n<h2>7. L&agrave;m hoa handmade từ&nbsp;l&otilde;i giấy vệ sinh</h2>\r\n\r\n<p>Bức tường nh&agrave; bạn qu&aacute; đơn điệu? Bạn muốn trang tr&iacute; cho n&oacute; th&ecirc;m phần sinh động, hấp dẫn. Vậy th&igrave; chắc chắn bạn sẽ kh&ocirc;ng thể bỏ qua c&aacute;ch l&agrave;m đồ handmade độc đ&aacute;o với những b&ocirc;ng hoa được l&agrave;m từ l&otilde;i giấy vệ sinh n&agrave;y rồi. H&atilde;y c&ugrave;ng theo d&otilde;i c&aacute;ch l&agrave;m nh&eacute;!</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 18\" height=\"413\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-18.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-18.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-18-300x225.jpg 300w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-18-320x240.jpg 320w\" width=\"550\" /></p>\r\n\r\n<p>Nguy&ecirc;n liệu cần chuẩn bị để tự l&agrave;m đồ handmade bằng giấy n&agrave;y kh&aacute; đơn giản, bao gồm: l&otilde;i giấy vệ sinh, k&eacute;o, k&eacute;o d&aacute;n v&agrave; sơn m&agrave;u.</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 19\" height=\"413\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-19.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-19.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-19-300x225.jpg 300w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-19-320x240.jpg 320w\" width=\"550\" /></p>\r\n\r\n<p>Đầu ti&ecirc;n, cắt l&otilde;i giấy th&agrave;nh từng v&ograve;ng tr&ograve;n nhỏ d&agrave;y khoảng 1cm</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 20\" height=\"774\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-20.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-20.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-20-213x300.jpg 213w\" width=\"550\" /></p>\r\n\r\n<p>Gắn ch&uacute;ng lại với nhau bằng keo d&iacute;nh, v&agrave; t&ugrave;y theo tr&iacute; tưởng tượng thi&ecirc;n ph&uacute; của m&igrave;nh, bạn c&oacute; thể sắp xếp những c&aacute;nh hoa sao cho nghệ thuật v&agrave; l&ocirc;i cuốn nhất. Những t&aacute;c phẩm handmade n&agrave;y trang tr&iacute; tr&ecirc;n tường hay s&acirc;n khấu cũng kh&aacute; đẹp mắt v&agrave; mới lạ đ&oacute;.</p>\r\n\r\n<h2>8. L&agrave;m một c&acirc;y chổi&nbsp;handmade từ chai nhựa</h2>\r\n\r\n<p>Nh&agrave; bạn c&oacute; nhiều chai nhựa nhưng kh&ocirc;ng biết d&ugrave;ng để l&agrave;m g&igrave;? Tại sao bạn kh&ocirc;ng tận dụng n&oacute; để l&agrave;m một m&oacute;n đồ handmade độc đ&aacute;o &ndash; một c&acirc;y chổi từ chai nhựa?</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 39\" height=\"411\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-39.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-39.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-39-300x224.jpg 300w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-39-320x240.jpg 320w\" width=\"550\" /></p>\r\n\r\n<p>C&aacute;ch l&agrave;m m&oacute;n đồ handmade n&agrave;y kh&aacute; đơn giản, bạn chỉ cần thực hiện theo c&aacute;c bước trong ảnh tr&ecirc;n l&agrave; sẽ c&oacute; ngay một c&acirc;y chổi để sử dụng rồi.</p>\r\n\r\n<h2>9. S&aacute;ng tạo đ&egrave;n chiếu s&aacute;ng gi&uacute;p tiết kiệm điện năng</h2>\r\n\r\n<p>Ng&agrave;y nay, vấn đề tiết kiệm nhi&ecirc;n liệu, tiết kiệm điện đang ng&agrave;y c&agrave;ng được quan t&acirc;m. Vậy tại sao bạn kh&ocirc;ng d&ugrave;ng những nguy&ecirc;n liệu sẵn c&oacute; để tạo ra một thiết bị tiết kiệm điện năng?</p>\r\n\r\n<p><img alt=\"Top 14 ý tưởng đồ handmade cực độc đáo khiến thế giới “vỡ òa” 21\" height=\"260\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-21.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-21.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-21-300x142.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>L&agrave;m&nbsp;một chiếc đ&egrave;n chiếu s&aacute;ng handmade tự nhi&ecirc;n cũng v&ocirc; c&ugrave;ng đơn giản. Bạn chỉ cần đổ đầy nước v&agrave;o b&ecirc;n trong một chai nhựa rỗng c&ugrave;ng với bỏ v&agrave;o một vi&ecirc;n thuốc tẩy trắng. Sau đ&oacute;, đặt chai nhựa l&ecirc;n một lỗ đ&atilde; kho&eacute;t sẵn tr&ecirc;n m&aacute;i nh&agrave; (thường l&agrave; m&aacute;i t&ocirc;n). Do nguy&ecirc;n l&yacute; kh&uacute;c xạ của &aacute;nh s&aacute;ng Mặt trời n&ecirc;n chai nhựa c&oacute; thể ph&aacute;t s&aacute;ng như một b&oacute;ng đ&egrave;n trong đ&ecirc;m tối, với thời gian chiếu s&aacute;ng tối đa l&agrave; 10 tiếng trong đ&ecirc;m.</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 22\" height=\"525\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-22.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-22.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-22-300x286.jpg 300w\" width=\"550\" /></p>\r\n\r\n<h2>10. Th&igrave;a nhựa cũng c&oacute; thể l&agrave;m đồ trang sức</h2>\r\n\r\n<p>Bạn đ&atilde; bao giờ nghĩ m&igrave;nh sẽ tự l&agrave;m một chiếc v&ograve;ng cổ handmade bằng th&igrave;a nhựa chưa? Nếu bạn đ&atilde; qu&aacute; ch&aacute;n c&aacute;c loại trang sức được b&aacute;n th&ocirc;ng thường ngo&agrave;i tiệm v&agrave; muốn t&igrave;m cho m&igrave;nh một đồ handmade đẹp, độc đ&aacute;o th&igrave; đừng bỏ qua &yacute; tưởng n&agrave;y nh&eacute;!.</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 23\" height=\"490\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-23.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-23.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-23-300x267.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>Đầu ti&ecirc;n, bạn sẽ cắt những chiếc th&igrave;a nhựa n&agrave;y theo những độ d&agrave;i kh&aacute;c nhau.</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 24\" height=\"430\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-24.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-24.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-24-300x235.jpg 300w\" width=\"550\" /></p>\r\n\r\n<p>Sau đ&oacute;, hơ những chiếc th&igrave;a nhựa đ&oacute; tr&ecirc;n ngọn nến. Bước tạo h&igrave;nh cho c&aacute;nh hoa n&agrave;y kh&aacute; quan trọng v&agrave; sẽ ảnh hưởng đến th&agrave;nh phẩm cuối c&ugrave;ng, ch&iacute;nh v&igrave; vậy bạn phải thực hiện bước n&agrave;y rất cẩn thận.</p>\r\n\r\n<p><img alt=\"Cách làm đồ handmade đơn giản cực độc đáo khiến thế giới “vỡ òa” 25\" height=\"734\" sizes=\"(max-width: 550px) 100vw, 550px\" src=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-25.jpg\" srcset=\"https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-25.jpg 550w, https://www.sapo.vn/blog/wp-content/uploads/2016/01/Top-14-y-tuong-handmade-cuc-doc-dao-khien-the-gioi-vo-oa-25-225x300.jpg 225w\" width=\"550\" /></p>\r\n\r\n<p>Th&agrave;nh quả l&agrave; một chiếc d&acirc;y chuyền rất đẹp v&agrave; phong c&aacute;ch phải kh&ocirc;ng n&agrave;o? Bạn thấy đấy, tự l&agrave;m đồ handmade đẹp vừa c&oacute; thể t&aacute;i chế nguy&ecirc;n liệu bảo vệ m&ocirc;i trường, vừa c&oacute; được những m&oacute;n đồ handmade độc đ&aacute;o. Ngo&agrave;i chiếc d&acirc;y chuyền handmade được l&agrave;m từ những chiếc th&igrave;a t&aacute;i chế n&agrave;y ra, bạn cũng c&oacute; thể ứng dụng c&aacute;ch n&agrave;y để l&agrave;m những chiếc v&ograve;ng tay handmade độc đ&aacute;o kh&aacute;c nữa đấy.</p>', 1, 0, 'Top 10 ý tưởng làm đồ handmade đơn giản, cực độc đáo “vạn người mê”', 'Top 10 ý tưởng làm đồ handmade đơn giản, cực độc đáo “vạn người mê”', '2019-12-10__y-tuong-lam-do-handmade.jpg', 0, '2019-12-10 12:14:06', '2019-12-11 18:48:52', 1),
(2, 'Làm bướm xinh đậu trên tách trà ngọt ngào', 'lam-buom-xinh-dau-tren-tach-tra-ngot-ngao', 'Làm bướm xinh đậu trên tách trà ngọt ngào', '<p>Trong những buổi chiều rỗi r&atilde;i, c&ograve;n g&igrave; tuyệt hơn l&agrave; nh&acirc;m nhi một t&aacute;ch tr&agrave; thoang thoảng vị đắng&nbsp;khi mới nhấp nhưng để lại vị ngọt cuối nơi cuống họng&hellip; Nhưng sẽ c&agrave;ng ngọt ng&agrave;o v&agrave; l&atilde;ng mạn hơn khi c&oacute; một ch&uacute; bướm đậu tr&ecirc;n v&agrave;nh t&aacute;ch tr&agrave; thưởng thức c&ugrave;ng bạn.&nbsp;C&ugrave;ng l&agrave;m theo hướng dẫn của Shea Handmade để h&ocirc; biến d&acirc;y t&uacute;i tr&agrave; đơn điệu th&agrave;nh một ch&uacute;&nbsp;bướm cực đ&aacute;ng y&ecirc;u với&nbsp;<strong>c&aacute;ch l&agrave;m bướm giấy trang tr&iacute; tr&agrave; t&uacute;i lọc</strong>&nbsp;sau đ&acirc;y bạn nh&eacute;!</p>\r\n\r\n<p><img alt=\"cách làm bướm giấy trang trí trà túi lọc\" height=\"683\" sizes=\"(max-width: 499px) 100vw, 499px\" src=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2016/07/H2.jpg?resize=499%2C683\" srcset=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2016/07/H2.jpg?resize=219%2C300 219w, http://i0.wp.com/sheahandmade.com/wp-content/uploads/2016/07/H2.jpg?resize=585%2C801 585w, http://i2.wp.com/sheahandmade.com/wp-content/uploads/2016/07/H2.jpg?w=682 682w\" width=\"499\" /></p>\r\n\r\n<p><img alt=\"cách làm bướm giấy trang trí trà túi lọc\" height=\"698\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i2.wp.com/sheahandmade.com/wp-content/uploads/2016/07/H1.jpg?resize=500%2C698\" srcset=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2016/07/H1.jpg?resize=215%2C300 215w, http://i0.wp.com/sheahandmade.com/wp-content/uploads/2016/07/H1.jpg?resize=585%2C817 585w, http://i2.wp.com/sheahandmade.com/wp-content/uploads/2016/07/H1.jpg?w=682 682w\" width=\"500\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Nguy&ecirc;n liệu:</strong></h2>\r\n\r\n<ul>\r\n	<li>Mẫu bướm để in</li>\r\n	<li>Giấy b&igrave;a cứng</li>\r\n	<li>T&uacute;i tr&agrave;</li>\r\n	<li>Hồ d&aacute;n</li>\r\n	<li>K&eacute;o</li>\r\n</ul>\r\n\r\n<h2><strong>C&aacute;ch l&agrave;m bướm giấy trang tr&iacute; tr&agrave; t&uacute;i lọc:</strong></h2>\r\n\r\n<ul>\r\n	<li>Chọn m&agrave;u giấy để in bướm. Bạn c&oacute; thể chọn giấy m&agrave;u nước với những họa tiết loang lổ như Shea để c&oacute; hiệu ứng thị gi&aacute;c hơn!</li>\r\n	<li>Chọn một trong c&aacute;c mẫu bướm v&agrave; in ra giấy vừa chọn. Cắt rời.</li>\r\n	<li>Đặt phần lưng của hai ch&uacute; bướm lại với nhau.</li>\r\n	<li>Gập bướm l&agrave;m đ&ocirc;i v&agrave; cắt một đường nhỏ ngay dưới điểm chia ch&uacute; bướm l&agrave;m đ&ocirc;i theo chiều dọc.</li>\r\n	<li>B&ocirc;i hồ l&ecirc;n phần lưng của cả hai ch&uacute; bướm.</li>\r\n	<li>Đặt d&acirc;y t&uacute;i tr&agrave; l&ecirc;n lưng một ch&uacute; bướm.</li>\r\n	<li>D&aacute;n ch&uacute; bướm c&ograve;n lại sao cho đ&egrave; l&ecirc;n tr&ecirc;n d&acirc;y v&agrave; tr&ugrave;ng kh&iacute;t với ch&uacute; bướm kia.</li>\r\n</ul>\r\n\r\n<p>T&uacute;i tr&agrave; của bạn tr&ocirc;ng đẹp hơn rất nhiều phải kh&ocirc;ng n&agrave;o? Với đường cắt nhỏ tr&ecirc;n th&acirc;n ch&uacute; bướm, h&atilde;y ghim&nbsp;v&agrave;o th&agrave;nh t&aacute;ch nh&eacute;! Một ch&uacute; bướm đậu tr&ecirc;n t&aacute;ch tr&agrave; của bạn &ndash; tr&ocirc;ng mới tuyệt l&agrave;m sao!</p>\r\n\r\n<p><img alt=\"cách làm bướm giấy trang trí trà túi lọc\" height=\"500\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2016/07/H5-1.jpg?resize=500%2C500\" srcset=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2016/07/H5-1.jpg?resize=150%2C150 150w, http://i1.wp.com/sheahandmade.com/wp-content/uploads/2016/07/H5-1.jpg?resize=300%2C300 300w, http://i0.wp.com/sheahandmade.com/wp-content/uploads/2016/07/H5-1.jpg?w=500 500w\" width=\"500\" /></p>', 1, 0, 'Làm bướm xinh đậu trên tách trà ngọt ngào', 'Làm bướm xinh đậu trên tách trà ngọt ngào', '2019-12-10__h2-1.jpg', 0, '2019-12-10 12:18:40', '2019-12-11 18:48:54', 1),
(3, 'Cách làm ô giấy tí hon rung rinh trong gió', 'cach-lam-o-giay-ti-hon-rung-rinh-trong-gio', 'Cách làm ô giấy tí hon rung rinh trong gió', '<p style=\"text-align:justify\">H&ocirc;m nay m&igrave;nh&nbsp;sẽ hướng dẫn&nbsp;c&aacute;c bạn&nbsp;<strong>c&aacute;ch l&agrave;m &ocirc; giấy&nbsp;</strong>t&iacute; hon&nbsp;theo kĩ thuật gấp giấy Nhật Bản. Rất đơn giản th&ocirc;i, chỉ với 5 &ndash; 10 ph&uacute;t, bạn đ&atilde; c&oacute; những chiếc &ocirc; thật xinh xắn&nbsp;treo&nbsp;trước cửa sổ nh&agrave; m&igrave;nh. Mỗi khi gi&oacute; thổi, &ocirc; rung rinh trước gi&oacute; sẽ&nbsp;mang đến sự sinh động, tươi vui cho kh&ocirc;ng gian của bạn. &nbsp;C&ugrave;ng m&igrave;nh&nbsp;thực hiện nh&eacute; !</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"cach lam o giay\" height=\"601\" src=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/kasa.jpg?zoom=1.25&amp;resize=400%2C602\" srcset=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/kasa.jpg?zoom=1.25&amp;resize=400%2C602\" width=\"400\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h1>Nguy&ecirc;n liệu:</h1>\r\n\r\n<ul>\r\n	<li>B&igrave;a&nbsp;m&agrave;u</li>\r\n	<li>Một đoạn d&acirc;y len</li>\r\n	<li>Những đoạn sắt nhỏ c&oacute; thể uốn cong</li>\r\n	<li>K&igrave;m</li>\r\n	<li>Băng d&iacute;nh hai mặt</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"cach lam o giay (3)\" height=\"332\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i2.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-3.jpg?resize=500%2C332\" srcset=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-3.jpg?resize=300%2C199 300w, http://i2.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-3.jpg?w=500 500w\" width=\"500\" /></p>\r\n\r\n<h1>C&aacute;ch l&agrave;m &ocirc; giấy xinh xắn:</h1>\r\n\r\n<p><strong>Bước 1: L&agrave;m t&aacute;n d&ugrave;</strong></p>\r\n\r\n<ul>\r\n	<li>Cắt tấm b&igrave;a th&agrave;nh h&igrave;nh tr&ograve;n c&oacute; đường k&iacute;nh 10,5 cm. Gấp đ&ocirc;i h&igrave;nh tr&ograve;n lại, sau đ&oacute; gấp đ&ocirc;i tiếp như h&igrave;nh. Bạn sẽ gấp 10 chiếc tương tự như thế.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"cach lam o giay (4)\" height=\"332\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-4.jpg?resize=500%2C332\" srcset=\"http://i1.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-4.jpg?resize=300%2C199 300w, http://i1.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-4.jpg?w=500 500w\" width=\"500\" /></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: center;\">D&iacute;nh hai b&ecirc;n c&aacute;nh của nửa h&igrave;nh tr&ograve;n lại với nhau</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"cach lam o giay (5)\" height=\"332\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-5.jpg?resize=500%2C332\" srcset=\"http://i1.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-5.jpg?resize=300%2C199 300w, http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-5.jpg?w=500 500w\" width=\"500\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"cach lam o giay (6)\" height=\"332\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-6.jpg?resize=500%2C332\" srcset=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-6.jpg?resize=300%2C199 300w, http://i1.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-6.jpg?w=500 500w\" width=\"500\" /></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: center;\">Bước tiếp theo, ta d&aacute;n c&aacute;c cạnh của 10&nbsp;chiếc&nbsp;v&agrave;o nhau.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"cach lam o giay (7)\" height=\"332\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-7.jpg?resize=500%2C332\" srcset=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-7.jpg?resize=300%2C199 300w, http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-7.jpg?w=500 500w\" width=\"500\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"cach lam o giay (8)\" height=\"332\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i2.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-8.jpg?resize=500%2C332\" srcset=\"http://i1.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-8.jpg?resize=300%2C199 300w, http://i1.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-8.jpg?w=500 500w\" width=\"500\" /></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: center;\">Sau khi ho&agrave;n thiện, ta sẽ c&oacute; được phần t&aacute;n d&ugrave; như dưới đ&acirc;y</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"cach lam o giay (9)\" height=\"332\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i1.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-9.jpg?resize=500%2C332\" srcset=\"http://i1.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-9.jpg?resize=300%2C199 300w, http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-9.jpg?w=500 500w\" width=\"500\" /></p>\r\n\r\n<p><strong>Bước 2: L&agrave;m&nbsp;c&aacute;n d&ugrave;</strong></p>\r\n\r\n<ul>\r\n	<li>Sử dụng k&igrave;m uốn cong đoạn sắt tạo phần tay cầm v&agrave; phần đỉnh tr&ograve;n.</li>\r\n	<li>Cuốn băng d&iacute;nh hai mặt dọc theo nửa tr&ecirc;n của đoạn sắt để gắn n&oacute; v&agrave;o phần t&aacute;n d&ugrave;</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"cach lam o giay (10)\" height=\"332\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-10.jpg?resize=500%2C332\" srcset=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-10.jpg?resize=300%2C199 300w, http://i1.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-10.jpg?w=500 500w\" width=\"500\" /></p>\r\n\r\n<ul>\r\n	<li>D&ugrave;ng tay kh&eacute;o l&eacute;o &eacute;p phần t&aacute;n d&ugrave; v&agrave;o đoạn sắt đ&atilde; c&oacute; băng keo để cố định lại. Rất nhanh ch&oacute;ng, ta đ&atilde; được chiếc &ocirc; xinh xắn rồi. Giờ th&igrave; treo ch&uacute;ng l&ecirc;n cửa sổ nh&agrave; m&igrave;nh th&ocirc;i !</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"cach lam o giay (11)\" height=\"332\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-11.jpg?resize=500%2C332\" srcset=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-11.jpg?resize=300%2C199 300w, http://i2.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-11.jpg?w=500 500w\" width=\"500\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"cach lam o giay (2)\" height=\"332\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i2.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-2.jpg?resize=500%2C332\" srcset=\"http://i1.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-2.jpg?resize=300%2C199 300w, http://i1.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-2.jpg?w=500 500w\" width=\"500\" /></p>\r\n\r\n<p>M&igrave;nh&nbsp;vừa hướng dẫn c&aacute;c bạn&nbsp;<strong>c&aacute;ch l&agrave;m &ocirc; giấy</strong>&nbsp;v&ocirc; c&ugrave;ng đơn giản v&agrave; đ&aacute;ng y&ecirc;u, h&atilde;y thử l&agrave;m thật nhiều chiếc &ocirc; với c&aacute;c m&agrave;u sắc kh&aacute;c nhau để treo trong nh&agrave; m&igrave;nh nh&eacute;. Chắc chắn mọi người sẽ rất th&iacute;ch th&uacute; với ch&uacute;ng cho xem !</p>\r\n\r\n<p>Ch&uacute;c bạn s&aacute;ng tạo vui vẻ !</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"cach lam o giay (1)\" height=\"332\" sizes=\"(max-width: 500px) 100vw, 500px\" src=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-1.jpg?resize=500%2C332\" srcset=\"http://i0.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-1.jpg?resize=300%2C199 300w, http://i1.wp.com/sheahandmade.com/wp-content/uploads/2017/03/cach-lam-o-giay-1.jpg?w=500 500w\" width=\"500\" /></p>', 1, 0, 'Cách làm ô giấy tí hon rung rinh trong gió', 'Cách làm ô giấy tí hon rung rinh trong gió', '2019-12-10__cach-lam-o-giay-12.jpg', 0, '2019-12-10 12:23:03', '2019-12-10 12:23:03', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_icon` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_active` tinyint(4) NOT NULL DEFAULT '1',
  `c_total_product` int(11) NOT NULL DEFAULT '0',
  `c_title_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_keyword_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `c_home` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_icon`, `c_avatar`, `c_active`, `c_total_product`, `c_title_seo`, `c_description_seo`, `c_keyword_seo`, `created_at`, `updated_at`, `c_home`) VALUES
(1, 'Hoa handmade', 'hoa-handmade', 'fa-flower', NULL, 1, 0, 'Hoa handmade', 'Hoa handmade', NULL, '2019-12-07 02:12:44', '2019-12-11 19:29:20', 0),
(2, 'Bánh kẹo handmade', 'banh-keo-handmade', 'fa-gingerbread-man', NULL, 0, 0, 'Bánh kẹo handmade', 'Bánh kẹo handmade', NULL, '2019-12-07 02:15:41', '2019-12-11 05:47:50', 1),
(3, 'Túi handmade', 'tui-handmade', 'fa-bags-shopping', NULL, 1, 0, 'Túi handmade', 'Túi handmade', NULL, '2019-12-07 02:16:32', '2019-12-11 06:03:29', 1),
(4, 'Phụ kiện', 'phu-kien', 'fa-rings-wedding', NULL, 1, 0, 'Phụ kiện', 'Phụ kiện', NULL, '2019-12-07 02:21:38', '2019-12-11 06:08:28', 1),
(5, 'Mô hình handmade', 'mo-hinh-handmade', 'fa-home', NULL, 1, 0, 'Mô hình handmade', 'Mô hình handmade', NULL, '2019-12-07 02:24:52', '2019-12-07 02:24:52', 0),
(6, 'Đồ tết handmade', 'do-tet-handmade', 'fa-tree-alt', NULL, 1, 0, 'Đồ tết handmade', 'Đồ tết handmade', NULL, '2019-12-07 02:27:41', '2019-12-11 06:08:27', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` longtext COLLATE utf8mb4_unicode_ci,
  `c_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_13_141214_create_categories_table', 1),
(4, '2019_11_17_081826_create_products_table', 1),
(5, '2019_11_17_090125_alter_column_pro_content_and_pro_title_seo_in_table_products', 1),
(6, '2019_12_02_112419_create_article_table', 1),
(7, '2019_12_04_183057_create_contact_table', 1),
(8, '2019_12_07_173307_create_transactions_table', 2),
(9, '2019_12_07_173731_create_orders_table', 2),
(10, '2019_12_07_175751_alter_column_pro_pay_in_table_products', 3),
(11, '2019_12_08_070103_create_ratings_table', 4),
(12, '2019_12_08_070516_alter_column_rating_in_table_products', 4),
(13, '2019_12_10_185716_alter_column_total_pay_in_table_users', 5),
(14, '2019_12_11_080456_create_page_statics_table', 6),
(15, '2019_12_11_121725_alter_column_c_home_in_table_categories', 7),
(16, '2019_12_11_134526_create_admins_table', 8),
(17, '2019_12_12_013003_alter_column_a_hot_in_table_articles', 9),
(18, '2019_12_12_074745_alter_column_about_end_address_in_table_user', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `or_transaction_id` int(11) NOT NULL DEFAULT '0',
  `or_product_id` int(11) NOT NULL DEFAULT '0',
  `or_qty` tinyint(4) NOT NULL DEFAULT '0',
  `or_price` int(11) NOT NULL DEFAULT '0',
  `or_sale` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `or_transaction_id`, `or_product_id`, `or_qty`, `or_price`, `or_sale`, `created_at`, `updated_at`) VALUES
(3, 3, 1, 1, 30000, 0, NULL, NULL),
(4, 4, 1, 1, 30000, 2, NULL, NULL),
(5, 5, 5, 1, 200000, 0, NULL, NULL),
(6, 6, 9, 1, 50000, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_statics`
--

CREATE TABLE `page_statics` (
  `id` int(10) UNSIGNED NOT NULL,
  `ps_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ps_type` tinyint(4) NOT NULL DEFAULT '1',
  `ps_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_statics`
--

INSERT INTO `page_statics` (`id`, `ps_name`, `ps_type`, `ps_content`, `created_at`, `updated_at`) VALUES
(1, 'Về chúng tôi', 1, '<p>Nội dung về ch&uacute;ng t&ocirc;i</p>', '2019-12-11 02:21:19', '2019-12-11 02:24:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_category_id` int(11) NOT NULL DEFAULT '0',
  `pro_price` int(11) NOT NULL DEFAULT '0',
  `pro_author_id` int(11) NOT NULL DEFAULT '0',
  `pro_sale` int(11) NOT NULL DEFAULT '0',
  `pro_active` tinyint(4) NOT NULL DEFAULT '1',
  `pro_hot` tinyint(4) NOT NULL DEFAULT '0',
  `pro_view` int(11) NOT NULL DEFAULT '0',
  `pro_description` longtext COLLATE utf8mb4_unicode_ci,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_description_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_keyword_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_title_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` longtext COLLATE utf8mb4_unicode_ci,
  `pro_pay` tinyint(4) NOT NULL DEFAULT '0',
  `pro_number` tinyint(4) NOT NULL DEFAULT '0',
  `pro_total_rating` int(11) NOT NULL COMMENT 'Tổng số đánh giá',
  `pro_total_number` int(11) NOT NULL COMMENT 'Tổng số điểm đánh giá'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_category_id`, `pro_price`, `pro_author_id`, `pro_sale`, `pro_active`, `pro_hot`, `pro_view`, `pro_description`, `pro_avatar`, `pro_description_seo`, `pro_keyword_seo`, `created_at`, `updated_at`, `pro_title_seo`, `pro_content`, `pro_pay`, `pro_number`, `pro_total_rating`, `pro_total_number`) VALUES
(1, 'Hoa giấy cẩm chướng handmade', 'hoa-giay-cam-chuong-handmade', 1, 30000, 0, 2, 1, 1, 0, 'Hoa giấy cẩm chướng handmade', '2019-12-07__hoa-cam-chuong-sp2-2824b.jpg', 'Hoa giấy cẩm chướng handmade', NULL, '2019-12-07 02:31:18', '2019-12-11 05:51:05', 'Hoa giấy cẩm chướng handmade', '<p>Hoa giấy cẩm chướng handmade</p>', 2, 5, 3, 12),
(2, 'Hoa hồng handmade', 'hoa-hong-handmade', 1, 30000, 0, 10, 1, 1, 0, 'Hoa hồng handmade', '2019-12-07__hoa-ho-canh-540x600.jpg', 'Hoa hồng handmade', NULL, '2019-12-07 02:32:48', '2019-12-11 20:35:04', 'Hoa hồng handmade', '<p>Hoa hồng handmade</p>', 0, 100, 0, 0),
(3, 'Hộp hoa hồng handmade', 'hop-hoa-hong-handmade', 1, 30000, 0, 0, 1, 0, 0, 'Hộp hoa hồng handmade', '2019-12-07__2v.jpg', 'Hộp hoa hồng handmade', NULL, '2019-12-07 02:34:30', '2019-12-11 20:40:50', 'Hộp hoa hồng handmade', '<p>Hộp hoa hồng handmade</p>', 0, 100, 0, 0),
(4, 'Hoa hướng dương handmade', 'hoa-huong-duong-handmade', 1, 250000, 0, 0, 1, 0, 0, 'Hoa hướng dương handmade', '2019-12-07__gia-hoa-giay-handmade2.png', 'Hoa hướng dương handmade', NULL, '2019-12-07 02:38:43', '2019-12-11 20:41:20', 'Hoa hướng dương handmade', '<p>B&igrave;nh hoa hướng dương giấy c&oacute; gi&aacute; từ 250 cho tới 350 ngh&igrave;n đồng/b&igrave;nh với số lượng hoa từ 7 đến 15 b&ocirc;ng, hoa đường k&iacute;nh từ 13 tới 15cm, c&aacute;nh hoa nhiều lớp, m&agrave;u sắc tươi tắn v&agrave; được đặt xếp tỉ mỉ, kết dinh bằng lớp keo si&ecirc;u chắc. Sản phẩm ph&ugrave; hợp để trưng b&agrave;y trong kh&ocirc;ng gian nh&agrave; ở cũng như văn ph&ograve;ng, tại c&aacute;c vị tr&iacute; b&agrave;n uống nước, vị tr&iacute; tủ k&iacute;nh, kệ ti vi,&hellip; Gi&aacute; hoa giấy handmade loại n&agrave;y cũng c&oacute; thể được t&iacute;nh theo số lượng b&ocirc;ng với gi&aacute; trung b&igrave;nh 30 ngh&igrave;n đồng/b&ocirc;ng.</p>\r\n\r\n<p>&nbsp;</p>', 0, 100, 0, 0),
(5, 'Bánh kẹo halloween handmade', 'banh-keo-halloween-handmade', 2, 200000, 0, 0, 1, 1, 0, 'Bánh kẹo halloween handmade', '2019-12-07__banh-2-1432.png', 'Bánh kẹo halloween handmade', NULL, '2019-12-07 02:43:32', '2019-12-11 20:38:38', 'Bánh kẹo halloween handmade', '<p>Trong ng&agrave;y hội&nbsp;<a href=\"https://cungcau.vn/halloween-tag149502/\">Halloween&nbsp;</a>, nếu ngay cả c&aacute;c loại đồ ăn thức uống cũng mang phong c&aacute;ch ma qu&aacute;i th&igrave; chắc chắn sẽ khiến lễ hội th&ecirc;m sinh động, th&uacute; vị v&agrave; &quot;ch&acirc;n thật&quot; hơn. Vậy n&ecirc;n, nhu cầu mua những loại b&aacute;nh kẹo đậm chất kinh dị trong những ng&agrave;y n&agrave;y đ&atilde; tăng cao. Nhiều người kinh doanh b&aacute;nh kẹo handmade cũng nhanh ch&oacute;ng nắm bắt lấy thời cơ để kiếm bộn tiền trong dịp lễ hội Halloween.</p>', 1, 100, 1, 4),
(6, 'Bánh quy gừng handmade', 'banh-quy-gung-handmade', 2, 100000, 0, 0, 1, 1, 0, 'Bánh quy gừng handmade', '2019-12-07__1419410286-123.jpg', 'Bánh quy gừng handmade', NULL, '2019-12-07 02:45:41', '2019-12-10 08:41:12', 'Bánh quy gừng handmade', '<p><a href=\"https://eva.vn/bep-eva/lam-banh-quy-gung-mung-giang-sinh-c162a159510.html\">B&aacute;nh quy gừng</a>&nbsp;hay c&ograve;n gọi l&agrave; gingerbread l&agrave; thứ b&aacute;nh &iacute;t khi thiếu vắng trong&nbsp;<a href=\"https://eva.vn/noel-2012-c73e1233.html\">lễ Gi&aacute;ng sinh</a>. Sở dĩ b&aacute;nh c&oacute; t&ecirc;n gọi như vậy l&agrave; bởi một trong những nguy&ecirc;n liệu l&agrave;m n&ecirc;n chiếc b&aacute;nh n&agrave;y ch&iacute;nh l&agrave; gừng. Khi thưởng thức miếng b&aacute;nh, vị gừng to&aacute;t l&ecirc;n hương thơm cũng như một ch&uacute;t vị đặc trưng, n&oacute; gi&uacute;p con người xua tan c&aacute;i lạnh của m&ugrave;a đ&ocirc;ng gi&aacute; r&eacute;t.</p>', 0, 0, 0, 0),
(7, 'Bánh khúc cây handmade', 'banh-khuc-cay-handmade', 2, 60000, 0, 0, 1, 0, 0, 'Bánh khúc cây handmade', '2019-12-07__1419410090-img-9472.jpg', 'Bánh khúc cây handmade', NULL, '2019-12-07 02:47:23', '2019-12-11 05:15:40', 'Bánh khúc cây handmade', '<p><a href=\"https://eva.vn/bep-eva/noel-ngot-ngao-voi-banh-khuc-cay-vi-chocolate-c162a206069.html\">B&aacute;nh kh&uacute;c c&acirc;y</a>&nbsp;hay B&ucirc;che de No&euml;l (tiếng Ph&aacute;p), Yule log (tiếng Anh) l&agrave; một m&oacute;n tr&aacute;ng miệng truyền thống được phục vụ gần dịp lễ Gi&aacute;ng sinh ở Ph&aacute;p, Bỉ, Canada, Liban, một số nước n&oacute;i tiếng Ph&aacute;p hoặc thuộc địa cũ của Ph&aacute;p. C&oacute; nhiều &yacute; kiến cho rằng, chiếc b&aacute;nh n&agrave;y ra đời khoảng năm 1875 khi một người&nbsp;thợ l&agrave;m b&aacute;nh Ph&aacute;p c&oacute; s&aacute;ng kiến l&agrave;m chiếc&nbsp;b&aacute;nh ngọt h&igrave;nh kh&uacute;c c&acirc;y cho đ&ecirc;m Gi&aacute;ng sinh.</p>', 0, 0, 0, 0),
(8, 'Kẹo gậy bạc hà', 'keo-gay-bac-ha', 2, 30000, 0, 0, 1, 1, 0, 'Kẹo gậy bạc hà', '2019-12-07__1419410404-keogay1jpg.jpg', 'Kẹo gậy bạc hà', NULL, '2019-12-07 02:48:51', '2019-12-11 20:42:01', 'Kẹo gậy bạc hà', '<p>Những chiếc&nbsp;<a href=\"https://eva.vn/bep-eva/keo-gay-cho-ngay-giang-sinh-vua-ngon-vua-dep-c162a207704.html\">kẹo gậy</a>&nbsp;bạc h&agrave; xuất hiện rất nhiều trong lễ Gi&aacute;ng sinh v&agrave; n&oacute; cũng l&agrave; thứ kẹo chẳng thể thiếu được trong mỗi gia đ&igrave;nh ở dịp lễ n&agrave;y. Khi mới ra đời, c&acirc;y kẹo gậy mang h&igrave;nh d&aacute;ng thẳng với m&agrave;u trắng. Sau n&agrave;y, để trang tr&iacute; cho đẹp v&agrave; nổi bật hơn, những chiếc kẹo được l&agrave;m th&ecirc;m vằn đỏ với vị bạc h&agrave; v&agrave; uốn cong 1 đầu như ng&agrave;y nay.</p>', 0, 100, 0, 0),
(9, 'Túi da nữ handmade', 'tui-da-nu-handmade', 3, 50000, 0, 0, 1, 1, 0, 'Túi da nữ handmade', '2019-12-07__tui-xach-nu-da-bo-handmade-1-1.jpg', 'Túi da nữ handmade', NULL, '2019-12-07 02:51:01', '2019-12-11 20:43:34', 'Túi da nữ handmade', '<p>Tuy l&agrave;m&nbsp;<a href=\"https://babuhandmade.com/product/tui-xach-nu-da-bo-handmade-mb006/\">t&uacute;i da handmade</a>&nbsp;kh&ocirc;ng kh&oacute; nhưng để l&agrave;m ra được một sản phẩm th&igrave; n&oacute; kh&aacute; l&agrave; mất thời gian v&agrave; cầu kỳ. V&igrave; kh&ocirc;ng như c&aacute;c chất liệu kh&aacute;c da c&oacute; độ dai, bền bỉ hơn n&ecirc;n bạn sẽ thấy vất vả v&agrave; thời gian ho&agrave;n th&agrave;nh cũng l&acirc;u hơn.</p>', 1, 100, 0, 0),
(10, 'Túi da handmade đựng ipad da thật cao cấp', 'tui-da-handmade-dung-ipad-da-that-cao-cap', 3, 400000, 0, 0, 1, 1, 0, 'Túi da handmade đựng ipad da thật cao cấp', '2019-12-07__zc30sd-tui-deo-cheo-handmade-dung-ipad-zachi-3.jpg', 'Túi da handmade đựng ipad da thật cao cấp', NULL, '2019-12-07 02:52:39', '2019-12-11 20:41:34', 'Túi da handmade đựng ipad da thật cao cấp', '<p>Mẫu t&uacute;i dựa tr&ecirc;n nhu cầu một chiếc t&uacute;i phải nhỏ ngọn, nhẹ, để c&oacute; thể mang thường xuy&ecirc;n cả ng&agrave;y m&agrave; kh&ocirc;ng c&oacute; cảm gi&aacute;c nặng nề. Bạn sẽ thoải m&aacute;i khi mang theo b&ecirc;n m&igrave;nh chiếc t&uacute;i n&agrave;y. Với chất liệu da b&ograve; thật sẽ cho cảm gi&aacute;c tự tin l&agrave; sản phẩm bằng da thật kh&ocirc;ng như những chiếc t&uacute;i simili phổ biến tr&ecirc;n thị trường.</p>', 0, 100, 0, 0),
(11, 'Túi đeo chéo nam da bò thật 100% handmade - Zachi ZC110', 'tui-deo-cheo-nam-da-bo-that-100-handmade-zachi-zc110', 3, 1000000, 0, 0, 1, 1, 0, 'Túi đeo chéo nam da bò thật 100% handmade - Zachi ZC110', '2019-12-07__7844ff5a1489fa3bfe0e4485d9ad68e6.jpg', 'Túi đeo chéo nam da bò thật 100% handmade - Zachi ZC110', NULL, '2019-12-07 02:57:10', '2019-12-11 05:42:40', 'Túi đeo chéo nam da bò thật 100% handmade - Zachi ZC110', '<p>+ T&uacute;i được thiết kế ho&agrave;n to&agrave;n mới lạ, phong c&aacute;ch mạnh mẽ của đồ da handmade<br />\r\n<br />\r\n<br />\r\n+&nbsp; Chất liệu da b&ograve; pullup c&oacute; thể tạo v&acirc;n rất đẹp&nbsp;khi sử dụng theo thời gian</p>\r\n\r\n<p>+ T&uacute;i c&oacute; 1 ngăn ch&iacute;nh lớn, 2 v&agrave; ngăn phụ.</p>\r\n\r\n<p>+ Cặp được thiết kế d&agrave;nh cho c&aacute;c ipad 10 inch.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- K&iacute;ch thước t&uacute;i : 25 x 20 x 5 cm<br />\r\n<br />\r\n- Chất liệu : Da b&ograve; pullup.<br />\r\n<br />\r\n- Gi&aacute; trị sản phẩm : Kh&acirc;u thủ c&ocirc;ng<br />\r\n<br />\r\n- Thanh to&aacute;n : Khi nhận h&agrave;ng</p>', 0, 0, 0, 0),
(12, 'Vòng tay handmade đan chữ', 'vong-tay-handmade-dan-chu', 4, 20000, 0, 0, 0, 1, 0, 'Vòng tay handmade đan chữ', '2019-12-07__ae621e00-79fe-11e8-b6c1-e1b3e1de2c86.jpg', 'Vòng tay handmade đan chữ', NULL, '2019-12-07 03:02:37', '2019-12-11 20:42:24', 'Vòng tay handmade đan chữ', '<p>D&acirc;y đan bằng d&acirc;y c&oacute;i, độ bền cao v&agrave; đẹp. Chữ l&agrave; hạt nhựa.</p>\r\n\r\n<p>Nhận l&agrave;m v&ograve;ng tay theo y&ecirc;u cầu. Kh&aacute;ch h&agrave;ng c&oacute; thể thay đổi chữ theo &yacute; th&iacute;ch như thay chữ I LOVE YOU bằng chữ MISS, LOVE, FOREVER, LUCKY,...</p>', 0, 100, 0, 0),
(13, 'Ví nam kiểu đứng da bò handmade', 'vi-nam-kieu-dung-da-bo-handmade', 4, 250000, 0, 0, 1, 1, 0, 'Ví nam kiểu đứng da bò handmade', '2019-12-07__vi-dung-2.jpg', 'Ví nam kiểu đứng da bò handmade', NULL, '2019-12-07 03:05:10', '2019-12-11 05:15:51', 'Ví nam kiểu đứng da bò handmade', '<p>V&iacute; nam Handmade VDT08 với chất liệu Da B&ograve; cao cấp được chọn lựa v&agrave; nhập khẩu trực tiếp từ Italy kết hợp với những đường chỉ kh&acirc;u tay của những nghệ nh&acirc;n l&agrave;m da tạo ra một kiệt t&aacute;c v&iacute; da nam thời trang cao cấp doanh nh&acirc;n.</p>\r\n\r\n<p>Với k&iacute;ch thước nhỏ gọn nhưng lại :&rdquo;nhỏ nhưng đầy v&otilde; c&ocirc;ng&rdquo; VDT08 mang trong m&igrave;nh đầy đủ c&aacute;c ngăn đựng tiền, giấy tờ, bằng l&aacute;i xe, thẻ ATM,&hellip; rất ơhuf hợp để t&uacute;i quần, &hellip;</p>\r\n\r\n<p>VDT08 ph&ugrave; hợp cho mọi nhu cầu, mọi đối tượng đặc biệt l&agrave; những doanh nh&acirc;n th&agrave;nh đạt hay giới thượng lưu thể hiện đẳng cấp.</p>', 0, 0, 0, 0),
(14, 'Dây chuyền nữ vòng cổ handmade họa tiết xinh xắn thời trang', 'day-chuyen-nu-vong-co-handmade-hoa-tiet-xinh-xan-thoi-trang', 4, 65000, 0, 0, 1, 0, 0, 'Dây chuyền nữ vòng cổ handmade họa tiết xinh xắn thời trang', '2019-12-07__4e5259a69a297e3fdd5f6e28a3a7d72e.jpg', 'Dây chuyền nữ vòng cổ handmade họa tiết xinh xắn thời trang', NULL, '2019-12-07 03:06:47', '2019-12-11 20:40:39', 'Dây chuyền nữ vòng cổ handmade họa tiết xinh xắn thời trang', '<p>D&acirc;y chuyền v&ograve;ng cổ l&agrave; m&oacute;n trang sức phụ kiện đi k&egrave;m kh&ocirc;ng thể thiếu gi&uacute;p t&ocirc;n l&ecirc;n vẻ đẹp cũng như gi&uacute;p bạn nữ th&ecirc;m nổi bật ấn tượng. L&agrave;m n&ecirc;n phong c&aacute;ch c&aacute; t&iacute;nh trong sinh hoạt thường ng&agrave;y hay gi&uacute;p bạn đặc biệt hơn trong c&aacute;c sự kiện. H&atilde;y chọn cho m&igrave;nh một m&oacute;n trang sức sang trọng hiện đại, nhẹ nh&agrave;ng thanh tao an l&agrave;nh, hay một phong c&aacute;ch bụi bặm Hoặc đơn giản l&agrave; m&oacute;n qu&agrave; tặng &yacute; nghĩa bạn d&agrave;nh cho người th&acirc;n y&ecirc;u. C&ugrave;ng shop cận nhật xu hướng thời trang trang sức mới nh&eacute;.</p>', 0, 100, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `ra_product_id` int(11) NOT NULL DEFAULT '0',
  `ra_number` tinyint(4) NOT NULL DEFAULT '0',
  `ra_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ra_user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `ra_product_id`, `ra_number`, `ra_content`, `ra_user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Sản phẩm rất tuyệt vời', 1, '2019-12-10 02:09:09', '2019-12-10 02:09:09'),
(2, 1, 3, 'Sản phẩm khá tốt nhưng ship hàng hơi chậm', 2, '2019-12-11 03:33:19', '2019-12-11 03:33:19'),
(3, 5, 4, 'Sản phẩm khá chất lượng', 2, '2019-12-11 06:23:40', '2019-12-11 06:23:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `tr_user_id` int(11) NOT NULL DEFAULT '0',
  `tr_total` int(11) NOT NULL DEFAULT '0',
  `tr_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tr_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tr_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tr_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tr_user_id`, `tr_total`, `tr_note`, `tr_address`, `tr_phone`, `tr_status`, `created_at`, `updated_at`) VALUES
(3, 1, 30000, 'aaaaaaaaaaaaaaa', 'Quang Phu - Quang dien - Thua Thien Hue', '0765771934', 1, '2019-12-07 19:42:27', '2019-12-10 12:04:28'),
(4, 2, 29400, 'giao hàng cho tôi tới đường khái đông 4', 'Hòa hải, Ngũ Hành Sơn, T.p Đà Nẵng', '0979067148', 1, '2019-12-10 11:27:24', '2019-12-10 12:04:23'),
(5, 2, 200000, NULL, 'Hòa hải, Ngũ Hành Sơn, T.p Đà Nẵng', '0979067148', 1, '2019-12-11 20:36:02', '2019-12-11 20:38:38'),
(6, 2, 50000, 'không có ghi chú', 'nguyễn minh châu, Hòa hải, Ngũ hành sơn, Đà Nẵng', '0979067148', 1, '2019-12-11 20:43:28', '2019-12-11 20:43:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_pay` int(11) NOT NULL DEFAULT '0',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `avatar`, `active`, `password`, `remember_token`, `created_at`, `updated_at`, `total_pay`, `address`, `about`) VALUES
(1, 'Le Quang Nhat', 'nhatalit@gmail.com', '0765771934', NULL, 1, '$2y$10$qrkcXzk41.ldqMjSqpvUYO15PQdro5c6a8DxhzOfjroYCIG7G8GIa', 'LkJAsF6q1qTaS8AyHNuULPQtSvQgBZl1BlyZAco6rryDyVDknAO7jzY30Umk', '2019-12-07 18:51:19', '2019-12-12 01:46:20', 1, NULL, NULL),
(3, 'Bùi Tấn Lâm', 'builam1307@gmail.com', '0979067148', NULL, 1, '$2y$10$OtIqIc33W1KstEkihZJ31.EXOn/tkVrx6PRrtN4eaDXfRuE7d213a', 'mO22qJt64pnuTMCPEwOnvL113h8CMFCVbiFb79c5mds2o7dgBgVHmcr3T5S7', '2019-12-12 01:48:06', '2019-12-12 01:48:33', 0, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_active_index` (`active`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_a_name_unique` (`a_name`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_author_id_index` (`a_author_id`),
  ADD KEY `articles_c_hot_index` (`c_hot`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_name_unique` (`c_name`),
  ADD KEY `categories_c_slug_index` (`c_slug`),
  ADD KEY `categories_c_active_index` (`c_active`),
  ADD KEY `categories_c_home_index` (`c_home`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_or_transaction_id_index` (`or_transaction_id`),
  ADD KEY `orders_or_product_id_index` (`or_product_id`);

--
-- Chỉ mục cho bảng `page_statics`
--
ALTER TABLE `page_statics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_statics_ps_type_index` (`ps_type`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_pro_slug_index` (`pro_slug`),
  ADD KEY `products_pro_category_id_index` (`pro_category_id`),
  ADD KEY `products_pro_author_id_index` (`pro_author_id`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_ra_product_id_index` (`ra_product_id`),
  ADD KEY `ratings_ra_user_id_index` (`ra_user_id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tr_user_id_index` (`tr_user_id`),
  ADD KEY `transactions_tr_status_index` (`tr_status`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_active_index` (`active`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `page_statics`
--
ALTER TABLE `page_statics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
