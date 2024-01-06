-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2024 pada 06.46
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbumin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`) VALUES
(2, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE `harga` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`id`, `status`, `kelas`, `harga`) VALUES
(1, 'dewasa', 'Bisnis', '1750000'),
(2, 'anak', 'Bisnis', '750000'),
(3, 'dewasa', 'ekonomi', '1500000'),
(4, 'anak', 'ekonomi', '500000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` varchar(100) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `umur` varchar(100) NOT NULL,
  `no_telpon` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `negara` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `ttl`, `umur`, `no_telpon`, `status`, `negara`) VALUES
('rusmin', 'jmbi 00878', '23', '087898776', 'belum kawin', 'indo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penumpang`
--

CREATE TABLE `penumpang` (
  `id` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `Maskapai` varchar(50) NOT NULL,
  `Kelas` varchar(50) NOT NULL,
  `Dari` varchar(50) NOT NULL,
  `Tujuan` varchar(50) NOT NULL,
  `Keberangkatan` varchar(50) NOT NULL,
  `Tiba` varchar(50) NOT NULL,
  `Tanggal` varchar(50) NOT NULL,
  `Dewasa` varchar(50) NOT NULL,
  `Anak` varchar(50) NOT NULL,
  `Total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penumpang`
--

INSERT INTO `penumpang` (`id`, `nama`, `alamat`, `Maskapai`, `Kelas`, `Dari`, `Tujuan`, `Keberangkatan`, `Tiba`, `Tanggal`, `Dewasa`, `Anak`, `Total`) VALUES
('0000000.1', 'rusmin', 'amaco', 'Banjarbaru (BJB)', 'SURABAYA (SBY)', '08.30 WIB', '10.00 WIB', 'Tue Jan 09 09:21:59 WITA 2024', 'CITILINK', 'BISNIS', '1', '0', 'Rp. 1750000'),
('0000000.2', 'hiuu', 'hh', 'YOGYAKARTA(YIA)', 'SURABAYA (SBY)', '08.30 WIB', '10.00 WIB', 'Sat Jan 06 13:28:09 WITA 2024', 'LION AIR', 'BISNIS', '1', '1', 'Rp. 2500000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `harga`
--
ALTER TABLE `harga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
