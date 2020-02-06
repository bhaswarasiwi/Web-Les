-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28 Jun 2019 pada 04.24
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_les`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keahlian`
--

CREATE TABLE `keahlian` (
  `id_keahlian` int(25) NOT NULL,
  `id_pengajar` int(25) DEFAULT NULL,
  `id_materi` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keahlian`
--

INSERT INTO `keahlian` (`id_keahlian`, `id_pengajar`, `id_materi`) VALUES
(7, 4, 7),
(8, 4, 9),
(9, 4, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keahlian2`
--

CREATE TABLE `keahlian2` (
  `id_keahlian` int(25) NOT NULL,
  `id_pengajar` int(25) DEFAULT NULL,
  `materi` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keahlian2`
--

INSERT INTO `keahlian2` (`id_keahlian`, `id_pengajar`, `materi`) VALUES
(0, 0, 'BAHASA INGGRIS SD'),
(9, 5, 'IPA SD'),
(10, 5, 'MATEMATIKA SD'),
(11, 5, 'BAHASA INGGRIS SD'),
(12, 5, 'IPA SMP'),
(13, 6, 'BAHASA INGGRIS SD'),
(14, 6, 'MATEMATIKA SMP'),
(15, 7, 'MATEMATIKA SD'),
(16, 7, 'BAHASA INGGRIS SMP'),
(17, 10, 'MATEMATIKA SD'),
(18, 10, 'IPA SD'),
(19, 10, 'BAHASA INGGRIS SD'),
(20, 10, 'BAHASA INGGRIS SMP'),
(21, 10, 'BAHASA INGGRIS SD'),
(22, 10, 'IPA SMP'),
(23, 10, 'IPA SD'),
(24, 10, 'BAHASA INGGRIS SD'),
(25, 10, 'IPA SMP'),
(26, 10, 'BAHASA INGGRIS SD'),
(27, 10, 'IPA SMP'),
(28, 10, 'MATEMATIKA SMP'),
(29, 10, 'BAHASA INGGRIS SMP'),
(30, 11, 'IPA SMP'),
(31, 11, 'MATEMATIKA SMP'),
(32, 11, 'BAHASA INGGRIS SMP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsumen`
--

CREATE TABLE `konsumen` (
  `id_konsumen` int(25) NOT NULL,
  `id_akun` int(25) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nama_siswa` varchar(25) NOT NULL,
  `kelas` int(4) NOT NULL,
  `sekolah` varchar(25) NOT NULL,
  `tgl_dftr` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konsumen`
--

INSERT INTO `konsumen` (`id_konsumen`, `id_akun`, `nama`, `alamat`, `nama_siswa`, `kelas`, `sekolah`, `tgl_dftr`) VALUES
(10, 73, 'konsu1', 'jalan surabaya', 'anak1', 3, 'sd lah', '2019-06-20'),
(11, 79, 'kons3', 'jalan malang 2', 'anak 2', 6, 'sd pagi 1', '2019-06-22'),
(12, 87, 'konsu 9', 'jalan anak 9 malang', 'anak 9', 9, 'smp maju jaya', '2019-06-28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(25) NOT NULL,
  `nama_materi` varchar(25) NOT NULL,
  `kelas` int(3) NOT NULL,
  `semester` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`id_materi`, `nama_materi`, `kelas`, `semester`) VALUES
(1, 'Matematika SD kls 1', 1, 1),
(2, 'Matematika SD kls 2', 2, 1),
(3, 'Matematika SD kls 3', 3, 1),
(4, 'Matematika SD kls 4', 4, 1),
(5, 'Matematika SD kls 5', 5, 1),
(6, 'Matematika SD kls 6', 6, 1),
(7, 'IPA SD kls 1', 1, 1),
(8, 'IPA SD kls 2', 2, 1),
(9, 'IPA SD kls 3', 3, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajar`
--

CREATE TABLE `pengajar` (
  `id_pengajar` int(25) NOT NULL,
  `id_akun` int(25) DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  `alamat_asal` varchar(25) DEFAULT NULL,
  `kampus` varchar(30) DEFAULT NULL,
  `semester` int(5) DEFAULT NULL,
  `jurusan` varchar(25) DEFAULT NULL,
  `tgl_dftr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajar`
--

INSERT INTO `pengajar` (`id_pengajar`, `id_akun`, `nama`, `alamat`, `alamat_asal`, `kampus`, `semester`, `jurusan`, `tgl_dftr`) VALUES
(4, 74, 'guru1', 'jalan malang', 'jalan solo', 'UB', 4, 'TI', '0000-00-00'),
(5, 78, 'guru a', 'jalan malang 1', 'jalan solo 1', 'UMM', 1, 'TI', '2019-06-21'),
(6, 80, 'guru d', 'jalan malang 4', 'jalan solo 4', 'UB', 5, 'TI', '2019-06-23'),
(7, 81, 'guru e', 'jalan e', 'jalan d', 'UMM', 5, 'TI', '2019-06-23'),
(10, 85, 'guru f', 'jalan f', 'jalan e 1', 'UB', 1, 'TI', '2019-06-24'),
(11, 88, 'guru x', 'jalan guru x 1 malang ', 'jalan guru y 2 solo', 'ITN', 3, 'TI', '2019-06-28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penugasan`
--

CREATE TABLE `penugasan` (
  `id_penugasan` int(25) NOT NULL,
  `id_pesan` int(25) DEFAULT NULL,
  `id_ganti_les` int(25) DEFAULT NULL,
  `id_kons` int(25) DEFAULT NULL,
  `id_pengajar` int(25) DEFAULT NULL,
  `nama_pgjr` varchar(25) DEFAULT NULL,
  `nama_kons` varchar(25) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penugasan`
--

INSERT INTO `penugasan` (`id_penugasan`, `id_pesan`, `id_ganti_les`, `id_kons`, `id_pengajar`, `nama_pgjr`, `nama_kons`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(30, 36, NULL, 10, 7, 'guru e', 'adik a', '2019-06-26', '2019-09-26', 'Aktif'),
(31, 37, NULL, 10, 7, 'guru e', 'adik a', '2019-06-26', '2019-08-23', 'Aktif'),
(35, 34, NULL, 10, 5, 'guru a', 'konsu1', '2019-06-27', '2019-09-18', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permintaan_kons`
--

CREATE TABLE `permintaan_kons` (
  `id_ganti_kons` int(25) NOT NULL,
  `id_penugasan_lama` int(25) DEFAULT NULL,
  `id_konsumen` int(25) DEFAULT NULL,
  `id_materi` int(25) DEFAULT NULL,
  `id_waktu` int(25) DEFAULT NULL,
  `tempat_les` varchar(50) DEFAULT NULL,
  `tgl_permintaan` date DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `alasan` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `permintaan_kons`
--

INSERT INTO `permintaan_kons` (`id_ganti_kons`, `id_penugasan_lama`, `id_konsumen`, `id_materi`, `id_waktu`, `tempat_les`, `tgl_permintaan`, `tgl_mulai`, `tgl_selesai`, `alasan`, `status`) VALUES
(4, 13, 10, 4, 6, 'jalan malang', '0000-00-00', '2019-07-04', '2019-08-30', 'jam nya bentrok', 'sudah di verifikasi'),
(5, 13, 10, 9, 8, 'jalan malang', '0000-00-00', '2019-07-04', '2019-08-30', 'jam nya bentrok', NULL),
(6, 16, 10, 7, 3, 'malang', '0000-00-00', '2019-06-20', '2019-09-26', 'jam nya bentrok', NULL),
(7, 18, 10, 4, 7, 'malang', '0000-00-00', '2019-06-20', '2019-06-21', 'jam nya bentrol', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permintaan_pgjr`
--

CREATE TABLE `permintaan_pgjr` (
  `id_ganti_pgjr` int(25) NOT NULL,
  `id_penugasan_lama` int(25) DEFAULT NULL,
  `id_pengajar` int(25) DEFAULT NULL,
  `keperluan` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `permintaan_pgjr`
--

INSERT INTO `permintaan_pgjr` (`id_ganti_pgjr`, `id_penugasan_lama`, `id_pengajar`, `keperluan`, `status`) VALUES
(1, 15, 15, 'kkn', 'belum di verifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertemuan`
--

CREATE TABLE `pertemuan` (
  `id_pertemuan` int(25) NOT NULL,
  `id_penugasan` int(25) DEFAULT NULL,
  `id_pengajar` int(25) DEFAULT NULL,
  `id_konsumen` int(25) DEFAULT NULL,
  `materi` varchar(25) DEFAULT NULL,
  `waktu_les` varchar(25) DEFAULT NULL,
  `tgl_pertemuan` date DEFAULT NULL,
  `pertemuan_ke` int(5) DEFAULT NULL,
  `isi_pertemuan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pertemuan`
--

INSERT INTO `pertemuan` (`id_pertemuan`, `id_penugasan`, `id_pengajar`, `id_konsumen`, `materi`, `waktu_les`, `tgl_pertemuan`, `pertemuan_ke`, `isi_pertemuan`) VALUES
(5, 13, 4, 10, 'IPA SD kls 3', '19:00', '0000-00-00', 1, 'baik'),
(6, 13, 4, 10, 'ipa', NULL, NULL, 2, NULL),
(7, 14, 4, 10, 'ipa', NULL, NULL, 1, NULL),
(8, 14, 4, 10, 'ipa', NULL, NULL, 2, NULL),
(9, 14, NULL, NULL, NULL, NULL, NULL, 3, NULL),
(10, 30, 7, 10, 'MATEMATIKA SD', '15:00', '2019-06-26', 1, 'baik, tidak nakal'),
(12, 30, 7, 10, 'MATEMATIKA SD', '15:00', '2019-06-26', 2, 'baik dan bagus'),
(13, 31, 7, 10, 'MATEMATIKA SD', '08:00', '2019-06-26', 1, 'baik , kita semakin akrab');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(25) NOT NULL,
  `id_konsumen` int(25) DEFAULT NULL,
  `id_materi` int(25) DEFAULT NULL,
  `id_waktu` int(25) DEFAULT NULL,
  `tempat_pertemuan` varchar(30) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `id_konsumen`, `id_materi`, `id_waktu`, `tempat_pertemuan`, `tgl_pesan`, `status`) VALUES
(16, 10, 9, 4, 'jalan bogor', '0000-00-00', 'sudah di verifikasi'),
(17, 10, 7, 7, 'jalan raya candi 2a no 428 rt ', '0000-00-00', 'sudah di verifikasi'),
(18, 10, 7, 1, 'jalan raya candi 2a no 428 rt ', '0000-00-00', 'sudah di verifikasi'),
(19, 10, 7, 1, 'jalan candi 2', '2019-06-21', 'belum di verifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan2`
--

CREATE TABLE `pesan2` (
  `id_pesan` int(25) NOT NULL,
  `id_konsumen` int(25) DEFAULT NULL,
  `materi` varchar(25) DEFAULT NULL,
  `hari` varchar(25) DEFAULT NULL,
  `jam` varchar(9) DEFAULT NULL,
  `tempat_pertemuan` varchar(50) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan2`
--

INSERT INTO `pesan2` (`id_pesan`, `id_konsumen`, `materi`, `hari`, `jam`, `tempat_pertemuan`, `tgl_pesan`, `status`, `nama`) VALUES
(34, 10, 'BAHASA INGGRIS SD', 'Rabu', '14:00', 'jalan raya candi 2a no 428 rt 12 rw 02 kelurahan k', '2019-06-25', 'sudah mendapat pengajar', 'anak bcc'),
(35, 10, 'BAHASA INGGRIS SD', 'Sabtu', '15:00', 'jalan raya candi 2a no 428 rt 12 rw 02 kelurahan k', '2019-06-25', 'belum mendapat pengajar', 'anak bcc'),
(36, 10, 'MATEMATIKA SD', 'Sabtu', '15:00', 'jalan raya candi 2a no 428 rt 12 rw 02 kelurahan k', '2019-06-25', 'sudah mendapat pengajar', 'adik a'),
(37, 10, 'MATEMATIKA SD', 'Minggu', '08:00', 'jalan raya candi 2a no 428 rt 12 rw 02 kelurahan k', '2019-06-25', 'sudah mendapat pengajar', 'adik a'),
(38, 12, 'IPA SMP', 'Jumat', '18:00', 'jalan rumah 1', '2019-06-28', 'belum mendapat pengajar', 'anak9'),
(39, 12, 'IPA SMP', 'Minggu', '08:00', 'jalan rumah 1', '2019-06-28', 'belum mendapat pengajar', 'anak9');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tampil_mat`
--
CREATE TABLE `tampil_mat` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tampil_mat1`
--
CREATE TABLE `tampil_mat1` (
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `level` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'helmi', 'helmi123', 1),
(2, 'setya', 'setya123', 2),
(7, 'asus', 'asus123', 3),
(73, 'konsu1', '12345', 1),
(74, 'guru1', '12345', 2),
(75, 'konsumen2', '12345', 1),
(76, 'kons', 'sans', 1),
(77, 'guru q', '12345', 2),
(78, 'guru a', '12345', 2),
(79, 'kons3', '12345', 1),
(80, 'guru d', '12345', 2),
(81, 'guru e', '12345', 2),
(82, 'guru c', '12345', 1),
(83, 'konsu6', '12345', 1),
(84, 'kons7', '12345', 1),
(85, 'guru f', '12345', 2),
(86, 'alden', '12345', 1),
(87, 'konsu9', '12345', 1),
(88, 'guru x', '12345', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu`
--

CREATE TABLE `waktu` (
  `id_waktu` int(25) NOT NULL,
  `detail` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `waktu`
--

INSERT INTO `waktu` (`id_waktu`, `detail`) VALUES
(1, 'Senin || 14:00 - 16:00'),
(2, 'Senin || 15:00 - 17:00'),
(3, 'Senin || 18:00 - 20:00'),
(4, 'Senin || 19:00 - 21:00'),
(5, 'Selasa || 14:00 - 16:00'),
(6, 'Selasa || 15:00 - 17:00'),
(7, 'Selasa || 18:00 - 20:00'),
(8, 'Selasa || 19:00 - 21:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu_mengajar`
--

CREATE TABLE `waktu_mengajar` (
  `id_waktu_mengajar` int(25) NOT NULL,
  `id_pengajar` int(25) DEFAULT NULL,
  `id_waktu` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `waktu_mengajar`
--

INSERT INTO `waktu_mengajar` (`id_waktu_mengajar`, `id_pengajar`, `id_waktu`) VALUES
(8, 4, 2),
(9, 4, 4),
(10, 4, 7),
(11, 4, 6),
(12, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu_ngajar2`
--

CREATE TABLE `waktu_ngajar2` (
  `id_waktu_ngajar` int(25) NOT NULL,
  `id_pengajar` int(25) DEFAULT NULL,
  `hari` varchar(20) DEFAULT NULL,
  `waktu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `waktu_ngajar2`
--

INSERT INTO `waktu_ngajar2` (`id_waktu_ngajar`, `id_pengajar`, `hari`, `waktu`) VALUES
(5, 5, 'senin', '14:00'),
(6, 5, 'senin', '15:00'),
(7, 5, 'selasa', '14:00'),
(8, 5, 'senin', '14:00'),
(9, 5, 'senin', '15:00'),
(10, 5, 'selasa', '14:00'),
(11, 6, 'senin', '14:00'),
(12, 6, 'selasa', '14:00'),
(13, 7, 'selasa', '15:00'),
(14, 7, 'rabu', '18:00'),
(15, 7, 'kamis', '18:00'),
(16, 7, 'sabtu', '15:00'),
(17, 7, 'Minggu', '08:00'),
(18, 7, 'minggu', '14:00'),
(19, 10, 'rabu', '14:00'),
(20, 10, 'Minggu', '08:00'),
(21, 10, 'sabtu', '15:00'),
(22, 10, 'Minggu', '08:00'),
(23, 11, 'jumat', '18:00'),
(24, 11, 'sabtu', '15:00'),
(25, 11, 'Minggu', '08:00');

-- --------------------------------------------------------

--
-- Struktur untuk view `tampil_mat`
--
DROP TABLE IF EXISTS `tampil_mat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tampil_mat`  AS  select `materi`.`id_materi` AS `id_materi`,`materi`.`nama` AS `nama`,`materi`.`kelas` AS `kelas`,`materi`.`semester` AS `semester` from `materi` where (`materi`.`nama` like '%mat') ;

-- --------------------------------------------------------

--
-- Struktur untuk view `tampil_mat1`
--
DROP TABLE IF EXISTS `tampil_mat1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tampil_mat1`  AS  select `materi`.`id_materi` AS `id_materi`,`materi`.`nama` AS `nama`,`materi`.`kelas` AS `kelas`,`materi`.`semester` AS `semester` from `materi` where (`materi`.`nama` like '%Mat%') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keahlian`
--
ALTER TABLE `keahlian`
  ADD PRIMARY KEY (`id_keahlian`);

--
-- Indexes for table `keahlian2`
--
ALTER TABLE `keahlian2`
  ADD PRIMARY KEY (`id_keahlian`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id_pengajar`);

--
-- Indexes for table `penugasan`
--
ALTER TABLE `penugasan`
  ADD PRIMARY KEY (`id_penugasan`);

--
-- Indexes for table `permintaan_kons`
--
ALTER TABLE `permintaan_kons`
  ADD PRIMARY KEY (`id_ganti_kons`);

--
-- Indexes for table `permintaan_pgjr`
--
ALTER TABLE `permintaan_pgjr`
  ADD PRIMARY KEY (`id_ganti_pgjr`);

--
-- Indexes for table `pertemuan`
--
ALTER TABLE `pertemuan`
  ADD PRIMARY KEY (`id_pertemuan`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `pesan2`
--
ALTER TABLE `pesan2`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`id_waktu`);

--
-- Indexes for table `waktu_mengajar`
--
ALTER TABLE `waktu_mengajar`
  ADD PRIMARY KEY (`id_waktu_mengajar`);

--
-- Indexes for table `waktu_ngajar2`
--
ALTER TABLE `waktu_ngajar2`
  ADD PRIMARY KEY (`id_waktu_ngajar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keahlian`
--
ALTER TABLE `keahlian`
  MODIFY `id_keahlian` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `keahlian2`
--
ALTER TABLE `keahlian2`
  MODIFY `id_keahlian` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `id_konsumen` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id_pengajar` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `penugasan`
--
ALTER TABLE `penugasan`
  MODIFY `id_penugasan` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `permintaan_kons`
--
ALTER TABLE `permintaan_kons`
  MODIFY `id_ganti_kons` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `permintaan_pgjr`
--
ALTER TABLE `permintaan_pgjr`
  MODIFY `id_ganti_pgjr` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pertemuan`
--
ALTER TABLE `pertemuan`
  MODIFY `id_pertemuan` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `pesan2`
--
ALTER TABLE `pesan2`
  MODIFY `id_pesan` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `waktu`
--
ALTER TABLE `waktu`
  MODIFY `id_waktu` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `waktu_mengajar`
--
ALTER TABLE `waktu_mengajar`
  MODIFY `id_waktu_mengajar` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `waktu_ngajar2`
--
ALTER TABLE `waktu_ngajar2`
  MODIFY `id_waktu_ngajar` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
