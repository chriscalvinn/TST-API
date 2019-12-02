-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 05:45 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Judul` varchar(255) DEFAULT NULL,
  `Penulis` varchar(255) DEFAULT NULL,
  `Penerbit` varchar(255) DEFAULT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `Tahun_Terbit` varchar(255) DEFAULT NULL,
  `Harga` int(11) NOT NULL DEFAULT '0',
  `Berat` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Judul`, `Penulis`, `Penerbit`, `ISBN`, `Tahun_Terbit`, `Harga`, `Berat`) VALUES
('The Story of the olympic games ', 'KIERAN, John', 'J. B. Lippincott', '4495211134021', '1961', 479000, 6),
('MATEMATIKA pendahuluan', 'Calvin', 'C.Cal', '123456789010', '1999', 500000, 0),
('Laporan studi keberhasilan kuliah kerja nyata Universitas Jenderal Soedirman tahun 1980/1981', 'null', 'Tim Evaluasi KKN UNSOED', '4337351946496', '1981', 294000, 9),
('Laporan pelaksanaan Kuliah Kerja Nyata IKIP Ujung Pandang 1986/1987', 'null', 'Pusat Pengabdian Masyarakat IKIP Ujung Pandang', '228704133977', '1987', 474000, 4),
('Laporan pelaksanaan Kuliah Kerja Nyata IKIP Ujung Pandang angkatan XV 1987/1988', 'null', 'Pusat Pengabdian Masyarakat IKIP Ujung Pandang', '4915195582060', '1987', 193000, 7),
('Laporan Kuliah Kerja Nyata mahasiswa Institut Pertanian Bogor 1981/9182', 'null', 'Pusat Pengelolaan dan Pengembangan Kuliah Kerja Nyata LPM- IPB', '1266144105303', '1983', 171000, 8),
('Olah-raga lari berprestasi', 'YAYA Tasmaya', 'Pradnya Paramita', '2324121476198', '1984', 100000, 1),
('Laporan pelaksanaan Kuliah Kerja Nyata (KKN) Universitas Jenderal Soedirman tahun 1982/1983', 'null', 'Pusat Pengabdian pada Masyarakat Universitas Jenderal Soedirman', '2920502260535', '1983', 185000, 5),
('Laporan Kuliah Kerja Nyata Universitas Gadjah Mada 1984/1985', 'null', 'Lembaga Pengabdian Pada Masyarakat UGM', '9484142012712', '1985', 447000, 4),
('Laporan pelaksanaan Kuliah Kerja Nyata Universitas Udayana tahun 1982/1983', 'null', 'Panitia Pelaksana KKN UNUD', '5254390935383', '1983', 111000, 6),
('Laporan pelaksanaan Kuliah Kerja Nyata Universitas Udayana tahun 1983/1984', 'null', 'Panitia Pelaksana KKN UNUD', '2918064804753', '1984', 174000, 5),
('Alumni Universitas Sumatera Utara 1957-1978 ini berdasarkan laporan-laporan dari fakultas-fakultas dilingkungan USU Medan.', 'null', 'Biro Rektor USU', '5837140328192', '2019', 254000, 1),
('Laporan tengah tahun Institut teknologi Bandung tahun anggaran 1983/1984', 'null', 'Sekretariat Bidang Pengembangan ITB', '5947274183595', '1984', 133000, 5),
('Buletin statistik perdagangan luar negeri', 'null', 'Biro Pusat Statistik', '8458105141798', '1995', 456000, 6),
('Laporan pelaksanaan Kuliah Kerja Nyata IKIP Semarang 1987/1988', 'null', 'Pusat Pengabdian Pada Masyarakat IKIP Semarang', '8466174135430', '1988', 341000, 3),
('Laporan Pelaksanaan Kuliah Kerja Nyata Universitas Mataram 1986/1987', 'null', 'Badan Pelaksanan KKN Universitas Mataram', '4505665510643', '1986', 111000, 6),
('Laporan pelaksaan Kuliah Kerja Nyata (KKN) tahun 1987/1988', 'null', 'Balai Pengabdian Pada Masyarakat Universitas Tanjungpura', '7111799610682', '1988', 109000, 9),
('Laporan pelaksanaan program Kuliah Kerja Nyata (K.K.N.)', 'null', 'Pusat Pengabdian Pada Masyarakat Universitas Brawijaya', '7369252222886', '1984', 287000, 7),
('Laporan pelaksanaan Kuliah Kerja Nyata Universitas Mataram tahun 1983/1984', 'null', 'Badan Pelaksana KKN Universitas Mataram', '7962908358165', '1984', 123000, 3),
('Laporan pelaksanan Kuliah Kerja Nyata (KKN) Universitas Riau tahun 1984/1985', 'null', 'Badan Pelaksana Kuliah Kerja Nyata Universitas Riau', '3457252799054', '1985', 160000, 4),
('PANDUAN dan promosi PON XIII.', 'null', 'Departemen Penerangan RI', '8134419138758', '1993', 276000, 9),
('LAPORAN seminar nasional teknologi tinggi dalam era tinggal landas pembangunan, 14-15 Juni 1988', 'null', 'Universitas Kristen Indonesia Paulus', '4413184990160', '1988', 497000, 8),
('Nationaal sport gedenkboek', 'TERWOGT, H. A. Meerum', 'Koloniale Boek Centrale', '6463054875697', '1928', 251000, 1),
('Petunjuk lengkap softball dan baseball', 'BETHEL, Dell', 'Dahara Prize', '1606224746130', '1993', 206000, 6),
('Dasar-dasar atletik', 'MCMANE, Fred', 'Angkasa', '5979230971432', '1987', 241000, 9),
('Teruslah cintai negeri ini ', 'null', 'Biro Komunikasi dan Layanan Informasi Kemenkeu RI', '5493658623596', '2017', 451000, 6),
('Teruslah cintai negeri ini ', 'null', 'Biro Komunikasi dan Layanan Informasi Kemenkeu RI', '3119461251638', '2017', 140000, 3),
('Teruslah cintai negeri ini ', 'null', 'Biro Komunikasi dan Layanan Informasi Kemenkeu RI', '2841051261089', '2017', 468000, 1),
('JAEA R&D review 2018-19', 'null', 'Japan Atomic Energy Agency', '9387083310475', '2018', 307000, 1),
('JUDGING and coaching women\'s gymnastics', 'null', 'Mayfield', '6049864992511', '1972', 228000, 8),
('Menggerakkan ekonomi berkeadilan = driving an equitable economy ', 'null', 'Kementerian Keuangan RI', '7420204399769', '2017', 174000, 1),
('Statistik ekonomi keuangan daerah Jawa Barat, Januari 2019 = regional economic financial statistic, January 2019', 'null', 'Bank Indonesia', '578267199983', '2019', 352000, 6),
('Wai tan kung', 'CHANG, Chih-Tung', 'Tata Media', '3645733293374', '1986', 166000, 3),
('Athletic training and conditioning', 'DAYTON, O. William', 'Ronald Press', '7283354041954', '1965', 154000, 3),
('Atletik ', 'BERNHARD, Gunter', 'Dahara Prize', '6560281461312', '1993', 176000, 1),
('Modern bridge construction ', 'TAYLOR, F. Johnstone', 'The Technical Press', '7399561788186', '1930', 250000, 3),
('The Lean startup', 'RIES, Eric', 'Bentang', '2980072733501', '2015', 367000, 8),
('Text book of petrology, volume two ', 'HATCH, F. H.', 'Thomas Murby', '8589763357436', '1957', 452000, 6),
('Spectral well logging ', 'KUDYMOV, B. Y.', 'Elsevier', '4821010777772', '1962', 249000, 8),
('Fluvial sequences of the Maas ', 'BERG, Meindert Wiebe van den', 'Landbouwuniversiteit Wageningen', '1980609163513', '1996', 293000, 9),
('Introduction to electrodynamics', 'GRIFFITHS, David J.', 'Prentice Hall of India', '3156628373102', '1995', 421000, 8),
('Wanita di dalam Islam', 'Mernissi, Fatima', 'Penerbit Pustaka', '5956551840316', '1994', 192000, 2),
('Kajian ekonomi dan keuangan regional Provinsi Jawa Barat, Februari 2019', 'null', 'Bank Indonesia', '4791001066340', '2019', 363000, 9),
('Kajian lanjutan indeks ketimpangan gender 2017', 'null', 'Badan Pusat Statistik', '8847063060421', '2017', 284000, 2),
('Statistik kriminal 2018', 'null', 'Badan Pusat Statistik', '6256800544930', '2018', 455000, 1),
('Indeks perilaku anti korupsi 2018', 'null', 'Badan Pusat Statistik', '5380561678130', '2018', 286000, 9),
('Statistik politik 2018', 'null', 'Badan Pusat Statistik', '4657830551009', '2018', 494000, 5),
('A history of East Africa', 'MARS, Zoe', 'Cambridge University Press', '205522010538', '1972', 342000, 9),
('Buku test', 'Calvin', 'C.Cal', '123456789010', '1999', 500000, 5),
('Buku test', 'Calvin', 'C.Cal', '123456789010', '1999', 500000, 5),
('Buku test', 'Calvin', 'C.Cal', '123456789010', '1999', 500000, 5),
('Test Book', 'Calvin', 'C.Cal', '123456789010', '1999', 500000, 5),
('Test Book', 'Calvin', 'C.Cal', '123456789010', '1999', 500000, 5),
('Test Book', 'Calvin', 'C.Cal', '123456789010', '1999', 500000, 5),
('Test Book', 'Calvin', 'C.Cal', '123456789010', '1999', 500000, 5),
('Test Book', 'Calvin', 'C.Cal', '123456789010', '1999', 500000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `goods` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  `courier` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `updatedDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `origin`, `destination`, `goods`, `weight`, `cost`, `courier`, `status`, `date`, `updatedDate`) VALUES
('421354866830275', 'calvin', 'Bandung', 'Bogor', 'Test Book', '1700', '20000', 'jne', 'packing', '02/12 2019', '02/12/2019'),
('536476711830240', 'cal', 'Yogyakarta', 'Denpasar', 'buku', '1700', '52000', 'jne', 'packing', '30/11 2019', '30/11/2019'),
('784434881241661', 'calvin', 'Yogyakarta', 'Denpasar', 'Test Book', '1700', '52000', 'jne', 'packing', '02/12 2019', '02/12/2019'),
('885838000855886', 'cal', 'Yogyakarta', 'Denpasar', 'buku', '1700', '52000', 'jne', 'packing', '02/12 2019', '02/12/2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
