-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Okt 2020 pada 06.22
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeatnight`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `idBarang` int(11) NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ukuran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `ket` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`idBarang`, `nama`, `kode`, `merk`, `kategori`, `ukuran`, `harga`, `ket`, `gambar`) VALUES
(4, 'Moonlight', 'CANML1', 'Code At Night', 'T-Shirt', 'S, M, L, XL', 99000, 'Sablon Polyflex Combed 30s', 'files/moon.png'),
(6, 'Astro Code', 'CANAC1', 'Code At Night', 'T-Shirt', 'Stock Habis', 108000, 'Sablon Polyflex\r\nCombed 30s', 'files/astro.png'),
(7, 'Code Stars', 'CANCS1', 'Code At Night', 'T-Shirt', 'S, M, L, XL', 108000, 'Sablon Polyflex Combed 30s', 'files/COde Stars.png'),
(8, 'Code At Night Blue', 'CANB1', 'Code At Night', 'T-Shirt', 'S, M, L, XL', 99000, 'Sablon Polyflex Combed 30s', 'files/26deg.png'),
(14, 'Code Satrurn', 'CANCS2', 'Code At Night', 'T-Shirt', 'S, M, L, XL', 108000, 'Sablon Polyflex Combed 30s', 'files/Code Saturnus.png'),
(15, 'Code Yellow', 'CANY1', 'Code At Night', 'T-Shirt', 'S, M, L, XL', 108000, 'Sablon Polyflex Combed 30s', 'files/Code yellow.png'),
(16, 'Game Over', 'CANGO1', 'Code At Night', 'T-Shirt', 'S, M, L, XL', 108000, 'Sablon Polyflex Combed 30s', 'files/game over.png'),
(17, 'Sunset 1', 'CANS1', 'Code At Night', 'T-Shirt', 'M, L, XL', 108000, 'Bahan adem cotton combed 30s', 'files/sunset1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `username` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idUser`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idBarang`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `idBarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
