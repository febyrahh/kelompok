-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 20. Januari 2019 jam 09:01
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbarsip_s5`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip`
--

CREATE TABLE IF NOT EXISTS `arsip` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ruang_arsip` varchar(25) NOT NULL,
  `no_rak` int(5) NOT NULL,
  `no_laci` int(5) NOT NULL,
  `no_boks` int(5) NOT NULL,
  `para_pihak` varchar(100) NOT NULL,
  `no_perkara` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `pemberi` varchar(50) NOT NULL,
  `status` varchar(25) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no_perkara` (`no_perkara`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `arsip`
--

INSERT INTO `arsip` (`id`, `ruang_arsip`, `no_rak`, `no_laci`, `no_boks`, `para_pihak`, `no_perkara`, `tgl_masuk`, `penerima`, `pemberi`, `status`, `keterangan`) VALUES
(6, 'Arsip Pidana', 2, 10, 10, 'Jhonny', '01/PID.B/2018/PN.KIS', '2018-12-01', 'Marno', 'Putri', 'Ada', 'Pidana Pencurian'),
(7, 'Arsip Pidana', 2, 11, 10, 'Tuti, Wanda', '02/PID.B/2018/PN.KIS', '2018-12-03', 'Marno', 'Putri', 'Dipinjam', 'Pidana Perjudian'),
(8, 'Arsip Pidana', 1, 3, 9, 'Budi', '03/PID.B/2018/PN.KIS', '2018-12-04', 'Marno', 'Putri', 'Ada', 'Pidana Perjudian'),
(9, 'Arsip Perdata', 1, 3, 5, 'Miswar, Susi, Lastri', '01/PDT.G/2018/PN.KIS', '2018-12-03', 'Ipul', 'Setiawan', 'Dipinjam', 'Perdata Gugatan'),
(10, 'Arsip Perdata', 2, 3, 1, 'Mastur', '02/PDT.G/2018/PN.KIS', '2018-12-12', 'Ipul', 'Setiawan', 'Ada', 'Perdata Gugatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `kode` int(15) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kelompok` varchar(50) NOT NULL,
  `harga_jual` int(50) NOT NULL,
  `sisa_qty` int(25) NOT NULL,
  `satuan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode`, `nama_barang`, `kelompok`, `harga_jual`, `sisa_qty`, `satuan`) VALUES
(100910, 'Compact Bowl Haigt', 'REGULER', 150000, 11, 'SET'),
(100911, 'Flower Set', 'PROMOSI', 500000, 31, 'PROMOSI'),
(100912, 'Picture Set', 'REGULER', 145000, 12, 'SET'),
(100913, 'Puddy Buddy Set', 'REGULER', 115000, 24, 'PROMOSI'),
(100914, 'Blossom Pleate', 'REGULER', 170000, 23, 'SET'),
(100915, 'Blossom Colection', 'REGULER', 500000, 31, 'KOTAK'),
(100916, 'Slim Line Set', 'REGULER', 160000, 12, 'SET'),
(100917, 'Flower Set', 'PROMOSI', 250000, 14, 'KOTAK'),
(100918, 'Self Saver', 'REGULER', 131000, 36, 'SET'),
(100919, 'Giant Canister', 'REGULER', 225000, 11, 'SET'),
(100920, 'Summer Fun', 'REGULER', 300000, 7, 'KOTAK'),
(100921, 'Eco Family', 'PROMOSI', 220000, 10, 'KOTAK'),
(100922, 'Fancy Canister', 'PROMOSI', 115000, 60, 'SET'),
(100923, 'Extrem Melbox', 'REGULER', 156000, 20, 'SET'),
(100924, 'Compact Bowl Haigt', 'REGULER', 160000, 19, 'SET'),
(100925, 'Carry All Set', 'REGULER', 225000, 43, 'SET'),
(100926, 'Cocing Oil Set', 'REGULER', 170000, 44, 'SET'),
(100927, 'Rice Mart', 'REGULER', 650000, 30, 'KOTAK'),
(100928, 'Eco Straw', 'REGULER', 110000, 5, 'SET'),
(100929, 'Lucy Red Set', 'PROMOSI', 300000, 12, 'SET');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dealer`
--

CREATE TABLE IF NOT EXISTS `dealer` (
  `kode` int(10) NOT NULL AUTO_INCREMENT,
  `star_dealer` varchar(50) NOT NULL,
  `omset` int(50) NOT NULL,
  `poin` int(10) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8901 ;

--
-- Dumping data untuk tabel `dealer`
--

INSERT INTO `dealer` (`kode`, `star_dealer`, `omset`, `poin`) VALUES
(1000, 'SD O1', 3000000, 50),
(1100, 'SD 02', 5500000, 100),
(1200, 'SD 03', 10500000, 300),
(1300, 'SD 04', 13000000, 400),
(1400, 'SD 05', 18000000, 600),
(1500, 'SD 06', 20500000, 700),
(8900, 'SD 07', 8000000, 200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `no_perkara` varchar(50) NOT NULL,
  `peminjam` varchar(50) NOT NULL,
  `tgl_pinjam` varchar(25) NOT NULL,
  `tgl_kembali` varchar(25) NOT NULL,
  `lama_pinjam` int(5) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `id` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`no_perkara`, `peminjam`, `tgl_pinjam`, `tgl_kembali`, `lama_pinjam`, `keterangan`, `id`) VALUES
('01/PID.B/2018/PN.KIS', 'A. Nasution', '2018-12-14', '2018-12-16', 2, '-', 4),
('01/PDT.G/2018/PN.KIS', 'J. Siahaan', '2018-12-10', 'Belum Kembali', 0, '-', 5),
('02/PID.B/2018/PN.KIS', 'Bejo', '2018-12-11', 'Belum Kembali', 0, 'Input ke CTS', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
  `Sales_force` int(25) NOT NULL,
  `nama_New` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `idktp` varchar(25) NOT NULL,
  `Nohp` varchar(15) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `nm_rekrut` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`Sales_force`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`Sales_force`, `nama_New`, `alamat`, `idktp`, `Nohp`, `jk`, `unit`, `nm_rekrut`, `status`) VALUES
(7912345, 'DWI ANGGAINI', 'KISARAN', '122345671', '082367524380', 'PEREMPUAN', 'MULANI AURELIA ', 'NUR PUTRI', 'MANAGER'),
(7923456, 'FERA AFRIANI S', 'KISARAN', '123456789', '081234321577', 'PEREMPUAN', 'JULI RENI', 'MULANI YAHYA', 'AGM'),
(79000785, 'DWI ASTUTI', 'TANJUNG BALAI', '12367890', '081323344556', 'PEREMPUAN', 'MULANI BERJAYA 	', 'MELLI BR B', 'DEALER'),
(79001166, 'RINA HENDRIANI 	', 'TEBING TINGGI', '09876543', '123456', 'PEREMPUAN', 'MULANI LOBY', 'FATIMAH', 'GM'),
(79001234, 'ROSMALA SIREGAR', 'KISARAN', '123456789', '081234321577', 'PEREMPUAN', ' 	 MULANI AURELIA ', 'NUR PUTRI', 'MANAGER'),
(79003245, ' 	 SITI RAHMA', 'KISARAN', '122345671', '082367524380', 'PEREMPUAN', 'MULANI AURELIA ', 'NUR PUTRI', 'MANAGER'),
(79003424, 'M.RIZKI KURNIAWAN 	', 'KISARAN', '12367890', '081234321577', 'LAKI LAKI', 'MULANI PANCA GEMPITA', 'NURUL ISMI', 'AGM'),
(79009470, 'ASMAWATI', 'KISARAN', '123456789', '081234321577', 'PEREMPUAN', 'MULANI BERJAYA 	', 'WARAMITA', 'AGM'),
(79009654, 'FITRI IQWANI', 'TEBING TINGGI', '12234567190', '082367524380', 'PEREMPUAN', 'MULANI AURELIA ', 'MELLI BR B', 'GM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `star`
--

CREATE TABLE IF NOT EXISTS `star` (
  `kode` varchar(10) NOT NULL,
  `nm_star` varchar(50) NOT NULL,
  `omsetdari` int(50) NOT NULL,
  `sdomset` int(50) NOT NULL,
  `poin` int(10) NOT NULL,
  `nilai` int(10) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `star`
--

INSERT INTO `star` (`kode`, `nm_star`, `omsetdari`, `sdomset`, `poin`, `nilai`) VALUES
('SC01', 'SC 01', 1000000, 1499999, 20, 1100),
('SC02', 'SC 02', 1500000, 1999999, 35, 1100),
('SC03', 'SC 03', 2000000, 2499999, 50, 1100),
('SC04', 'SC 04', 2500000, 2999999, 65, 1100),
('SC05', 'SC 05', 2500000, 2999999, 64, 1100),
('SC06', 'SC 06', 3000000, 3499999, 80, 1100),
('SC07', 'SC 07', 3500000, 4000000, 95, 1100),
('SC08', 'SC 08', 4000000, 4499999, 110, 1100),
('SC09', 'SC 09', 4500000, 4999999, 125, 1100),
('SC10', 'SC 10', 5000000, 5499999, 140, 1100),
('SC11', 'SC 11', 5500000, 5999999, 155, 1100),
('SC12', 'SC 12', 6000000, 6999999, 170, 1100),
('SC13', 'SC 13', 6000000, 6999999, 170, 1100),
('SC14', 'SC 14', 7500000, 7999999, 305, 1100),
('SC15', 'SC 15', 8000000, 8499999, 220, 1100),
('SC16', 'SC 16', 8500000, 8999999, 235, 1100),
('SC17', 'SC 17', 9000000, 9499999, 250, 1100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(25) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `paswd`, `email`, `nama`, `level`, `ket`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'devk@gmail.com', 'Developer Kampoeng', 1, 'Staff MPG Tupperware');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
