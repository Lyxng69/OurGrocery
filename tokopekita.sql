-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Des 2021 pada 05.32
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokopekita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `tglorder` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'Cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`idcart`, `orderid`, `userid`, `tglorder`, `status`) VALUES
(10, '15wKVT0nej25Y', 2, '2020-03-16 12:10:42', 'Selesai'),
(11, '15Swf8Ye0Fm.M', 2, '2020-03-16 12:17:34', 'Selesai'),
(12, '15PzF03ejd8W2', 1, '2020-05-13 02:40:48', 'Selesai'),
(13, '162L4T1qA7eSg', 1, '2021-12-19 09:08:10', 'Cart'),
(14, '16JhorRcHqzQM', 2, '2021-12-19 09:08:50', 'Selesai'),
(15, '16L04pOZR.p/c', 2, '2021-12-19 09:09:40', 'Selesai'),
(16, '16EyP0svpkc1k', 2, '2021-12-19 09:18:57', 'Selesai'),
(17, '16S96GUCQg/9E', 2, '2021-12-19 09:25:03', 'Selesai'),
(18, '16Q9FY7Ewn2Qg', 3, '2021-12-20 05:50:00', 'Selesai'),
(19, '16KKyTbHExYx.', 2, '2021-12-22 01:36:39', 'Selesai'),
(20, '16vjtjCFl2FVs', 4, '2021-12-22 05:20:25', 'Selesai'),
(21, '16Fqdn94b3oXE', 4, '2021-12-29 03:31:09', 'Confirmed'),
(22, '16ytGdXCBA3lg', 4, '2021-12-29 03:36:16', 'Confirmed'),
(23, '16pzkU66uMp9I', 4, '2021-12-29 03:49:33', 'Confirmed'),
(24, '16UgnYYNRQmnI', 4, '2021-12-29 04:08:41', 'Confirmed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailorder`
--

CREATE TABLE `detailorder` (
  `detailid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detailorder`
--

INSERT INTO `detailorder` (`detailid`, `orderid`, `idproduk`, `qty`) VALUES
(27, '16Fqdn94b3oXE', 26, 10),
(28, '16Fqdn94b3oXE', 14, 20),
(29, '16ytGdXCBA3lg', 14, 1),
(30, '16pzkU66uMp9I', 14, 1),
(31, '16UgnYYNRQmnI', 11, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(5, 'Minyak', '2021-12-22 01:30:40'),
(6, 'Minuman', '2021-12-28 03:11:09'),
(7, 'Bumbu Dapur', '2021-12-28 03:11:22'),
(8, 'Snack Ringan', '2021-12-28 03:16:38'),
(9, 'Gula', '2021-12-28 03:18:09'),
(10, 'Beras', '2021-12-28 03:18:18'),
(11, 'Telor', '2021-12-28 03:18:52'),
(12, 'Makanan', '2021-12-28 03:20:33'),
(13, 'Tepung', '2021-12-28 03:20:50'),
(14, 'Rokok', '2021-12-28 03:20:58'),
(15, 'Obat obatan', '2021-12-28 03:21:31'),
(16, 'Pampers', '2021-12-28 03:27:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` varchar(25) NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` timestamp NOT NULL DEFAULT current_timestamp(),
  `bukti` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`idkonfirmasi`, `orderid`, `userid`, `payment`, `namarekening`, `tglbayar`, `tglsubmit`, `bukti`) VALUES
(5, '16Fqdn94b3oXE', 4, 'DANA', 'Alfian Fiki Ardianto', '2021-12-29', '2021-12-29 03:34:07', ''),
(6, '16ytGdXCBA3lg', 4, 'BCA', 'Michael Felix', '2021-12-29', '2021-12-29 03:44:18', ''),
(7, '16pzkU66uMp9I', 4, 'MANDIRI', 'Ekka Oktaviyanti', '2021-12-29', '2021-12-29 03:51:25', ''),
(8, '16UgnYYNRQmnI', 4, 'BCA', 'eka tok', '2021-12-20', '2021-12-29 04:09:47', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(2, 'Guest', 'guest', '$2y$10$xXEMgj5pMT9EE0QAx3QW8uEn155Je.FHH5SuIATxVheOt0Z4rhK6K', '01234567890', 'Indonesia', '2020-03-16 11:30:40', 'Member', NULL),
(3, 'FALIKH RIFQI NAIL ', 'falikhrifqi69@gmail.com', '$2y$10$G0TepGuojgrM.4AFKQM3S.DIg.CyVnpvIBMq79jaHRiNA5/cd3xTi', '085156796373', 'Jalan siliwangi, Jalan kayen kudus', '2021-12-20 03:48:59', 'Admin', NULL),
(4, 'alfian fiki ardianto ', 'alfianfiki69@gmail.com', '$2y$10$lTIbc1VZ3bPXgzmKaC8VnesckL9nxqSUF8qic3DXaN/tvNcFpttRe', '08912358970', 'kembang jepara ', '2021-12-22 05:19:37', 'Member', NULL),
(5, 'Alfian Fiki Ardianto', 'alfianfiki69@gmail.com', '$2y$10$2iXcnIwDu48/L9LNr8W.BORH7HBjHQKjp0KMNffPgk0eSQBhh7iIW', '081890786911', 'Kembang, jepara rt3 rw08', '2021-12-29 03:28:28', 'Member', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text DEFAULT NULL,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(7, 'BCA', '12355122', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Bank_Central_Asia.svg/2560px-Bank_Central_Asia.svg.png', 'RIZQI JAYA'),
(8, 'MANDIRI', '1222345910012', 'https://logos-download.com/wp-content/uploads/2016/06/Bank_Mandiri_logo_white_bg.png', 'RIZQI JAYA'),
(9, 'GOPAY', '085156796373', 'https://4.bp.blogspot.com/-1uknxH71s9s/WwPYuFtpahI/AAAAAAAANos/MOR7gGcJR-8hlUQoSk0Tywqo8caAID0hACLcBGAs/s1600/Go%2BPay.jpg', 'RIZQI JAYA'),
(10, 'DANA', '085156796373', 'https://1.bp.blogspot.com/-fvIxf9jrXBQ/Xytve_Yq_uI/AAAAAAAAClw/31J-RhOBi5Qc5oCmP8-UUhgZE-oSoeJWwCLcBGAsYHQ/s1600/Logo%2BDana%2BBackground%2BBiru.jpg', 'RIZQI JAYA'),
(11, 'OVO', '085156796373', 'https://1.bp.blogspot.com/-Iq0Ztu117_8/XzNYaM4ABdI/AAAAAAAAHA0/MabT7B02ErIzty8g26JvnC6cPeBZtATNgCLcBGAsYHQ/s1000/logo-ovo.png', 'RIZQI JAYA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`, `tgldibuat`) VALUES
(9, 10, 'TOPI KOKI BERAS PANDAN WANGI 5', 'produk/16Z.H7NXKOGmQ.jpg', 'Padi Pandanwangi adalah salah satu jenis varietas padi bulu (javanica) yang tumbuh dan berkembang di Cianjur yang juga merupakan salah satu varietas lokal khas Cianjur yang berasnya sebagian besar dipasarkan dan dikonsumsi oleh masyarakat golongan menengah ke atas karena memiliki cita rasa yang khas.', 4, 69500, 66500, '2021-12-28 04:50:29'),
(10, 10, 'PANDAN WANGI BMW PULEN 5 KG', 'produk/16P7vIYJ1bgQQ.jpg', 'Padi Pandanwangi adalah salah satu jenis varietas padi bulu (javanica) yang tumbuh dan berkembang di Cianjur yang juga merupakan salah satu varietas lokal khas Cianjur yang berasnya sebagian besar dipasarkan dan dikonsumsi oleh masyarakat golongan menengah ke atas karena memiliki cita rasa yang khas.', 5, 75000, 67899, '2021-12-28 04:52:54'),
(11, 10, 'BERAS PANDAN WANGI ASLI SINTAN', 'produk/16SRRN.uXbUC2.jpg', 'Padi Pandanwangi adalah salah satu jenis varietas padi bulu (javanica) yang tumbuh dan berkembang di Cianjur yang juga merupakan salah satu varietas lokal khas Cianjur yang berasnya sebagian besar dipasarkan dan dikonsumsi oleh masyarakat golongan menengah ke atas karena memiliki cita rasa yang khas.', 5, 92500, 87500, '2021-12-28 04:59:17'),
(12, 10, 'BERAS ROJOLELE 25 KG PULEN', 'produk/16G6xwafmUB3M.jpg', 'Rojolele atau yang juga biasa disebut sebagai Beras Munjul memiliki bentuk cenderung bulat dengan sedikit bagian berwarna putih susu. Selain itu, beras ini juga nggak memiliki aroma khas seperti pandan wangi. Jika sudah dimasak, nasi yang dihasilkan memiliki tekstur pulen yang lembut.', 5, 260000, 250000, '2021-12-28 05:06:02'),
(14, 5, 'ROSE BRAND MINYAK GORENG 2L ', 'produk/16lf8V00G5VY6.jpg', 'Rose Brand Minyak Goreng merupakan produk minyak goreng yang terbuat dari kelapa sawit pilihan berkualitas. Dimana, kelapa sawit diproses secara modern dengan teknologi tinggi secara higienis untuk membuat semua masakan Anda menjadi lebih gurih dan lezat.', 5, 250000, 247000, '2021-12-28 05:17:58'),
(15, 5, 'MINYAK GORENG BIMOLI 2 L', 'produk/16rKgYtHSVMow.jpg', 'Bimoli dibuat dari 100% minyak sawit sehingga menghasilkan kualitas tinggi dan merupakan sumber beta-karoten (pro-vitamin A) tinggi serta vitamin E. Cocok untuk memasak, menggoreng dan menumis.', 5, 245000, 240000, '2021-12-28 06:15:40'),
(16, 5, 'SANIA MINYAK GORENG 2 L', 'produk/16ABfvNl3Hohs.jpg', 'Sania adalah minyak goreng premium yang diproduksi dengan beberapa tahap proses pemurnian dan penyaringan. KOMPOSISI : Minyak kelapa sawit dan vitamin A (mengandung antioksidan tokoferol).', 5, 235000, 230000, '2021-12-28 07:06:23'),
(17, 5, 'MINYAK GORENG SUNCO 2 L', 'produk/16TKT5YNF1uYw.jpg', 'SUNCO Minyak Goreng Botol merupakan minyak yang bening dan tidak cepat hitam yang meminimalkan resiko kanker untuk keluarga Anda. Diproduksi dari buah kepala sawit yang segar. Minyak ini juga sudah diuji organoleptik yang membuktikan kualitas minyak goreng yang baik secara sensorik.', 5, 260000, 244000, '2021-12-28 07:13:27'),
(18, 5, 'MINYAK GORENG FORTUNE 2 L', 'produk/16H0UR0dLsamQ.jpg', 'Fortune adalah minyak goreng nabati yang diproses dari buah kelapa sawit segar dan bermutu, serta pengawasan mutu yang ketat.', 5, 231000, 225000, '2021-12-28 07:17:03'),
(26, 10, 'SANIA BERAS PREMIUM 5 KG', 'produk/16nYpeGPqeCEY.jpg', 'SANIA BERAS PREMIUM merupakan beras murni yang berasal dari padi berkualitas, serta diproses secara higienis dan tidak menggunakan pemutih atau pengawet, sehingga menghasilkan nasi yang pulen. Aman dikonsumsi untuk seluruh anggota keluarga Anda.', 5, 63200, 59500, '2021-12-28 08:02:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`),
  ADD UNIQUE KEY `orderid` (`orderid`),
  ADD KEY `orderid_2` (`orderid`);

--
-- Indeks untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  ADD PRIMARY KEY (`detailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`idkonfirmasi`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `idkonfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `idproduk` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `cart` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
