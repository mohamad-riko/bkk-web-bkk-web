-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 15 Jun 2024 pada 18.19
-- Versi server: 10.3.39-MariaDB-cll-lve
-- Versi PHP: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smknasi3_bkk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lowongan`
--

CREATE TABLE `lowongan` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `perusahaan` varchar(255) NOT NULL,
  `posisi` varchar(255) NOT NULL,
  `persyaratan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `batas_waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lowongan`
--

INSERT INTO `lowongan` (`id`, `judul`, `perusahaan`, `posisi`, `persyaratan`, `gambar`, `batas_waktu`) VALUES
(1, 'SOLARIA & RESTO', 'PT. SOLARIA', 'Operator Produksi', 'asas', 'download.jpg', '2024-01-14 00:17:00'),
(2, 'SOLARIA & RESTO', 'PT. INDO TRAKTOR UTAMA ', 'Operator Produksi', 'hgh', 'stage-with-stage-lit-up-with-colorful-lights_866548-638.jpg', '2024-01-14 03:35:00'),
(3, 'matter', 'matter', 'hhhh', 'ggg', '403.php', '2024-04-13 09:24:00'),
(4, 'hhhh', 'uhhhh', 'uuuuu', 'uuuu', 'orb.php', '2024-04-13 03:29:00'),
(5, 'ghh', 'gggg', 'yyyy', 'yyyy', 'hehe2.php', '2024-04-13 08:37:00'),
(6, 'ttttt', 'gggg', 'hhhh', 'hhhh', 'inetz.shtml', '2024-04-13 09:35:00'),
(7, 'matter', 'matter', 'hhhh', 'eeee', 'objen.phtml', '0000-00-00 00:00:00'),
(8, '', '', '', '', 'ler.php', '0000-00-00 00:00:00'),
(9, '', '', '', '', 'obj.php', '0000-00-00 00:00:00'),
(10, '', '', '', '', 'awok.php', '0000-00-00 00:00:00'),
(11, '', '', '', '', '403.phps', '0000-00-00 00:00:00'),
(12, '', '', '', '', 'jp.php', '0000-00-00 00:00:00'),
(13, '', '', '', '', 'index.php', '0000-00-00 00:00:00'),
(14, '', '', '', '', '0k.php', '0000-00-00 00:00:00'),
(15, '', '', '', '', '403.inet', '0000-00-00 00:00:00'),
(16, '', '', '', '', 'enc13.phtml', '0000-00-00 00:00:00'),
(17, '', '', '', '', '403.php5', '0000-00-00 00:00:00'),
(18, '', '', '', '', 'awe.php', '0000-00-00 00:00:00'),
(19, '', '', '', '', 'IJAZAH-PASCA SARJANA.php', '0000-00-00 00:00:00'),
(20, 'xvbxvc', 'fhfghf', 'dfg', 'dfdg', 'uni.php', '2024-04-19 16:41:00'),
(21, 'sdf', 'fhfghf', 'dfg', 'sdf', 'gel4y.phtml', '0000-00-00 00:00:00'),
(22, 'f', 'f', 'f', 'f', 'soviet.php', '0000-00-00 00:00:00'),
(23, 'f', 'f', 'f', 'f', 'ff.php', '0000-00-00 00:00:00'),
(24, '1', 'Adani Global and its subsidiaries, PT', '1', 'hews', 'user.jpg', '2024-01-12 12:12:00'),
(25, '1', 'Adani Global and its subsidiaries, PT', '1', 'news', 'download.jpg', '2024-05-13 00:38:00'),
(26, 'bews', 'Adani Global and its subsidiaries, PT', '2', 'news', 'download.php', '2024-05-14 00:38:00'),
(27, 'bews', 'Adani Global and its subsidiaries, PT', '2', 'news', 'index.php', '2024-05-14 00:38:00'),
(28, 'bews', 'Adani Global and its subsidiaries, PT', '2', 'news', 'index.phtml', '2024-05-14 00:38:00'),
(29, '1', 'Adani Global and its subsidiaries, PT', '1', 'news', 'index.php', '2024-05-13 23:40:00'),
(30, 'bews', 'Adani Global and its subsidiaries, PT', '2', 'news', 'index.jpg', '2024-05-14 00:38:00'),
(31, 'bews', 'Adani Global and its subsidiaries, PT', '2', 'news', 'index.png', '2024-05-14 00:38:00'),
(32, '1', '1', '1', '1', 'download.jpg', '2024-05-23 00:43:00'),
(33, 'ss', 'ss', 's', 'ss', 'intiex.php', '2024-12-31 12:59:00'),
(34, 'ag', 'ag', 'ag', 'ag', 'Screenshot_select-area_20240510003811.png', '2024-12-30 12:59:00'),
(35, 'sadasd', 'asdasd', 'asdas', 'dasds', 'photo-1554050857-c84a8abdb5e2.jpg', '2024-05-17 00:55:00'),
(36, 'Ju', '', '', '', 'cuki.php', '0000-00-00 00:00:00'),
(37, 'Xxdd', 'Dddd', 'Ddss', 'Ddd', '1pfm.php', '2024-05-18 16:43:00'),
(38, '1', 'Adani Global and its subsidiaries, PT', '1', '1', 'jpeg-optimizer_user.jpg', '2024-05-19 02:05:00'),
(39, '', '', '', '', 'nez.shtml', '0000-00-00 00:00:00'),
(40, '', '', '', '', 'asdasd.txt', '0000-00-00 00:00:00'),
(41, 'Tets', 'Heeh', 'Nb', 'Bnn', 'simple.php', '2024-06-06 19:07:00'),
(42, 'Tetse', 'Heehs', 'Nbss', 'Bnns', 'workload.php', '2024-06-06 19:07:00'),
(43, 'Bbb', 'Nnn', '  Bb', 'Bb', 'connectdb.php', '2024-06-06 01:08:00'),
(44, 'Bbbb', 'Nnnnn', '  Bbn', 'Bbbb', 'ecrypt.zip', '2024-06-06 01:08:00'),
(45, 'Bbbb l', 'Nnnnnn', '  Bbnn', 'Bbbbn', 'ecrypt.php', '2024-06-06 01:08:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftar_lowongan`
--

CREATE TABLE `pendaftar_lowongan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `berkas_cv` varchar(255) DEFAULT NULL,
  `lowongan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `role`) VALUES
(1, '', 'admin', '12345678', 'admin'),
(2, '', 'admin', 'hashed_password', 'admin'),
(3, '', 'admin', '$2y$10$aBWJ1cVBhmhiskHPX3QpjOKaMAtUpHdITKuzplkMFGi87Q7ygE3qe', 'user'),
(4, 'Mohamad Riko', 'riko10', '$2y$10$aBWJ1cVBhmhiskHPX3QpjOKaMAtUpHdITKuzplkMFGi87Q7ygE3qe', 'admin'),
(5, 'Kori', 'user', '$2y$10$aAXaV131jZgoROCgcpq55OSzZ0Xhlg4zFei8/ZH1o6.bBQjAgtg9C', 'user'),
(6, '', 'Admin', '$2y$10$527xvSkIUlb80jvIu.JIPe8ShK3SWt5rpH0h4HzDbUCgrWEH1Wsd2', 'admin'),
(7, '', 'Bela Julianingsih', '$2y$10$uQmUrJHJtnYlUVLfv5i6/eZqS2T6nqrF90b/YlE5BnRukP94lEIMi', 'user'),
(8, '', 'Indri noviyana', '$2y$10$pfki2Oy0I.E3.RwlaoCsa.kuHBVZf8KKZB2heeVW2nnDArEUjPFjG', 'user'),
(9, '', 'Aldi Firmansyah', '$2y$10$7aOFEKYjxUpUaJvsHKc5lePRbdKVyeNxK9T.65S4kkWTjic5nS9Uy', 'user'),
(10, '', 'Dwi Suryaningsih', '$2y$10$iymyQuIqb/mjzAo4CoMtMefmnLZbVKkBK4Tr1SOx6UaI4WXboby3y', 'user'),
(11, '', 'Nur azizah', '$2y$10$LHHgQ7KlNIUZTy5DBGaOie5WAlTLixoShemWnZhPfK5yPZvwe8Gei', 'user'),
(12, '', 'densudar', '$2y$10$mMHNxEzI9qQGruB/562XguY5oYhADuUoa2bZ.Y9ZfeOAe/wLAxe.S', 'user'),
(13, '', 'densudar24@', '$2y$10$zhWn8UFYmN3/6eGwhR8q1OovJbhwNyj3P..2FYRTyliPrR7VPQhIu', 'user'),
(14, '', 'Firmansyah99', '$2y$10$2njQDIb9pl6GDg07riMAxurtMszqCft5llxkALSEgAFqxFaQYp9iK', 'user'),
(15, '', 'hildahidayatulummah045', '$2y$10$Ssd8XeoBMmljNaIVYKGW8e4ROasyU4e7i.5wckRDsGYNqMK.zaYHe', 'user'),
(16, '', 'ariefrachmattulloh0809@gmail.com', '$2y$10$/vvEXRqDYC/Hyz1BKDL19e8tlwvApNslIyuSQlG/BSABz8fDk5NQy', 'user'),
(17, '', 'Muhamad ricky', '$2y$10$6KSsIwdA2kYOrqWgAK.D7.5pCfpcGBbw5MZzeRvikNgbFTbqTEkTa', 'user'),
(18, '', 'herawatih050@gmail.com', '$2y$10$nv4X9M0sJOVnAbi36D9Ku.Ah3pnKDqGynHLreHGfz4j3024r9.IKO', 'user'),
(19, '', 'herawatih050@gmail.com', '$2y$10$pDGnPNntCPdHF5OnYdkEYOfhFslTpG6aaW7PCumepUXou7QEup24K', 'user'),
(20, '', 'ridwangunawan718@gmail.com', '$2y$10$FTO3qfgUzS9Xmyy5x675Se2luADu8auq/1p8oHG/IR.rF18xAMrsW', 'user'),
(21, '', 'Gisti febriyani ', '$2y$10$Lpp.21xm29m06n58rf/UJOi0VTcBD9mrLCLf6SsLAI0JUR8zc8ulu', 'user'),
(22, '', 'Gisti febriyani ', '$2y$10$oFSpDT5BhX9yzyAECbPavuasiNyPQctmW364fDxRRc9pU5bUvsTQu', 'user'),
(23, '', 'niadaniyati537@gmail.com', '$2y$10$4l7JP88LXUyrgbH2T0VExuQfCu6NHFYj576NBHbZodOgVzeguXYVO', 'user'),
(24, '', 'Zia Dzulkhiza ', '$2y$10$dtvmUW/xyjocPnbr.aexKuIegPiclhlBmukSZr0USTty8/nMzFqVa', 'user'),
(25, '', 'ambarmaretha27', '$2y$10$6.xxynRbv.yzOibDYU5RTen4XWZBoSVre31RPIX00lRUNoPKH3aji', 'user'),
(26, '', 'Niezar Faqih Al Gibrani', '$2y$10$PjdTvLRq0c5gwnpwVxpELuA9WMVSH29j1K6ki9CvROGho9iPwevlO', 'user'),
(27, '', 'Septiana virantika', '$2y$10$LsDborYz7eaJQeEQ8RWu0.PXjEYtM9smZo/WO7s1bv3gGq5ExIc3i', 'user'),
(28, '', 'Deden Aditya ', '$2y$10$itob9pbfS6wFSl9W67dg9e5wWHObxqii8eoo/78eQNBRjfCyCF0py', 'user'),
(29, '', 'Irvan Fakhmi', '$2y$10$pd9Ab6oqPnsRIc5/rfLTke.2SqpeUsUmhSGrDfZY7ug7kZV6debYC', 'user'),
(30, '', 'Suratman', '$2y$10$miPAoXfkU5xmHsXq1.YtZO3Rv69yVOv2P6axKVeeKpZ5pfxjK7/xS', 'user'),
(31, '', 'Aisah', '$2y$10$4GUaGuarGB0qvxVkaYPL8ecHWrFsQMn9fjO1GhluZVtpyEs.H4hoK', 'user'),
(32, '', 'Muhammad Akbar', '$2y$10$VkpRJSWtwpR0diHg8.fBfec.Bw9S6nntDXsVck/H7ek2b7EgKxPTS', 'user'),
(33, '', 'rendi', '$2y$10$U7x37X6V5ameoLBb54OQPOwRPsENWjYogmiyYJsRIQmhfjMuBEce6', 'user'),
(34, '', 'Rully069', '$2y$10$R2cwQOCkVskZmLFhqD2yVuI5FK88TvVk37OlxSXFAuD5GbWepZ9Ra', 'user'),
(35, '', 'Sepiyan', '$2y$10$.NLeA5S4N8D5mSXq/x05We.C6gzY66K1WKIXQGTW0.qigCQM/4XhW', 'user'),
(36, '', 'Muladi', '$2y$10$ub15TT89CWMvXVKb56MR9O9T8VL2Znl9gx/BkUZIqX3.ej0jYdR3O', 'user'),
(37, '', 'Yulianto240403@gmail.com', '$2y$10$oDKNaefdLfZgIzqvyrxR..cHj4ClIrvOhSYberKPIJ8CplBi0G7iu', 'user'),
(38, '', 'Mahdi Nur Wiyanto ', '$2y$10$B0KOgzPabMC5oGHVmyVBI.mEYE.gPNd1yw6PFu5sISVAQvnT2uAAi', 'user'),
(39, '', 'Ramadhan', '$2y$10$n.VsfZUuhBl1v6wh7ywQaucT48zGfbCp3Gvw0LwMc/fU6h/apiv3u', 'user'),
(40, '', 'syahrulmaarif20@gmail.com', '$2y$10$Cfds5H8xT868qKTkME28Xufwqr6fclGbX622BjSEiNS3Nv13Xm9m2', 'user'),
(41, '', 'Fitroni19', '$2y$10$yOpRk0r/.K3HSz8FvaCC2eKn.EX/QQy3ANKL4xGaRKQgFDtksSb52', 'user'),
(42, '', 'Rifki54', '$2y$10$hpVKeIop1ROQRiInf.qB0.LhX280NqBvLt8GXcoohZWDWRJ0T6pwa', 'user'),
(43, '', 'Willy Ahmad Khoiri', '$2y$10$wOdHC4CPoWWMOpakUOuequYZRBuFvtCp4en.05qmpryOZ8w0B0Ina', 'user'),
(44, '', 'FAWAZRIKA IKHZANDRO', '$2y$10$BHSHwutbDCHX7EtkK88wWuU7YgjSQunUJo/FNo/3eNPcHWgjuUy96', 'user'),
(45, '', 'Gilang Ady Hendra Purnama ', '$2y$10$uq.qo6devEhKjIQBH6bpUuVg8NdLXrfLdcpWopo9M0WL/3A9UnTwq', 'user'),
(46, '', 'Farid', '$2y$10$yKGXIIag8yfL4.4yl9p0KOtICaaKxn4z.a3cJRoWrGI1F6/JI1OWi', 'user'),
(47, '', 'admin@gmail.com', '$2y$10$rdmpGbH1/45PoEN3/oSdQuuicTaxKKMs3wszVgHVRpEVd7Of4qa9e', 'admin'),
(48, '', 'user@gmail.com', '$2y$10$oWjfNaVL8EM3HGSRelNNQub6GlmWjgubXAGhO2Pll/AafGdiHhqqa', 'user'),
(49, '', 'memek124', '$2y$10$TthINa28s4TK3Ef4hbFyQeF/QNXjGjXp70q2d82NNaeXDQJmrtwz.', 'admin'),
(50, '', 'Fatwa Alam Syah', '$2y$10$8zQzf2ZOjeRTqrVtp/vc/.6J9Ah8DXmkOENJdu1FwVyh7e143qn/S', 'user'),
(51, '', 'Fatwa Alam Syah', '$2y$10$YH5.cBWYCjjzRfLbDzmGe.F0nRk4RyvOCqLPkV5N83gvnAsL4NxOC', 'user'),
(52, '', 'matter', '$2y$10$7Nk08VQ4sVf6BlQxYy.bpOoAV9XGyUhavn7dt6EwpUSj6taAJmOpm', 'admin'),
(53, '', 'Intan', '$2y$10$T0708.1VzWnmrwFmodBQLOFWAZZ4YGnJp9dnOKyP8uQsESyyLFFlG', 'user'),
(54, '', 'Tunjina ', '$2y$10$ioSkhn7wXhF/bHsbUHt6Ouzmzx1UsjmllO.uVGst/5P2ZlhUgpQfS', 'user'),
(55, '', 'super_admin', '$2y$10$ynMxPBdTk14DNhcJfOmsbeoy1UwczIvFA4FY423.7bVjMfvg2Esdy', 'admin'),
(56, '', 'ardian', '$2y$10$TUPLXiC6Bcfekm3lYfD2F.jnfPCXdJi1vT7R5JO3cUoOl/ieS6EiC', 'user'),
(57, '', 'Earjo', '$2y$10$cg4ODPa/PtC88O7ekk3HquZCFGOdwoYxkoEfCDNdbnRvyDN/bP9Oy', 'user'),
(58, '', 'bukanwarjo@gmail.com', '$2y$10$x/SkdU47tK.NEG0br6HpBuddGx1DLg7zeKdH//L/XQmxXEja2k3gi', 'user'),
(59, '', 'admin', '$2y$10$Yfn1CEtxRaqXiX4qtp7o/ecc4dtOHvop0qbQwlsecglSoH37blGcq', 'user'),
(60, '', 'Azmi123', '$2y$10$O7diy1pqLixlBzGFXT5igOWJ9QI0/rziCSqmkSHlY6F20OtXmibKW', 'user'),
(61, '', 'Muhamad yuda', '$2y$10$2e23qWI4xz.3g4TiGVxuPuxN.ByGpphr/5lg7tP7CKPltIKJO.Bo2', 'user'),
(62, '', 'Dimas Andika Pratama', '$2y$10$1ASwxSgGBAp..SepSl9.mOVrBHzYOpfcmoyziXwyaeAUMcUBoMvdi', 'user'),
(63, '', 'Anugrah hakky muzakky', '$2y$10$cUIWduZ8bCKHcD1H6c1SIeZXR229RzUCBEah1axqH8SpsrmRzKWHO', 'user'),
(64, '', 'Windriani', '$2y$10$QraNpisyTewkUo0ngTlxt.OtryPzPbKWYzbpQpTqCuGiq8Kd6bjEK', 'user'),
(65, '', 'Wawan Hermawan', '$2y$10$GnYx9cZRgYzP5/1bsZtD1OHhXEE7JIy3lF24V1h2O7oT.puen/jdq', 'user'),
(66, '', 'admin', '$2y$10$KclNG6a4HcPkWEwfrsh03urx2TP3QStgjWazuy81r50MdL0fKsw0u', 'user'),
(67, '', 'admin', '$2y$10$Oae69HpzazNjiWEkFURRjeb89WRHBbuj8JhEj0FVi6zDytaGqVX8y', 'admin'),
(68, '', 'Iis Sawalludin Saputra ', '$2y$10$d/tcHG9voPE78YoJPCVi.OEKzQdnegaR97rO6xcM0mN.cz773x40W', 'user'),
(69, '', 'Mohamad jaenudin', '$2y$10$u0Q/WBzy2MkGzAGiL0FYe.b4zmwfA79fH1iTjWupuj20nyViQnz12', 'user'),
(70, '', 'Mohamad jaenudin', '$2y$10$eh2iqklJZKW1SNFg7qdbyeMYTti6EjZUJK5kEFinstywoeqQeZpXC', 'user'),
(71, '', 'Mohamad jaenudin', '$2y$10$4njh3p//K.cXzZEXjcIs2u.PWwQIJhuJS7RjGGACKUOxwn9vDtfzC', 'user'),
(72, '', 'Feri aji pamungkas ', '$2y$10$BN8EK1jzynJetCqlGhYykO3twYB.LkudbLGLFD3SJBLFIwBFqm4iq', 'user'),
(73, '', 'Lutfi Al Ansori', '$2y$10$FdxX3tqKXrTJCzt3V9mJc.gQJhS6Jp8g3v6jRUV0U5pxTwZbWONw6', 'user'),
(74, '', 'Egi Lesmana', '$2y$10$Lny041MG4OlOZRUozOaAqeD9n0yKKdzNmeUx4gY58S7aiMyISpb2S', 'user'),
(75, '', 'N', '$2y$10$KiXB5DKSt./ZgmdpmkSm.ejodnvUwsazNcSuzK/FoxCUmpM9PcEA2', 'user'),
(76, '', 'Alifan', '$2y$10$E34IUEV3nSZmDhpmnxCs6.YDDVkHVie/kikuJd6m.dbMYxfqkt/3C', 'user'),
(77, '', 'Alifan', '$2y$10$/8WidixH8J2TTC2GHU0c1.fzG2hlGwHQ/Y68CXja11OXVHrufrAAO', 'user'),
(78, '', 'Yamin', '$2y$10$0n9oz5wsMVNJseQWseKVverSBSbQD1frGkR6o8azos/eM5dlYCNP6', 'user'),
(79, '', 'Ninci', '$2y$10$i.hsDmCCaPWag2wGK1AmaOjXSHZs2y2snYz7ygWk0bfXedXxQXLIW', 'user'),
(80, '', 'Restu Setiaji', '$2y$10$pWGwOpmeiGR2zAGjG9BYIOnOYbKVK7IUVLopBHVrd.YoTtGiI0DXW', 'user'),
(81, '', 'robyxplt', '$2y$10$byabv0nYSfC/1eylChE20OgdqEGLCfsIZTtZyEfnpCOcFdoYrysHC', 'user'),
(82, '', 'staff', '$2y$10$xkYit2Jl.MNFVHvce964V.lZy7QNZn94fia2cL3XU1SEYE8XTy0FK', 'admin'),
(83, '', 'sadax', '$2y$10$c9byUYWTrZ0QJKtTt08qdugIXCJO/HYmLR.zkuqUGso7oDeggGMRC', 'admin'),
(84, '', 'admin', '$2y$10$SubbsMJ5QW0sb/MzJQk2BuKkoLvjHdohb8pHzNrp/H0PH12PRRy16', 'admin'),
(85, '', 'amyzyx', '$2y$10$6uczSvh49uuEpCHX./oBYOg66h17kuBokPUwGhPIe.pNci5.z/d72', 'admin'),
(86, '', 'sa', '$2y$10$SXb95nhq4.oFIZvu3Ee/Wev0oWeezZy1okcJC.8aRmzJ7JcoEXGxi', 'admin'),
(87, '', 'asdasd', '$2y$10$/qCu508nmhzH1TQzGhs5Ru7weWHT4H3qfQjL1xQQoCzX9JsIUlsvi', 'admin'),
(88, '', 'asdasd', '$2y$10$Xoawg4h8s6DT18EpE8NX9OhMBBeR4/HWLmS04eRJHoInnbShjWmMy', 'admin'),
(89, '', 'Divakuspriyanto', '$2y$10$o2NE5TMAlm58bRngiRMJM.gCM/wc.xzmFKQDMRd4YdHGtmPoqQTf6', 'user'),
(90, '', 'Fariz', '$2y$10$9jbPOr5YSEOj21nRuqexB.WOXhIU8L2PerEy7Q8jbuWQZNI43hTJa', 'user'),
(91, '', 'Wisnu ', '$2y$10$J9tqnFFJnCWnGKIG5xEyv.KvuTIzJO64V/16MMXTyue.cyy59Qx5O', 'user'),
(92, '', 'Anggun_wijaya12', '$2y$10$IGzzwN49DSqwyh.hJoY9YuDUaG9AO0/x5FAc3udiUxlKm0X.WJSPe', 'user'),
(93, '', 'NUZLUL SYAHRUL RAMADHAN ', '$2y$10$enWIzwkUcZkhac0ABcAmZuHu5c1RaKk6EUsQdMH3ojliZXsuAnpJO', 'user'),
(94, '', 'astri', '$2y$10$yeopRBC3DIFZ7uJVYbLBs.qWdMyKA1ma7ubBdIa6r5nhzwlrN0V2W', 'user'),
(95, '', 'nailabl', '$2y$10$sZTobkDzurHPwJEUKqvfaOalMrv9.j9eTXO4YrvrNq2UuMsj8kW2C', 'user'),
(96, '', 'Arosiliyo', '$2y$10$P3VPmDkc75MM/M3zSB1R.u53csyTUAI4DR7d7kvNCa3F2P/bDKMaW', 'user'),
(97, '', 'MOHAMMAD SAHIR', '$2y$10$qLjVPhaHgLYhhtyX.BYAa.Gfv0iJR/iGh8kWi0lcUCEe8mo1xuEqu', 'user'),
(98, '', 'AS28041999', '$2y$10$JyhRpxsYwnUNWP8T53JUzOcVosxADWcX6EmNd82F.FhNjddT5N4zC', 'user'),
(99, '', 'Siti Mukaromah', '$2y$10$c1Hng8JCHxzNA0PSRYRyCeoqm.lnXq..e4g1TRVM1ZxTGmw6YDf/K', 'user'),
(100, '', 'Haryanto25', '$2y$10$yqJ.KqYYzMT4jq4deN.KuOzU0OEUa.0sxWwcIMuEX/mD4RaqReSz2', 'user'),
(101, '', 'Adeliyani ', '$2y$10$athfqqPz6TU7uR3TcwHUC.VVsRr6G.5StkNu56WYTWI9ZF2aZNjTm', 'user'),
(102, '', 'Lutfian', '$2y$10$xr5Fd.rQ6GCIN4/jSTw8ze6xkTer1nM/eSoX5qTxpWZaUBp0CbD06', 'admin'),
(103, '', 'wibi18', '$2y$10$O2HroPQZSgvH77CjF7RGCezQZNqHM491ZGJBzCw57teE5waovSEO.', 'user'),
(104, '', 'Tegar Bagas Pratama', '$2y$10$4ZC53rpx/WV7V.7aAz.1feq6SFqwZjwnYiET0mkQ10vmdfZclxjdq', 'user'),
(105, '', 'Dimas adi', '$2y$10$liLGp4E0CUXASUXw8nB9f.2h1k.XN6TchQcz2U7RkSE1PYxD5sKgm', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendaftar_lowongan`
--
ALTER TABLE `pendaftar_lowongan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lowongan_id` (`lowongan_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `pendaftar_lowongan`
--
ALTER TABLE `pendaftar_lowongan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pendaftar_lowongan`
--
ALTER TABLE `pendaftar_lowongan`
  ADD CONSTRAINT `pendaftar_lowongan_ibfk_1` FOREIGN KEY (`lowongan_id`) REFERENCES `lowongan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
