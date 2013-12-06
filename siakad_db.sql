-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 10. Nopember 2013 jam 22:56
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `siakad_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `nip` int(10) NOT NULL,
  `dos_nama` varchar(50) DEFAULT NULL,
  `dos_alamat` varchar(50) DEFAULT NULL,
  `dos_telp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `dos_nama`, `dos_alamat`, `dos_telp`) VALUES
(123, 'Bayu ', 'Malang', '0881661711');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nim` int(10) NOT NULL,
  `mhs_nama` varchar(50) DEFAULT NULL,
  `mhs_alamat` varchar(50) DEFAULT NULL,
  `mhs_jenis_kelamin` varchar(1) DEFAULT NULL,
  `mhs_jurusan` varchar(20) DEFAULT NULL,
  `mhs_telp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `mhs_nama`, `mhs_alamat`, `mhs_jenis_kelamin`, `mhs_jurusan`, `mhs_telp`) VALUES
(11650053, 'Wim Sonevel', 'Malang', 'L', 'Teknik Informatika', '085755345365');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE IF NOT EXISTS `matakuliah` (
  `mat_kode` varchar(10) NOT NULL,
  `mat_nama` varchar(30) DEFAULT NULL,
  `mat_sks` varchar(2) DEFAULT NULL,
  `mat_semester` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`mat_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`mat_kode`, `mat_nama`, `mat_sks`, `mat_semester`) VALUES
('100', 'Pemrograman Web', '3', '5');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
