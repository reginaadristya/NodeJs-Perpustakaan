-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Apr 2022 pada 19.00
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tes_perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `kd_anggota` char(10) NOT NULL,
  `nm_anggota` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `tlpn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_anggota`
--

INSERT INTO `tb_anggota` (`kd_anggota`, `nm_anggota`, `alamat`, `tlpn`) VALUES
('B01', 'Sukiman', 'Danau Senggani', '081223728193');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `kd_buku` char(10) NOT NULL,
  `nm_buku` varchar(30) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`kd_buku`, `nm_buku`, `pengarang`, `penerbit`, `stok`) VALUES
('A15', 'Pemograman NodeJs', 'Sutamin', 'Pustaka', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `kd_petugas` char(10) NOT NULL,
  `nm_petugas` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `tlpn_petugas` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_petugas`
--

INSERT INTO `tb_petugas` (`kd_petugas`, `nm_petugas`, `jabatan`, `tlpn_petugas`, `email`, `password`) VALUES
('C01', 'Ilham', 'Danau Senggani', '081223728193', 'ilham@moklet.com', '$2a$10$5dIIHEjOMGXXBL8Sf9Dq9Oo12t7W8Rlg7/fivXlmkQeumurNp5V/K');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pinjam`
--

CREATE TABLE `tb_pinjam` (
  `no_pinjam` char(10) NOT NULL,
  `kd_anggota` char(10) NOT NULL,
  `kd_petugas` char(10) NOT NULL,
  `kd_buku` char(10) NOT NULL,
  `tgl_pinjam` varchar(30) NOT NULL,
  `tgl_balik` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`kd_anggota`);

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indeks untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`kd_petugas`);

--
-- Indeks untuk tabel `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD PRIMARY KEY (`no_pinjam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
