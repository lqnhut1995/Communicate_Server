-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 15, 2018 at 09:23 PM
-- Server version: 5.7.21-1ubuntu1
-- PHP Version: 7.2.3-1ubuntu1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Community_Server`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `dataid` int(11) NOT NULL,
  `datatype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dataname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dataurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datathumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `messageid` int(11) NOT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `size` double DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`dataid`, `datatype`, `dataname`, `dataurl`, `datathumbnail`, `messageid`, `width`, `height`, `size`, `message`, `title`, `description`, `image`, `icon`) VALUES
(174, 'text', '', NULL, NULL, 251, NULL, NULL, NULL, 'Shgaisbajsns', NULL, NULL, NULL, NULL),
(175, 'text', '', NULL, NULL, 252, NULL, NULL, NULL, 'I know', NULL, NULL, NULL, NULL),
(176, 'text', '', NULL, NULL, 253, NULL, NULL, NULL, 'Jjshsjshajs', NULL, NULL, NULL, NULL),
(177, 'text', '', NULL, NULL, 254, NULL, NULL, NULL, 'Bdsiebsjsnsjsjsjsjsjwbwww', NULL, NULL, NULL, NULL),
(178, 'text', '', NULL, NULL, 255, NULL, NULL, NULL, 'Bdjsjsekee\nEndsjbsjss\nSensjsbsjsjsjowww', NULL, NULL, NULL, NULL),
(179, 'text', '', NULL, NULL, 256, NULL, NULL, NULL, 'Bssjbsjsnssssbssjjss\nShshsbsbsjsjsjs', NULL, NULL, NULL, NULL),
(180, 'image/jpeg', 'files-1540292020692', 'http://communicateserver.ddns.net/uploads/files-1540292020692', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540292020692', 257, 346, 259, 0, NULL, NULL, NULL, NULL, NULL),
(181, 'image/jpeg', 'files-1540300355000', 'http://communicateserver.ddns.net/uploads/files-1540300355000', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540300355000', 258, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(182, 'text', '', NULL, NULL, 259, NULL, NULL, NULL, 'Cycuhcchchcjhc', NULL, NULL, NULL, NULL),
(183, 'video/mp4', 'Vivjvjhvvj.mp4', 'http://communicateserver.ddns.net/uploads/files-1540301516324.mp4', 'undefined', 259, 0, 0, 1.258, NULL, NULL, NULL, NULL, NULL),
(184, 'text', '', NULL, NULL, 260, NULL, NULL, NULL, 'https://vi.m.wikipedia.org/wiki/ISO/IEC_12207', NULL, NULL, NULL, NULL),
(185, 'text', '', NULL, NULL, 261, NULL, NULL, NULL, 'https://vi.m.wikipedia.org/wiki/ISO/IEC_12207', NULL, NULL, NULL, NULL),
(186, 'text', '', NULL, NULL, 262, NULL, NULL, NULL, 'https://vi.m.wikipedia.org/wiki/ISO/IEC_12207', NULL, NULL, NULL, NULL),
(187, 'text', '', NULL, NULL, 263, NULL, NULL, NULL, 'https://vi.m.wikipedia.org/wiki/ISO/IEC_12207', NULL, NULL, NULL, NULL),
(188, 'text', '', NULL, NULL, 264, NULL, NULL, NULL, 'https://vi.m.wikipedia.org/wiki/ISO/IEC_12207', NULL, NULL, NULL, NULL),
(189, 'preview', '', 'https://vi.m.wikipedia.org/wiki/ISO/IEC_12207', NULL, 264, NULL, NULL, NULL, NULL, 'ISO/IEC 12207 – Wikipedia tiếng Việt', 'Tiêu chuẩn ISO/IEC 12207 Hệ thống và kỹ thuật phần mềm – quy trình vòng đời phần mềm[1] là một tiêu chuẩn quốc tế cho quy trình phát triển phần mềm. Tiêu chuẩn này nhằm mục đích định nghĩa tất cả các nhiệm vụ cần thiết cho việc phát triển và duy trì phần mềm.', 'https://vi.m.wikipedia.org/static/images/mobile/copyright/wikipedia-wordmark-en.png', 'https://vi.m.wikipedia.org/static/apple-touch/wikipedia.png'),
(190, 'text', '', NULL, NULL, 265, NULL, NULL, NULL, 'https://vi.m.wikipedia.org/wiki/ISO/IEC_12207', NULL, NULL, NULL, NULL),
(191, 'preview', '', 'https://vi.m.wikipedia.org/wiki/ISO/IEC_12207', NULL, 265, NULL, NULL, NULL, NULL, 'ISO/IEC 12207 – Wikipedia tiếng Việt', 'Tiêu chuẩn ISO/IEC 12207 Hệ thống và kỹ thuật phần mềm – quy trình vòng đời phần mềm[1] là một tiêu chuẩn quốc tế cho quy trình phát triển phần mềm. Tiêu chuẩn này nhằm mục đích định nghĩa tất cả các nhiệm vụ cần thiết cho việc phát triển và duy trì phần mềm.', 'https://vi.m.wikipedia.org/static/images/mobile/copyright/wikipedia-wordmark-en.png', 'https://vi.m.wikipedia.org/static/apple-touch/wikipedia.png'),
(192, 'text', '', NULL, NULL, 266, NULL, NULL, NULL, 'https://vi.m.wikipedia.org/wiki/ISO/IEC_12207', NULL, NULL, NULL, NULL),
(193, 'preview', '', 'https://vi.m.wikipedia.org/wiki/ISO/IEC_12207', NULL, 266, NULL, NULL, NULL, NULL, 'ISO/IEC 12207 – Wikipedia tiếng Việt', 'Tiêu chuẩn ISO/IEC 12207 Hệ thống và kỹ thuật phần mềm – quy trình vòng đời phần mềm[1] là một tiêu chuẩn quốc tế cho quy trình phát triển phần mềm. Tiêu chuẩn này nhằm mục đích định nghĩa tất cả các nhiệm vụ cần thiết cho việc phát triển và duy trì phần mềm.', 'https://vi.m.wikipedia.org/static/images/mobile/copyright/wikipedia-wordmark-en.png', 'https://vi.m.wikipedia.org/static/apple-touch/wikipedia.png'),
(194, 'text', '', NULL, NULL, 267, NULL, NULL, NULL, 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, NULL, NULL, NULL),
(195, 'preview', '', 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, 267, NULL, NULL, NULL, NULL, 'Nguyễn Minh Chiến – Nơi Ấy Con Tìm Về | Tập 5 Vòng Giấu Mặt | The Voice Kids-Giọng Hát Việt Nhí 2018', 'Cậu bé Nguyễn Minh Chiến, 11 tuổi, thể hiện ca khúc \"Nơi ấy con tìm về\", giọng hát truyền cảm của cậu bé đã mang đến rất nhiều cảm xúc cho người xem và chinh...', 'https://i.ytimg.com/vi/I5F4-vT49H8/maxresdefault.jpg', 'https://s.ytimg.com/yts/img/favicon-vfl8qSV2F.ico'),
(196, 'text', '', NULL, NULL, 268, NULL, NULL, NULL, 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, NULL, NULL, NULL),
(197, 'preview', '', 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, 268, NULL, NULL, NULL, NULL, 'Nguyễn Minh Chiến – Nơi Ấy Con Tìm Về | Tập 5 Vòng Giấu Mặt | The Voice Kids-Giọng Hát Việt Nhí 2018', 'Cậu bé Nguyễn Minh Chiến, 11 tuổi, thể hiện ca khúc \"Nơi ấy con tìm về\", giọng hát truyền cảm của cậu bé đã mang đến rất nhiều cảm xúc cho người xem và chinh...', 'https://i.ytimg.com/vi/I5F4-vT49H8/maxresdefault.jpg', 'https://s.ytimg.com/yts/img/favicon-vfl8qSV2F.ico'),
(198, 'text', '', NULL, NULL, 269, NULL, NULL, NULL, 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, NULL, NULL, NULL),
(199, 'preview', '', 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, 269, NULL, NULL, NULL, NULL, 'Nguyễn Minh Chiến – Nơi Ấy Con Tìm Về | Tập 5 Vòng Giấu Mặt | The Voice Kids-Giọng Hát Việt Nhí 2018', 'Cậu bé Nguyễn Minh Chiến, 11 tuổi, thể hiện ca khúc \"Nơi ấy con tìm về\", giọng hát truyền cảm của cậu bé đã mang đến rất nhiều cảm xúc cho người xem và chinh...', 'https://i.ytimg.com/vi/I5F4-vT49H8/maxresdefault.jpg', 'https://s.ytimg.com/yts/img/favicon-vfl8qSV2F.ico'),
(200, 'text', '', NULL, NULL, 270, NULL, NULL, NULL, 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, NULL, NULL, NULL),
(201, 'preview', '', 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, 270, NULL, NULL, NULL, NULL, 'Nguyễn Minh Chiến – Nơi Ấy Con Tìm Về | Tập 5 Vòng Giấu Mặt | The Voice Kids-Giọng Hát Việt Nhí 2018', 'Cậu bé Nguyễn Minh Chiến, 11 tuổi, thể hiện ca khúc \"Nơi ấy con tìm về\", giọng hát truyền cảm của cậu bé đã mang đến rất nhiều cảm xúc cho người xem và chinh...', 'https://i.ytimg.com/vi/I5F4-vT49H8/maxresdefault.jpg', 'https://s.ytimg.com/yts/img/favicon-vfl8qSV2F.ico'),
(202, 'text', '', NULL, NULL, 271, NULL, NULL, NULL, 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, NULL, NULL, NULL),
(203, 'preview', '', 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, 271, NULL, NULL, NULL, NULL, 'Nguyễn Minh Chiến – Nơi Ấy Con Tìm Về | Tập 5 Vòng Giấu Mặt | The Voice Kids-Giọng Hát Việt Nhí 2018', 'Cậu bé Nguyễn Minh Chiến, 11 tuổi, thể hiện ca khúc \"Nơi ấy con tìm về\", giọng hát truyền cảm của cậu bé đã mang đến rất nhiều cảm xúc cho người xem và chinh...', 'https://i.ytimg.com/vi/I5F4-vT49H8/maxresdefault.jpg', 'https://s.ytimg.com/yts/img/favicon-vfl8qSV2F.ico'),
(204, 'text', '', NULL, NULL, 272, NULL, NULL, NULL, 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, NULL, NULL, NULL),
(205, 'preview', '', 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, 272, NULL, NULL, NULL, NULL, 'Nguyễn Minh Chiến – Nơi Ấy Con Tìm Về | Tập 5 Vòng Giấu Mặt | The Voice Kids-Giọng Hát Việt Nhí 2018', 'Cậu bé Nguyễn Minh Chiến, 11 tuổi, thể hiện ca khúc \"Nơi ấy con tìm về\", giọng hát truyền cảm của cậu bé đã mang đến rất nhiều cảm xúc cho người xem và chinh...', 'https://i.ytimg.com/vi/I5F4-vT49H8/maxresdefault.jpg', 'https://s.ytimg.com/yts/img/favicon-vfl8qSV2F.ico'),
(206, 'text', '', NULL, NULL, 273, NULL, NULL, NULL, 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, NULL, NULL, NULL),
(207, 'preview', '', 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, 273, NULL, NULL, NULL, NULL, 'Nguyễn Minh Chiến – Nơi Ấy Con Tìm Về | Tập 5 Vòng Giấu Mặt | The Voice Kids-Giọng Hát Việt Nhí 2018', 'Cậu bé Nguyễn Minh Chiến, 11 tuổi, thể hiện ca khúc \"Nơi ấy con tìm về\", giọng hát truyền cảm của cậu bé đã mang đến rất nhiều cảm xúc cho người xem và chinh...', 'https://i.ytimg.com/vi/I5F4-vT49H8/maxresdefault.jpg', 'https://s.ytimg.com/yts/img/favicon-vfl8qSV2F.ico'),
(208, 'text', '', NULL, NULL, 274, NULL, NULL, NULL, 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, NULL, NULL, NULL),
(209, 'preview', '', 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, 274, NULL, NULL, NULL, NULL, 'Nguyễn Minh Chiến – Nơi Ấy Con Tìm Về | Tập 5 Vòng Giấu Mặt | The Voice Kids-Giọng Hát Việt Nhí 2018', 'Cậu bé Nguyễn Minh Chiến, 11 tuổi, thể hiện ca khúc \"Nơi ấy con tìm về\", giọng hát truyền cảm của cậu bé đã mang đến rất nhiều cảm xúc cho người xem và chinh...', 'https://i.ytimg.com/vi/I5F4-vT49H8/maxresdefault.jpg', 'https://s.ytimg.com/yts/img/favicon-vfl8qSV2F.ico'),
(210, 'text', '', NULL, NULL, 275, NULL, NULL, NULL, 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, NULL, NULL, NULL),
(211, 'preview', '', 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, 275, NULL, NULL, NULL, NULL, 'Nguyễn Minh Chiến – Nơi Ấy Con Tìm Về | Tập 5 Vòng Giấu Mặt | The Voice Kids-Giọng Hát Việt Nhí 2018', 'Cậu bé Nguyễn Minh Chiến, 11 tuổi, thể hiện ca khúc \"Nơi ấy con tìm về\", giọng hát truyền cảm của cậu bé đã mang đến rất nhiều cảm xúc cho người xem và chinh...', 'https://i.ytimg.com/vi/I5F4-vT49H8/maxresdefault.jpg', 'https://s.ytimg.com/yts/img/favicon-vfl8qSV2F.ico'),
(212, 'text', '', NULL, NULL, 276, NULL, NULL, NULL, 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, NULL, NULL, NULL),
(213, 'preview', '', 'https://m.youtube.com/watch?v=I5F4-vT49H8', NULL, 276, NULL, NULL, NULL, NULL, 'Nguyễn Minh Chiến – Nơi Ấy Con Tìm Về | Tập 5 Vòng Giấu Mặt | The Voice Kids-Giọng Hát Việt Nhí 2018', 'Cậu bé Nguyễn Minh Chiến, 11 tuổi, thể hiện ca khúc \"Nơi ấy con tìm về\", giọng hát truyền cảm của cậu bé đã mang đến rất nhiều cảm xúc cho người xem và chinh...', 'https://i.ytimg.com/vi/I5F4-vT49H8/maxresdefault.jpg', 'https://s.ytimg.com/yts/img/favicon-vfl8qSV2F.ico'),
(214, 'text', '', NULL, NULL, 277, NULL, NULL, NULL, 'Baby', NULL, NULL, NULL, NULL),
(215, 'text', '', NULL, NULL, 278, NULL, NULL, NULL, 'Fucking baby', NULL, NULL, NULL, NULL),
(216, 'text', '', NULL, NULL, 279, NULL, NULL, NULL, 'Dhhssbsjsbjs\nSsbjssbjsw', NULL, NULL, NULL, NULL),
(217, 'image/jpeg', 'files-1540369780513', 'http://communicateserver.ddns.net/uploads/files-1540369780513', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540369780513', 280, 346, 259, 0, NULL, NULL, NULL, NULL, NULL),
(218, 'image/jpeg', 'files-1540369783848', 'http://communicateserver.ddns.net/uploads/files-1540369783848', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540369783848', 280, 346, 259, 0, NULL, NULL, NULL, NULL, NULL),
(219, 'image/jpeg', 'files-1540369786286', 'http://communicateserver.ddns.net/uploads/files-1540369786286', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540369786286', 280, 346, 259, 0, NULL, NULL, NULL, NULL, NULL),
(220, 'image/jpeg', 'files-1540369788962', 'http://communicateserver.ddns.net/uploads/files-1540369788962', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540369788962', 280, 346, 259, 0, NULL, NULL, NULL, NULL, NULL),
(221, 'image/jpeg', 'files-1540369791456', 'http://communicateserver.ddns.net/uploads/files-1540369791456', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540369791456', 280, 346, 259, 0, NULL, NULL, NULL, NULL, NULL),
(222, 'image/jpeg', 'files-1540369793916', 'http://communicateserver.ddns.net/uploads/files-1540369793916', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540369793916', 280, 346, 259, 0, NULL, NULL, NULL, NULL, NULL),
(223, 'image/jpeg', 'files-1540370159758', 'http://communicateserver.ddns.net/uploads/files-1540370159758', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540370159758', 281, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(224, 'image/jpeg', 'files-1540370163985', 'http://communicateserver.ddns.net/uploads/files-1540370163985', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540370163985', 281, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(225, 'image/jpeg', 'files-1540370310719', 'http://communicateserver.ddns.net/uploads/files-1540370310719', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540370310719', 282, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(226, 'image/jpeg', 'files-1540370313503', 'http://communicateserver.ddns.net/uploads/files-1540370313503', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540370313503', 282, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(227, 'image/jpeg', 'files-1540370681644', 'http://communicateserver.ddns.net/uploads/files-1540370681644', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540370681644', 283, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(228, 'image/jpeg', 'files-1540370685225', 'http://communicateserver.ddns.net/uploads/files-1540370685225', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540370685225', 283, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(229, 'image/jpeg', 'files-1540370689494', 'http://communicateserver.ddns.net/uploads/files-1540370689494', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540370689494', 283, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(230, 'image/jpeg', 'files-1540370807174', 'http://communicateserver.ddns.net/uploads/files-1540370807174', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540370807174', 284, 346, 259, 0, NULL, NULL, NULL, NULL, NULL),
(231, 'image/jpeg', 'files-1540370810845', 'http://communicateserver.ddns.net/uploads/files-1540370810845', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540370810845', 284, 346, 259, 0, NULL, NULL, NULL, NULL, NULL),
(232, 'image/jpeg', 'files-1540370814087', 'http://communicateserver.ddns.net/uploads/files-1540370814087', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540370814087', 284, 346, 259, 0, NULL, NULL, NULL, NULL, NULL),
(233, 'image/jpeg', 'files-1540371272140', 'http://communicateserver.ddns.net/uploads/files-1540371272140', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540371272140', 285, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(234, 'image/jpeg', 'files-1540371275188', 'http://communicateserver.ddns.net/uploads/files-1540371275188', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540371275188', 285, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(235, 'image/jpeg', 'files-1540371278118', 'http://communicateserver.ddns.net/uploads/files-1540371278118', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540371278118', 285, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(236, 'image/jpeg', 'files-1540371397196', 'http://communicateserver.ddns.net/uploads/files-1540371397196', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540371397196', 286, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(237, 'image/jpeg', 'files-1540371826374', 'http://communicateserver.ddns.net/uploads/files-1540371826374', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540371826374', 287, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(238, 'image/jpeg', 'files-1540371830763', 'http://communicateserver.ddns.net/uploads/files-1540371830763', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540371830763', 287, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(239, 'image/jpeg', 'files-1540372038913', 'http://communicateserver.ddns.net/uploads/files-1540372038913', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540372038913', 288, 168, 300, 0, NULL, NULL, NULL, NULL, NULL),
(240, 'image/jpeg', 'files-1540372040968', 'http://communicateserver.ddns.net/uploads/files-1540372040968', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540372040968', 288, 346, 259, 0, NULL, NULL, NULL, NULL, NULL),
(241, 'image/jpeg', 'files-1540376847742', 'http://communicateserver.ddns.net/uploads/files-1540376847742', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540376847742', 289, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(242, 'image/jpeg', 'files-1540376850386', 'http://communicateserver.ddns.net/uploads/files-1540376850386', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540376850386', 289, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(243, 'image/jpeg', 'files-1540376853438', 'http://communicateserver.ddns.net/uploads/files-1540376853438', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540376853438', 289, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(244, 'image/jpeg', 'files-1540390646657', 'http://communicateserver.ddns.net/uploads/files-1540390646657', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540390646657', 290, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(245, 'image/jpeg', 'files-1540390650010', 'http://communicateserver.ddns.net/uploads/files-1540390650010', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540390650010', 290, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(246, 'image/jpeg', 'files-1540391575312', 'http://communicateserver.ddns.net/uploads/files-1540391575312', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540391575312', 291, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(247, 'image/jpeg', 'files-1540391734709', 'http://communicateserver.ddns.net/uploads/files-1540391734709', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540391734709', 292, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(248, 'text', '', NULL, NULL, 295, NULL, NULL, NULL, 'Ghvchchch', NULL, NULL, NULL, NULL),
(249, 'text', '', NULL, NULL, 296, NULL, NULL, NULL, 'Bsshsusbsjs', NULL, NULL, NULL, NULL),
(250, 'text', '', NULL, NULL, 297, NULL, NULL, NULL, 'Haiajianalssjsjsn\nShsisnsksnsaka\nSnsnsnsjsbs\nSsbsjsbssjsj', NULL, NULL, NULL, NULL),
(251, 'image/jpeg', 'files-1540404340001', 'http://communicateserver.ddns.net/uploads/files-1540404340001', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540404340001', 298, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(252, 'image/jpeg', 'files-1540404342568', 'http://communicateserver.ddns.net/uploads/files-1540404342568', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1540404342568', 298, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(253, 'text', '', NULL, NULL, 299, NULL, NULL, NULL, 'G', NULL, NULL, NULL, NULL),
(254, 'text', '', NULL, NULL, 300, NULL, NULL, NULL, 'Shit', NULL, NULL, NULL, NULL),
(255, 'text', '', NULL, NULL, 301, NULL, NULL, NULL, 'Dhjdsbsjbsjsbsskjss', NULL, NULL, NULL, NULL),
(256, 'text', '', NULL, NULL, 302, NULL, NULL, NULL, 'Vuvvyjvu', NULL, NULL, NULL, NULL),
(257, 'text', '', NULL, NULL, 303, NULL, NULL, NULL, 'Hvhvjjg', NULL, NULL, NULL, NULL),
(258, 'text', '', NULL, NULL, 304, NULL, NULL, NULL, 'Chvhhhv', NULL, NULL, NULL, NULL),
(259, 'text', '', NULL, NULL, 305, NULL, NULL, NULL, 'Chhbvhhvhv', NULL, NULL, NULL, NULL),
(260, 'text', '', NULL, NULL, 306, NULL, NULL, NULL, 'Vhvhjvhv h', NULL, NULL, NULL, NULL),
(261, 'text', '', NULL, NULL, 307, NULL, NULL, NULL, 'Cvjhvvjhvhvvh', NULL, NULL, NULL, NULL),
(262, 'text', '', NULL, NULL, 308, NULL, NULL, NULL, 'Vhvhhbhhh', NULL, NULL, NULL, NULL),
(263, 'text', '', NULL, NULL, 309, NULL, NULL, NULL, 'Ryftg', NULL, NULL, NULL, NULL),
(264, 'text', '', NULL, NULL, 310, NULL, NULL, NULL, 'Chjvchvh', NULL, NULL, NULL, NULL),
(265, 'text', '', NULL, NULL, 311, NULL, NULL, NULL, 'Ycbicubjhvvuhv', NULL, NULL, NULL, NULL),
(266, 'text', '', NULL, NULL, 312, NULL, NULL, NULL, 'Hdjsbsjsbsjsb', NULL, NULL, NULL, NULL),
(267, 'image/jpeg', 'files-1541563280256', 'http://communicateserver.ddns.net/uploads/files-1541563280256', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1541563280256', 312, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(268, 'image/jpeg', 'files-1541563280799', 'http://communicateserver.ddns.net/uploads/files-1541563280799', 'http://communicateserver.ddns.net/uploads/thumbnails/files-1541563280799', 312, 225, 300, 0, NULL, NULL, NULL, NULL, NULL),
(269, 'text', '', NULL, NULL, 313, NULL, NULL, NULL, 'Hdisbsjsbs', NULL, NULL, NULL, NULL),
(270, 'text', '', NULL, NULL, 314, NULL, NULL, NULL, 'Fyhghjjh', NULL, NULL, NULL, NULL),
(271, 'text', '', NULL, NULL, 315, NULL, NULL, NULL, 'Shsjsjsjshss\nBsjsnsjsnssjsj', NULL, NULL, NULL, NULL),
(272, 'text', '', NULL, NULL, 316, NULL, NULL, NULL, 'Tycghnkkn', NULL, NULL, NULL, NULL),
(273, 'text', '', NULL, NULL, 317, NULL, NULL, NULL, 'Gyhgyhcffyjkjib\nBhhbhi', NULL, NULL, NULL, NULL),
(274, 'text', '', NULL, NULL, 318, NULL, NULL, NULL, 'Wyuhfydybkopgyg', NULL, NULL, NULL, NULL),
(275, 'text', '', NULL, NULL, 319, NULL, NULL, NULL, 'Fygfhh', NULL, NULL, NULL, NULL),
(276, 'text', '', NULL, NULL, 320, NULL, NULL, NULL, 'Kjhrrdstujjiobct', NULL, NULL, NULL, NULL),
(277, 'text', '', NULL, NULL, 321, NULL, NULL, NULL, 'Hjsjsjsjs', NULL, NULL, NULL, NULL),
(278, 'text', '', NULL, NULL, 322, NULL, NULL, NULL, 'Gchchcchchp', NULL, NULL, NULL, NULL),
(279, 'text', '', NULL, NULL, 323, NULL, NULL, NULL, 'Jvujfjhh', NULL, NULL, NULL, NULL),
(280, 'text', '', NULL, NULL, 324, NULL, NULL, NULL, 'Dghdsdese gjj\nBjhhvjvjbb', NULL, NULL, NULL, NULL),
(281, 'text', '', NULL, NULL, 325, NULL, NULL, NULL, 'Bdjsshsjsb', NULL, NULL, NULL, NULL),
(282, 'text', '', NULL, NULL, 326, NULL, NULL, NULL, 'Ksjsisbssknssksoaks', NULL, NULL, NULL, NULL),
(283, 'text', '', NULL, NULL, 327, NULL, NULL, NULL, 'Hsjssbajsjaj', NULL, NULL, NULL, NULL),
(284, 'text', '', NULL, NULL, 328, NULL, NULL, NULL, 'Ghhfguhf', NULL, NULL, NULL, NULL),
(285, 'text', '', NULL, NULL, 329, NULL, NULL, NULL, 'Fytjhhu', NULL, NULL, NULL, NULL),
(286, 'text', '', NULL, NULL, 330, NULL, NULL, NULL, 'Gcchcychhchiccjvi', NULL, NULL, NULL, NULL),
(287, 'text', '', NULL, NULL, 331, NULL, NULL, NULL, 'Guguu', NULL, NULL, NULL, NULL),
(288, 'text', '', NULL, NULL, 332, NULL, NULL, NULL, 'Ry', NULL, NULL, NULL, NULL),
(289, 'text', '', NULL, NULL, 333, NULL, NULL, NULL, 'Ghhjhgyuh', NULL, NULL, NULL, NULL),
(290, 'text', '', NULL, NULL, 334, NULL, NULL, NULL, 'Apple.com', NULL, NULL, NULL, NULL),
(291, 'preview', '', 'http://Apple.com', NULL, 334, NULL, NULL, NULL, NULL, 'Apple', 'Discover the innovative world of Apple and shop everything iPhone, iPad, Apple Watch, Mac, and Apple TV, plus explore accessories, entertainment, and expert device support.', 'https://www.apple.com/ac/structured-data/images/open_graph_logo.png', ''),
(292, 'text', '', NULL, NULL, 335, NULL, NULL, NULL, 'Apple.com', NULL, NULL, NULL, NULL),
(293, 'preview', '', 'http://Apple.com', NULL, 335, NULL, NULL, NULL, NULL, 'Apple', 'Discover the innovative world of Apple and shop everything iPhone, iPad, Apple Watch, Mac, and Apple TV, plus explore accessories, entertainment, and expert device support.', 'https://www.apple.com/ac/structured-data/images/open_graph_logo.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `userid` int(11) NOT NULL,
  `otheruserid` int(11) NOT NULL,
  `isblocked` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blockedid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`userid`, `otheruserid`, `isblocked`, `blockedid`) VALUES
(1, 2, 'true', 2),
(1, 3, 'false', NULL);

--
-- Triggers `friends`
--
DELIMITER $$
CREATE TRIGGER `friendscheck_duplicate` BEFORE INSERT ON `friends` FOR EACH ROW BEGIN
DECLARE found_count,newcol1,newcol2,dummy INT;
    SET newcol1 = NEW.userid;
    SET newcol2 = NEW.otheruserid;
    SELECT COUNT(1) INTO found_count FROM friends
    WHERE userid = newcol2 AND otheruserid = newcol1;
    IF found_count = 1 THEN
        SELECT 1 INTO dummy FROM information_schema.tables;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `groupid` int(11) NOT NULL,
  `groupname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groupimage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`groupid`, `groupname`, `groupimage`) VALUES
(6, 'Yeisbissj', 'http://communicateserver.ddns.net/uploads/files-1540388937756'),
(11, 'Erectkihg', 'http://communicateserver.ddns.net/uploads/files-1542269812719'),
(12, 'Chjvhxhchcch', 'http://communicateserver.ddns.net/uploads/files-1542270148897'),
(15, 'Baby', NULL),
(16, 'This is a long name', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `messageid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `uploadtime` bigint(255) DEFAULT NULL,
  `subtopicid` int(11) DEFAULT NULL,
  `privateroomid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`messageid`, `userid`, `uploadtime`, `subtopicid`, `privateroomid`) VALUES
(251, 1, 1540291395438, NULL, 19),
(252, 1, 1540291438345, NULL, 19),
(253, 1, 1540291841581, NULL, 19),
(254, 1, 1540291845585, NULL, 19),
(255, 1, 1540291851285, NULL, 19),
(256, 1, 1540292008765, NULL, 20),
(257, 1, 1540292020112, NULL, 20),
(258, 1, 1540300354379, NULL, 20),
(259, 1, 1540301515457, NULL, 20),
(260, 1, 1540316138658, NULL, 20),
(261, 1, 1540316260589, NULL, 20),
(262, 1, 1540316634057, NULL, 20),
(263, 1, 1540317078182, NULL, 20),
(264, 1, 1540317207917, NULL, 20),
(265, 1, 1540317348490, NULL, 20),
(266, 1, 1540317463753, NULL, 20),
(267, 1, 1540317797003, NULL, 20),
(268, 1, 1540317974959, NULL, 20),
(269, 1, 1540318066136, NULL, 20),
(270, 1, 1540367175918, NULL, 20),
(271, 1, 1540367468154, NULL, 20),
(272, 1, 1540367610829, NULL, 20),
(273, 1, 1540367770818, NULL, 20),
(274, 1, 1540367893203, NULL, 20),
(275, 1, 1540367990566, NULL, 20),
(276, 1, 1540368055236, NULL, 20),
(277, 1, 1540368339875, NULL, 20),
(278, 1, 1540368343609, NULL, 20),
(279, 1, 1540368676957, NULL, 20),
(280, 1, 1540369778140, NULL, 20),
(281, 1, 1540370158758, NULL, 19),
(282, 1, 1540370309715, NULL, 19),
(283, 1, 1540370680281, NULL, 19),
(284, 1, 1540370805718, NULL, 19),
(285, 1, 1540371270731, NULL, 19),
(286, 1, 1540371396699, NULL, 19),
(287, 1, 1540371825385, NULL, 19),
(288, 1, 1540372038252, NULL, 19),
(289, 1, 1540376846024, NULL, 20),
(290, 1, 1540390645494, NULL, 20),
(291, 1, 1540391574002, NULL, 19),
(292, 1, 1540391734274, NULL, 19),
(295, 1, 1540404289451, 12, NULL),
(296, 1, 1540404319272, 12, NULL),
(297, 1, 1540404327925, 12, NULL),
(298, 1, 1540404339351, 12, NULL),
(299, 1, 1540404645451, 12, NULL),
(300, 1, 1540960935703, 12, NULL),
(301, 1, 1541559623474, 12, NULL),
(302, 1, 1541559721119, NULL, 20),
(303, 1, 1541560584011, NULL, 19),
(304, 1, 1541561144816, NULL, 19),
(305, 1, 1541561169486, NULL, 19),
(306, 1, 1541561457976, NULL, 19),
(307, 1, 1541561625271, NULL, 19),
(308, 1, 1541562501390, NULL, 19),
(309, 1, 1541562505556, NULL, 19),
(310, 1, 1541562663744, NULL, 19),
(311, 1, 1541562685956, NULL, 19),
(312, 1, 1541563279663, 12, NULL),
(313, 1, 1541563303792, 12, NULL),
(314, 1, 1541601893873, NULL, 19),
(315, 1, 1541675197668, NULL, 19),
(316, 3, 1541682823119, NULL, 20),
(317, 3, 1541682833567, NULL, 20),
(318, 3, 1541682839935, NULL, 20),
(319, 1, 1541682991389, NULL, 20),
(320, 1, 1541682997075, NULL, 20),
(321, 1, 1541759937271, NULL, 19),
(322, 1, 1541762556719, NULL, 20),
(323, 1, 1541762560834, NULL, 20),
(324, 1, 1541762569220, NULL, 20),
(325, 1, 1541763075544, NULL, 19),
(326, 1, 1541763079610, NULL, 19),
(327, 1, 1541764237958, 12, NULL),
(328, 1, 1541764654099, NULL, 19),
(329, 1, 1541764819440, NULL, 19),
(330, 1, 1541764959040, NULL, 19),
(331, 1, 1541765233531, NULL, 19),
(332, 1, 1541765260936, NULL, 19),
(333, 1, 1541765413805, NULL, 19),
(334, 1, 1541766733282, NULL, 20),
(335, 1, 1541766946725, NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `privateroom`
--

CREATE TABLE `privateroom` (
  `privateroomid` int(11) NOT NULL,
  `privateroomname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `membercount` int(255) DEFAULT NULL,
  `privateroomimage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `privateroom`
--

INSERT INTO `privateroom` (`privateroomid`, `privateroomname`, `membercount`, `privateroomimage`) VALUES
(19, 'lqnhut1995', 2, NULL),
(20, 'chiensaker,chiensaker', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `privateroomdetail`
--

CREATE TABLE `privateroomdetail` (
  `userid` int(11) NOT NULL,
  `otheruserid` int(11) NOT NULL,
  `privateroomid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `privateroomdetail`
--

INSERT INTO `privateroomdetail` (`userid`, `otheruserid`, `privateroomid`) VALUES
(2, 1, 19),
(1, 3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `requestid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `requestforuserid` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isrequestaccepted` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`requestid`, `userid`, `requestforuserid`, `message`, `isrequestaccepted`) VALUES
(9, 2, 1, NULL, 'true'),
(10, 3, 1, NULL, 'true');

--
-- Triggers `request`
--
DELIMITER $$
CREATE TRIGGER `check_duplicate` BEFORE INSERT ON `request` FOR EACH ROW BEGIN
DECLARE found_count,newcol1,newcol2,dummy INT;
    SET newcol1 = NEW.userid;
    SET newcol2 = NEW.requestforuserid;
    SELECT COUNT(1) INTO found_count FROM request
    WHERE userid = newcol2 AND requestforuserid = newcol1;
    IF found_count = 1 THEN
        SELECT 1 INTO dummy FROM information_schema.tables;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleid` int(11) NOT NULL,
  `rolename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rolecolor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groupid` int(11) NOT NULL,
  `originrole` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleid`, `rolename`, `rolecolor`, `groupid`, `originrole`) VALUES
(2, 'everyone', '#E4E5E6', 6, 1),
(3, 'everyone', '#E4E5E6', 11, 1),
(4, 'everyone', '#E4E5E6', 12, 1),
(7, 'everyone', '#E4E5E6', 15, 1),
(8, 'everyone', '#E4E5E6', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rolesetting`
--

CREATE TABLE `rolesetting` (
  `roleid` int(11) NOT NULL,
  `settingdetailid` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isactive` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rolesetting`
--

INSERT INTO `rolesetting` (`roleid`, `settingdetailid`, `value`, `isactive`) VALUES
(2, 55, NULL, 0),
(2, 56, NULL, 0),
(2, 57, NULL, 0),
(2, 58, NULL, 0),
(2, 59, NULL, 0),
(2, 60, NULL, 0),
(2, 62, NULL, 0),
(2, 63, NULL, 1),
(2, 65, NULL, 0),
(2, 66, NULL, 0),
(2, 67, NULL, 1),
(2, 68, NULL, 0),
(2, 69, NULL, 1),
(2, 70, NULL, 1),
(2, 71, NULL, 1),
(2, 72, NULL, 1),
(2, 73, NULL, 1),
(2, 74, NULL, 1),
(2, 75, NULL, 1),
(2, 76, NULL, 1),
(2, 77, NULL, 0),
(2, 78, NULL, 0),
(2, 79, NULL, 0),
(2, 80, NULL, 1),
(2, 81, NULL, 0),
(2, 64, NULL, 0),
(2, 61, NULL, 0),
(3, 55, NULL, 0),
(3, 56, NULL, 0),
(3, 57, NULL, 0),
(3, 58, NULL, 0),
(3, 59, NULL, 0),
(3, 60, NULL, 0),
(3, 61, NULL, 0),
(3, 62, NULL, 0),
(3, 63, NULL, 1),
(3, 64, NULL, 0),
(3, 65, NULL, 0),
(3, 66, NULL, 0),
(3, 67, NULL, 1),
(3, 68, NULL, 0),
(3, 69, NULL, 1),
(3, 70, NULL, 1),
(3, 71, NULL, 1),
(3, 72, NULL, 1),
(3, 73, NULL, 1),
(3, 74, NULL, 1),
(3, 75, NULL, 1),
(3, 76, NULL, 1),
(3, 77, NULL, 0),
(3, 78, NULL, 0),
(3, 79, NULL, 0),
(3, 80, NULL, 1),
(3, 81, NULL, 0),
(4, 55, NULL, 0),
(4, 56, NULL, 0),
(4, 57, NULL, 0),
(4, 58, NULL, 0),
(4, 59, NULL, 0),
(4, 60, NULL, 0),
(4, 61, NULL, 0),
(4, 62, NULL, 0),
(4, 63, NULL, 1),
(4, 64, NULL, 0),
(4, 65, NULL, 0),
(4, 66, NULL, 0),
(4, 67, NULL, 1),
(4, 68, NULL, 0),
(4, 69, NULL, 1),
(4, 70, NULL, 1),
(4, 71, NULL, 1),
(4, 72, NULL, 1),
(4, 73, NULL, 1),
(4, 74, NULL, 1),
(4, 75, NULL, 1),
(4, 76, NULL, 1),
(4, 77, NULL, 0),
(4, 78, NULL, 0),
(4, 79, NULL, 0),
(4, 80, NULL, 1),
(4, 81, NULL, 0),
(7, 55, NULL, 0),
(7, 56, NULL, 0),
(7, 57, NULL, 0),
(7, 58, NULL, 0),
(7, 59, NULL, 0),
(7, 60, NULL, 0),
(7, 61, NULL, 0),
(7, 62, NULL, 0),
(7, 63, NULL, 1),
(7, 64, NULL, 0),
(7, 65, NULL, 0),
(7, 66, NULL, 0),
(7, 67, NULL, 1),
(7, 68, NULL, 0),
(7, 69, NULL, 1),
(7, 70, NULL, 1),
(7, 71, NULL, 1),
(7, 72, NULL, 1),
(7, 73, NULL, 1),
(7, 74, NULL, 1),
(7, 75, NULL, 1),
(7, 76, NULL, 1),
(7, 77, NULL, 0),
(7, 78, NULL, 0),
(7, 79, NULL, 0),
(7, 80, NULL, 1),
(7, 81, NULL, 0),
(8, 55, NULL, 0),
(8, 56, NULL, 0),
(8, 57, NULL, 0),
(8, 58, NULL, 0),
(8, 59, NULL, 0),
(8, 60, NULL, 0),
(8, 61, NULL, 0),
(8, 62, NULL, 0),
(8, 63, NULL, 1),
(8, 64, NULL, 0),
(8, 65, NULL, 0),
(8, 66, NULL, 0),
(8, 67, NULL, 1),
(8, 68, NULL, 0),
(8, 69, NULL, 1),
(8, 70, NULL, 1),
(8, 71, NULL, 1),
(8, 72, NULL, 1),
(8, 73, NULL, 1),
(8, 74, NULL, 1),
(8, 75, NULL, 1),
(8, 76, NULL, 1),
(8, 77, NULL, 0),
(8, 78, NULL, 0),
(8, 79, NULL, 0),
(8, 80, NULL, 1),
(8, 81, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settingdescription`
--

CREATE TABLE `settingdescription` (
  `settingdescriptionid` int(11) NOT NULL,
  `settingdescriptionname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settingdescription`
--

INSERT INTO `settingdescription` (`settingdescriptionid`, `settingdescriptionname`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, NULL),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(11, NULL),
(12, NULL),
(13, NULL),
(14, NULL),
(15, NULL),
(16, NULL),
(17, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settingdetail`
--

CREATE TABLE `settingdetail` (
  `settingdetailid` int(11) NOT NULL,
  `settingname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settingsection` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settingtypeid` int(11) NOT NULL,
  `settinggroupid` int(11) DEFAULT NULL,
  `settingdescriptionid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settingdetail`
--

INSERT INTO `settingdetail` (`settingdetailid`, `settingname`, `settingsection`, `settingtypeid`, `settinggroupid`, `settingdescriptionid`) VALUES
(55, 'Display role members separately from online members', 'role', 5, 1, 1),
(56, 'Allow anyone to @mention this role', 'role', 5, 1, 1),
(57, 'Administrator', 'role', 5, 2, 2),
(58, 'Manage Group', 'role', 5, 2, 3),
(59, 'Manage Roles', 'role', 5, 2, 4),
(60, 'Manage Classes', 'role', 5, 2, 5),
(61, 'Kick Members', 'role', 5, 2, 6),
(62, 'Ban Members', 'role', 5, 2, 6),
(63, 'Change Nickname', 'role', 5, 2, 6),
(64, 'Manage Nickname', 'role', 5, 2, 7),
(65, 'Manage Emojis', 'role', 5, 2, 8),
(66, 'Read Text Channels & See Voice Channel', 'role', 5, 2, 9),
(67, 'Send Messages', 'role', 5, 3, 10),
(68, 'Manage Messages', 'role', 5, 3, 11),
(69, 'Embed Links', 'role', 5, 3, 12),
(70, 'Attach Files', 'role', 5, 3, 12),
(71, 'Read Message History', 'role', 5, 3, 12),
(72, 'Mention Everyone', 'role', 5, 3, 12),
(73, 'Use External Emojis', 'role', 5, 3, 13),
(74, 'Add Reactions', 'role', 5, 3, 14),
(75, 'Connect', 'role', 5, 4, 15),
(76, 'Speak', 'role', 5, 4, 15),
(77, 'Mute Members', 'role', 5, 4, 15),
(78, 'Deafen Members', 'role', 5, 4, 15),
(79, 'Move Members', 'role', 5, 4, 15),
(80, 'Use Voice Activity', 'role', 5, 4, 16),
(81, 'Priority Speaker', 'role', 5, 4, 17);

-- --------------------------------------------------------

--
-- Table structure for table `settinggroup`
--

CREATE TABLE `settinggroup` (
  `settinggroupid` int(11) NOT NULL,
  `settinggroupname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settinggroupdescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settinggroup`
--

INSERT INTO `settinggroup` (`settinggroupid`, `settinggroupname`, `settinggroupdescription`) VALUES
(1, 'Role Settings', NULL),
(2, 'Grant Permissions', NULL),
(3, 'Text Permissions', NULL),
(4, 'Voice Permissions', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settingtype`
--

CREATE TABLE `settingtype` (
  `settingtypeid` int(11) NOT NULL,
  `settingtypename` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settingtype`
--

INSERT INTO `settingtype` (`settingtypeid`, `settingtypename`) VALUES
(5, 'switch'),
(6, 'slider');

-- --------------------------------------------------------

--
-- Table structure for table `subgroup`
--

CREATE TABLE `subgroup` (
  `subgroupid` int(11) NOT NULL,
  `subgroupname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subgroup`
--

INSERT INTO `subgroup` (`subgroupid`, `subgroupname`, `groupid`) VALUES
(15, 'Abd', 6),
(16, 'Gucci', 6),
(17, 'Bastard', 6),
(18, 'Ahaian', 6),
(19, 'Hyuujjju', 6);

-- --------------------------------------------------------

--
-- Table structure for table `subtopic`
--

CREATE TABLE `subtopic` (
  `subtopicid` int(11) NOT NULL,
  `subtopicname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `topicid` int(11) NOT NULL,
  `channeltype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subtopic`
--

INSERT INTO `subtopic` (`subtopicid`, `subtopicname`, `topicid`, `channeltype`) VALUES
(12, 'Hosting', 7, 0),
(13, 'dsadsad', 7, 1),
(14, 'adadsad dasdwd', 7, 2),
(15, 'dsdoas', 7, 2),
(16, 'Thb', 7, 2),
(17, 'Etui', 7, 1),
(18, 'dsdoas', 7, 0),
(19, 'Tuhh', 8, 0),
(20, 'Uhvfg', 8, 1),
(21, 'Cuoci', 8, 2),
(22, 'Godlike channel', 9, 2),
(23, 'Piss', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topicid` int(11) NOT NULL,
  `topicname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subgroupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topicid`, `topicname`, `subgroupid`) VALUES
(7, 'Fucking baby', 15),
(8, 'Xyz', 15),
(9, 'Baby food', 17);

-- --------------------------------------------------------

--
-- Table structure for table `userdetail`
--

CREATE TABLE `userdetail` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userimage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userdetail`
--

INSERT INTO `userdetail` (`userid`, `username`, `email`, `password`, `telephone`, `usertype`, `status`, `secure`, `userimage`) VALUES
(1, 'lqnhut1995', 'lqnhut1995@gmail.com', 'lamquangnhut', NULL, NULL, NULL, NULL, NULL),
(2, 'chiensaker', 'chiensaker2018@gmail.com', 'lamquangnhut', NULL, NULL, NULL, NULL, NULL),
(3, 'chiensaker', 'chiensaker@gmail.com', 'lamquangnhut', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `userid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `subgroupid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`userid`, `groupid`, `subgroupid`) VALUES
(1, 6, NULL),
(1, 11, NULL),
(1, 12, NULL),
(1, 15, NULL),
(1, 16, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userrole`
--

CREATE TABLE `userrole` (
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`dataid`),
  ADD KEY `fk_data_message_1` (`messageid`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`userid`,`otheruserid`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`messageid`),
  ADD KEY `fk_message_subTopic_1` (`subtopicid`),
  ADD KEY `fk_message_privateroom_1` (`privateroomid`),
  ADD KEY `fk_message_userdetail` (`userid`);

--
-- Indexes for table `privateroom`
--
ALTER TABLE `privateroom`
  ADD PRIMARY KEY (`privateroomid`);

--
-- Indexes for table `privateroomdetail`
--
ALTER TABLE `privateroomdetail`
  ADD PRIMARY KEY (`userid`,`otheruserid`,`privateroomid`),
  ADD KEY `fk_privateroomdetail_privateroom_1` (`privateroomid`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`requestid`),
  ADD UNIQUE KEY `userid` (`userid`,`requestforuserid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleid`),
  ADD KEY `fk_role_group` (`groupid`);

--
-- Indexes for table `rolesetting`
--
ALTER TABLE `rolesetting`
  ADD KEY `fk_rolesetting_settingdetail` (`settingdetailid`),
  ADD KEY `fk_rolesetting_role` (`roleid`);

--
-- Indexes for table `settingdescription`
--
ALTER TABLE `settingdescription`
  ADD PRIMARY KEY (`settingdescriptionid`);

--
-- Indexes for table `settingdetail`
--
ALTER TABLE `settingdetail`
  ADD PRIMARY KEY (`settingdetailid`),
  ADD KEY `fk_settingdetail_settinggroup` (`settinggroupid`),
  ADD KEY `fk_settingdetail_settingtype` (`settingtypeid`),
  ADD KEY `fk_settingdetail_settingdescription` (`settingdescriptionid`);

--
-- Indexes for table `settinggroup`
--
ALTER TABLE `settinggroup`
  ADD PRIMARY KEY (`settinggroupid`);

--
-- Indexes for table `settingtype`
--
ALTER TABLE `settingtype`
  ADD PRIMARY KEY (`settingtypeid`);

--
-- Indexes for table `subgroup`
--
ALTER TABLE `subgroup`
  ADD PRIMARY KEY (`subgroupid`),
  ADD KEY `fk_subGroup_Group_1` (`groupid`);

--
-- Indexes for table `subtopic`
--
ALTER TABLE `subtopic`
  ADD PRIMARY KEY (`subtopicid`),
  ADD KEY `fk_subTopic_topic_1` (`topicid`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topicid`),
  ADD KEY `fk_topic_subGroup_1` (`subgroupid`);

--
-- Indexes for table `userdetail`
--
ALTER TABLE `userdetail`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`groupid`,`userid`),
  ADD KEY `fk_userInfo_userDetail_1` (`userid`),
  ADD KEY `fk_userInfo_subGroup_1` (`subgroupid`);

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
  ADD KEY `fk_userrole_userdetail` (`userid`),
  ADD KEY `fk_userrole_role` (`roleid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `dataid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;
--
-- AUTO_INCREMENT for table `privateroom`
--
ALTER TABLE `privateroom`
  MODIFY `privateroomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `requestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `settingdescription`
--
ALTER TABLE `settingdescription`
  MODIFY `settingdescriptionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `settingdetail`
--
ALTER TABLE `settingdetail`
  MODIFY `settingdetailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `settinggroup`
--
ALTER TABLE `settinggroup`
  MODIFY `settinggroupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settingtype`
--
ALTER TABLE `settingtype`
  MODIFY `settingtypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subgroup`
--
ALTER TABLE `subgroup`
  MODIFY `subgroupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `subtopic`
--
ALTER TABLE `subtopic`
  MODIFY `subtopicid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `topicid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `userdetail`
--
ALTER TABLE `userdetail`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data`
--
ALTER TABLE `data`
  ADD CONSTRAINT `fk_data_message_1` FOREIGN KEY (`messageid`) REFERENCES `message` (`messageid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `fk_friends_userdetail_1` FOREIGN KEY (`userid`) REFERENCES `userdetail` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_message_privateroom_1` FOREIGN KEY (`privateroomid`) REFERENCES `privateroom` (`privateroomid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_message_subTopic_1` FOREIGN KEY (`subtopicid`) REFERENCES `subtopic` (`subtopicid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_message_userdetail` FOREIGN KEY (`userid`) REFERENCES `userdetail` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `privateroomdetail`
--
ALTER TABLE `privateroomdetail`
  ADD CONSTRAINT `fk_privateroomdetail_privateroom_1` FOREIGN KEY (`privateroomid`) REFERENCES `privateroom` (`privateroomid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_privateroomdetail_userdetail_1` FOREIGN KEY (`userid`) REFERENCES `userdetail` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `fk_request_userdetail_1` FOREIGN KEY (`userid`) REFERENCES `userdetail` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `fk_role_group` FOREIGN KEY (`groupid`) REFERENCES `group` (`groupid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rolesetting`
--
ALTER TABLE `rolesetting`
  ADD CONSTRAINT `fk_rolesetting_role` FOREIGN KEY (`roleid`) REFERENCES `role` (`roleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rolesetting_settingdetail` FOREIGN KEY (`settingdetailid`) REFERENCES `settingdetail` (`settingdetailid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `settingdetail`
--
ALTER TABLE `settingdetail`
  ADD CONSTRAINT `fk_settingdetail_settingdescription` FOREIGN KEY (`settingdescriptionid`) REFERENCES `settingdescription` (`settingdescriptionid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_settingdetail_settinggroup` FOREIGN KEY (`settinggroupid`) REFERENCES `settinggroup` (`settinggroupid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_settingdetail_settingtype` FOREIGN KEY (`settingtypeid`) REFERENCES `settingtype` (`settingtypeid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subgroup`
--
ALTER TABLE `subgroup`
  ADD CONSTRAINT `fk_subGroup_Group_1` FOREIGN KEY (`groupid`) REFERENCES `group` (`groupid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subtopic`
--
ALTER TABLE `subtopic`
  ADD CONSTRAINT `fk_subTopic_topic_1` FOREIGN KEY (`topicid`) REFERENCES `topic` (`topicid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `fk_topic_subGroup_1` FOREIGN KEY (`subgroupid`) REFERENCES `subgroup` (`subgroupid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD CONSTRAINT `fk_userInfo_Group_1` FOREIGN KEY (`groupid`) REFERENCES `group` (`groupid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_userInfo_subGroup_1` FOREIGN KEY (`subgroupid`) REFERENCES `subgroup` (`subgroupid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_userInfo_userDetail_1` FOREIGN KEY (`userid`) REFERENCES `userdetail` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userrole`
--
ALTER TABLE `userrole`
  ADD CONSTRAINT `fk_userrole_role` FOREIGN KEY (`roleid`) REFERENCES `role` (`roleid`),
  ADD CONSTRAINT `fk_userrole_userdetail` FOREIGN KEY (`userid`) REFERENCES `userdetail` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
