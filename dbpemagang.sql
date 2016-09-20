-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2016 at 10:40 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpemagang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_ao_perusahaan`
--

CREATE TABLE `tb_ao_perusahaan` (
  `id` int(255) NOT NULL,
  `nama_ao_id` varchar(255) DEFAULT NULL,
  `nama_ao_jp` varchar(255) DEFAULT NULL,
  `alamat_id` varchar(255) DEFAULT NULL,
  `alamat_jp` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `no_tlp` varchar(255) DEFAULT NULL,
  `no_fax` varchar(255) DEFAULT NULL,
  `nama_pic1` varchar(255) DEFAULT NULL,
  `email_pic1` varchar(255) DEFAULT NULL,
  `no_tlp_pic1` varchar(255) DEFAULT NULL,
  `nama_pic2` varchar(255) DEFAULT NULL,
  `email_pic2` varchar(255) DEFAULT NULL,
  `no_tlp_pic2` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ao_perusahaan`
--

INSERT INTO `tb_ao_perusahaan` (`id`, `nama_ao_id`, `nama_ao_jp`, `alamat_id`, `alamat_jp`, `kode_pos`, `web`, `no_tlp`, `no_fax`, `nama_pic1`, `email_pic1`, `no_tlp_pic1`, `nama_pic2`, `email_pic2`, `no_tlp_pic2`, `doc`, `ket`, `status`) VALUES
(19, 'Yayasan Adi Makmur Abadi', 'Yayasan Adi Makmur Abadi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1'),
(20, 'Yayasan Kembali Sejahtera', 'Yayasan Kembali Sejahtera', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_keterampilan`
--

CREATE TABLE `tb_jenis_keterampilan` (
  `id` int(255) NOT NULL,
  `jenis_keterampilan_id` varchar(255) DEFAULT NULL,
  `jenis_keterampilan_jp` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenis_keterampilan`
--

INSERT INTO `tb_jenis_keterampilan` (`id`, `jenis_keterampilan_id`, `jenis_keterampilan_jp`, `doc`, `ket`) VALUES
(15, 'Web Desain', 'Web Desain', '', ''),
(16, 'Web Programming', 'Web Programming', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_usaha`
--

CREATE TABLE `tb_jenis_usaha` (
  `id` int(255) NOT NULL,
  `jenis_usaha_id` varchar(255) DEFAULT NULL,
  `jenis_usaha_jp` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenis_usaha`
--

INSERT INTO `tb_jenis_usaha` (`id`, `jenis_usaha_id`, `jenis_usaha_jp`, `doc`, `ket`) VALUES
(25, 'IT Develover', 'IT Develover', '', ''),
(24, 'IT Support', 'IT Support', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nama_peserta`
--

CREATE TABLE `tb_nama_peserta` (
  `id` int(255) NOT NULL,
  `nama_peserta` varchar(255) DEFAULT NULL,
  `tgl_lahir` varchar(255) DEFAULT NULL,
  `asal_daerah` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `nama_perusahaan` varchar(255) DEFAULT NULL,
  `ao` varchar(255) DEFAULT NULL,
  `jenis_usaha` varchar(255) DEFAULT NULL,
  `jenis_keterampilan` varchar(255) DEFAULT NULL,
  `tgl_interview` varchar(255) DEFAULT NULL,
  `tgl_masuk` varchar(255) DEFAULT NULL,
  `tgl_rencana_berangkat` varchar(255) DEFAULT NULL,
  `tgl_berangkat` varchar(255) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `hasil_mcu_1` varchar(255) DEFAULT NULL,
  `per_mcu_1` varchar(255) DEFAULT NULL,
  `hasil_mcu_2` varchar(255) DEFAULT NULL,
  `per_mcu_2` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nama_peserta`
--

INSERT INTO `tb_nama_peserta` (`id`, `nama_peserta`, `tgl_lahir`, `asal_daerah`, `jenis_kelamin`, `nama_perusahaan`, `ao`, `jenis_usaha`, `jenis_keterampilan`, `tgl_interview`, `tgl_masuk`, `tgl_rencana_berangkat`, `tgl_berangkat`, `kelas`, `hasil_mcu_1`, `per_mcu_1`, `hasil_mcu_2`, `per_mcu_2`, `status`) VALUES
(19, 'Muhammad Ammar', '1995-12-21', 'Bekasi', 'P', '36', '20', '25', '16', '2016-07-26', '2016-08-26', '2016-09-26', '', NULL, '', '', '', '', '2'),
(20, 'Dian Okta', '1998-10-31', 'Padalarang', 'W', '35', '20', '24', '15', '2016-07-26', '2016-08-26', '2016-10-26', '', NULL, '', '', '', '', '1'),
(21, 'Rizki', '1999-03-03', 'Tambun', 'P', '35', '19', '25', '16', '2016-07-26', '2016-08-26', '2016-11-26', '', NULL, '', '', '', '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_perusahaan`
--

CREATE TABLE `tb_perusahaan` (
  `id` int(255) NOT NULL,
  `nama_perusahaan_id` varchar(255) DEFAULT NULL,
  `nama_perusahaan_jp` varchar(255) DEFAULT NULL,
  `alamat_id` varchar(255) DEFAULT NULL,
  `alamat_jp` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `no_tlp` varchar(255) DEFAULT NULL,
  `no_fax` varchar(255) DEFAULT NULL,
  `nama_pic1` varchar(255) DEFAULT NULL,
  `email_pic1` varchar(255) DEFAULT NULL,
  `no_tlp_pic1` varchar(255) DEFAULT NULL,
  `nama_pic2` varchar(255) DEFAULT NULL,
  `email_pic2` varchar(255) DEFAULT NULL,
  `no_tlp_pic2` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_perusahaan`
--

INSERT INTO `tb_perusahaan` (`id`, `nama_perusahaan_id`, `nama_perusahaan_jp`, `alamat_id`, `alamat_jp`, `kode_pos`, `web`, `no_tlp`, `no_fax`, `nama_pic1`, `email_pic1`, `no_tlp_pic1`, `nama_pic2`, `email_pic2`, `no_tlp_pic2`, `doc`, `ket`, `status`) VALUES
(36, 'Joko Trade Master', 'Joko Trade Master', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1'),
(35, 'Sinau Academy', 'Sinau Academy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status_peserta`
--

CREATE TABLE `tb_status_peserta` (
  `id` int(255) NOT NULL,
  `status_peserta` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_status_peserta`
--

INSERT INTO `tb_status_peserta` (`id`, `status_peserta`) VALUES
(0, 'Peserta'),
(1, 'Berada Di Jepang'),
(2, 'Pra Pemagang'),
(3, 'Peserta Lainya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_ao_perusahaan`
--
ALTER TABLE `tb_ao_perusahaan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indexes for table `tb_jenis_keterampilan`
--
ALTER TABLE `tb_jenis_keterampilan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indexes for table `tb_jenis_usaha`
--
ALTER TABLE `tb_jenis_usaha`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indexes for table `tb_nama_peserta`
--
ALTER TABLE `tb_nama_peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indexes for table `tb_status_peserta`
--
ALTER TABLE `tb_status_peserta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_ao_perusahaan`
--
ALTER TABLE `tb_ao_perusahaan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tb_jenis_keterampilan`
--
ALTER TABLE `tb_jenis_keterampilan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tb_jenis_usaha`
--
ALTER TABLE `tb_jenis_usaha`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tb_nama_peserta`
--
ALTER TABLE `tb_nama_peserta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
