-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2021 pada 07.07
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `email`) VALUES
('admin', 'b1b157048b606e76d6653ea4e4b502b0', 'admin@herobuxx.xyz');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kd_peminjaman`
--

CREATE TABLE `kd_peminjaman` (
  `kd_peminjaman` int(11) NOT NULL,
  `kd_buku` int(11) NOT NULL,
  `kd_pinjam` date NOT NULL,
  `kd_anggota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `kd_buku` int(6) NOT NULL,
  `nama_buku` varchar(100) DEFAULT NULL,
  `pengarang` varchar(100) DEFAULT NULL,
  `thn_terbit` int(6) DEFAULT NULL,
  `jumlah` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_buku`
--

INSERT INTO `tbl_buku` (`kd_buku`, `nama_buku`, `pengarang`, `thn_terbit`, `jumlah`) VALUES
(18, 'How To Increase Your Pancasila Credit Points', 'Prof.Drs.H.Habib Burrahman, S.Sos,M.Sos,Ph.D', 123000, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_peminjaman`
--

CREATE TABLE `tbl_peminjaman` (
  `kd_peminjaman` int(6) NOT NULL,
  `kd_buku` int(6) DEFAULT NULL,
  `tgl_peminjaman` date DEFAULT NULL,
  `kd_anggota` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengembalian`
--

CREATE TABLE `tbl_pengembalian` (
  `kd_pengembalian` int(11) NOT NULL,
  `kd_peminjaman` int(6) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `denda` varchar(30) CHARACTER SET latin1 NOT NULL,
  `kd_anggota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_perpus`
--

CREATE TABLE `tbl_perpus` (
  `kd_buku` int(6) NOT NULL,
  `nama_buku` varchar(30) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `thn_terbit` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `kd_anggota` int(6) NOT NULL,
  `nis` int(13) NOT NULL,
  `nama_siswa` varchar(30) CHARACTER SET latin1 NOT NULL,
  `kelas` varchar(10) CHARACTER SET latin1 NOT NULL,
  `alamat` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kd_peminjaman`
--
ALTER TABLE `kd_peminjaman`
  ADD PRIMARY KEY (`kd_peminjaman`);

--
-- Indeks untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indeks untuk tabel `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  ADD PRIMARY KEY (`kd_peminjaman`);

--
-- Indeks untuk tabel `tbl_pengembalian`
--
ALTER TABLE `tbl_pengembalian`
  ADD PRIMARY KEY (`kd_pengembalian`);

--
-- Indeks untuk tabel `tbl_perpus`
--
ALTER TABLE `tbl_perpus`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`kd_anggota`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kd_peminjaman`
--
ALTER TABLE `kd_peminjaman`
  MODIFY `kd_peminjaman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `kd_buku` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  MODIFY `kd_peminjaman` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengembalian`
--
ALTER TABLE `tbl_pengembalian`
  MODIFY `kd_pengembalian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_perpus`
--
ALTER TABLE `tbl_perpus`
  MODIFY `kd_buku` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `kd_anggota` int(6) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
