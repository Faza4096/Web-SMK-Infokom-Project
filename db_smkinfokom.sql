-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2026 at 02:26 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_smkinfokom`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int NOT NULL,
  `judul` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tanggal` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `judul`, `isi`, `tanggal`, `created_at`) VALUES
(1, 'Shalat Dhuha Bersama', 'Pelaksanaan shalat Dhuha di jumat pagi', '2026-09-25', '2026-09-24 15:32:20'),
(2, 'Pembiasaan diri', 'Pembiasaan diri karakter siswa/siswi SMK INFOKOM setiap hari agar bisa jauh lebih disiplin', '2026-09-25', '2026-09-24 15:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int NOT NULL,
  `judul` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `konten` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `penulis` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Admin',
  `status` enum('draft','publish') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'publish',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `slug`, `gambar`, `konten`, `penulis`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Peringati Hari Batik Nasional 2026, SMK Infokom Bogor Ajak Generasi Muda Lestarikan Warisan Budaya', 'peringati-hari-batik-nasional-2026-smk-infokom-bogor-ajak-generasi-muda-lestarikan-warisan-budaya-22ffa', 'berita_1792553559.jpeg', 'BOGOR — Dalam rangka memperingati Hari Batik Nasional yang jatuh pada Jumat, 2 Oktober 2026, SMK Infokom Bogor menggaungkan semangat pelestarian budaya lokal melalui seruan \"Lestarikan Warisan, Kenakan dengan Bangga\". Peringatan ini menjadi momentum penting bagi pihak sekolah untuk menumbuhkan rasa cinta tanah air dan kebanggaan akan warisan budaya Nusantara di kalangan para siswa\r\nSebagai Sekolah Pusat Keunggulan (PK), SMK Infokom Bogor terus berkomitmen tidak hanya dalam pengembangan kompetensi teknologi dan keahlian siswa, tetapi juga dalam pembentukan karakter dan apresiasi budaya. Melalui pimpinan dan staf pengajar, sekolah mengajak seluruh warga sekolah untuk mengenakan busana batik serta memahami makna mendalam di balik pembuatan batik sebagai warisan budaya takbenda yang telah diakui dunia.\r\n\"Batik bukan sekadar kain bermotif, melainkan sebuah identitas, karya seni, dan sejarah bangsa yang harus terus dirawat oleh generasi penerus,\" ujar perwakilan pihak SMK Infokom Bogor. Kegiatan peringatan ini juga dirangkai dengan kampanye edukatif di media sosial resmi sekolah guna mengajak masyarakat luas turut serta membanggakan batik Indonesia.\r\nInformasi lebih lanjut mengenai kegiatan dan profil SMK Infokom Bogor dapat diakses melalui situs resmi www.smkinfokom-bogor.sch.id, saluran YouTube SMK INFOKOM Bogor, serta akun Instagram resmi @smk.infokom_official.', 'SMK INFOKOM', 'publish', '2026-10-21 03:32:39', '2026-10-21 03:33:13'),
(6, 'Ajang IT EXPO UNJ 2018 Sukses Digelar, Apresiasi Inovasi Teknologi dan Kreativitas Generasi Muda', 'ajang-it-expo-unj-2018-sukses-digelar-apresiasi-inovasi-teknologi-dan-kreativitas-generasi-muda-3f84b', 'berita_1792553777.jpg', 'JAKARTA — Badan Eksekutif Mahasiswa Program Studi Pendidikan Teknik Informatika dan Komputer (BEMP PTIK) Fakultas Teknik Universitas Negeri Jakarta (UNJ) sukses menyelenggarakan rangkaian acara IT EXPO UNJ 2018. Puncak acara yang diisi dengan seminar nasional serta penyerahan penghargaan bagi para pemenang kompetisi teknologi ini menjadi wadah penting untuk mengapresiasi inovasi digital di era disrupsi industri.\r\nMengusung tema besar \"Inovasi IT untuk Pendidikan di Era Revolusi Industri 4.0\", kegiatan ini dirancang untuk mendorong pemanfaatan teknologi informasi secara kreatif, khususnya dalam sektor pendidikan dan pengembangan perangkat lunak. Rangkaian acara tidak hanya berfokus pada seminar dan talkshow inspiratif, tetapi juga mempertandingkan berbagai kategori kompetisi bergengsi seperti desain web, jaringan komputer, animasi, hingga pembuatan karya multimedia.\r\nDalam sesi penutupan dan penyerahan piala yang meriah, para peserta terbaik dari berbagai kategori lomba tampak bangga menerima trofi serta penghargaan atas kerja keras dan inovasi yang mereka tampilkan. Tingginya partisipasi pelajar dan mahasiswa dalam ajang ini mencerminkan antusiasme yang besar dalam melahirkan solusi berbasis teknologi guna menghadapi tantangan era digital masa kini.\r\nSebagai catatan, perhelatan IT EXPO 2018 menandai tonggak transformasi penting bagi civitas akademika PTIK UNJ, di mana agenda tahunan yang sebelumnya dikenal sebagai IT Fest resmi berganti nama menjadi IT Expo guna memperluas cakupan kolaborasi dan kompetisi teknologi. Melalui penyelenggaraan acara ini, UNJ terus memperkuat komitmennya dalam mencetak talenta-talenta muda yang kompeten, inovatif, dan siap bersaing di kancah nasional maupun global.', 'SMK INFOKOM', 'publish', '2026-10-21 03:36:17', '2026-10-21 03:36:17'),
(7, 'Peringati Hari HAM Sedunia ke-70, Bapas Kelas II Bogor dan SMK Infokom Gelar Penyuluhan \"Jawa Barat Tolak Intoleransi\"', 'peringati-hari-ham-sedunia-ke-70-bapas-kelas-ii-bogor-dan-smk-infokom-gelar-penyuluhan-jawa-barat-tolak-intoleransi-67dde', 'berita_1792554088.jpg', 'BOGOR — Dalam rangka memperingati Hari Hak Asasi Manusia (HAM) Sedunia ke-70, Balai Pemasyarakatan (Bapas) Kelas II Bogor berkolaborasi dengan Tim Pembinaan Kesadaran Hukum dan HAM Jawa Barat menggelar kegiatan penyuluhan hukum bagi para pelajar di SMK Infokom Bogor. Kegiatan bertajuk \"Jawa Barat Tolak Intoleransi\" tersebut dilaksanakan untuk menanamkan nilai-nilai toleransi, kesadaran hukum, serta penghormatan terhadap hak asasi manusia sejak dini di lingkungan sekolah.\r\nKegiatan penyuluhan yang dikemas dalam bentuk Apel Serentak, Sapa, dan Penyuluhan HAM ini diikuti secara antusias oleh puluhan siswa-siswi SMK Infokom Bogor. Pemateri dari Bapas Kelas II Bogor memberikan pembekalan materi mengenai pentingnya menjaga kerukunan, memahami norma hukum, serta mencegah tindakan perundungan (bullying) dan intoleransi di kalangan generasi muda.\r\nMelalui penyampaian materi interaktif, para siswa diajak untuk memahami bahwa penghormatan terhadap Hak Asasi Manusia bukan hanya tanggung jawab pemerintah, melainkan seluruh elemen masyarakat, termasuk para pelajar. Pihak sekolah menyambut positif kegiatan ini sebagai langkah nyata dalam membentuk karakter siswa yang taat hukum, inklusif, dan berwawasan luas.\r\nPeringatan Hari HAM Sedunia ke-70 ini diharapkan dapat memperkuat sinergi antara instansi kementerian hukum dan lembaga pendidikan dalam menciptakan lingkungan sekolah yang aman, toleran, serta bebas dari segala bentuk diskriminasi di wilayah Jawa Barat', 'SMK INFOKOM', 'publish', '2026-10-21 03:41:09', '2026-10-21 03:41:28'),
(8, 'SMK Infokom Kota Bogor Buka Pendaftaran Murid Baru TA 2026/2027, Tawarkan Bonus Laptop Hingga Bebas SPP', 'smk-infokom-kota-bogor-buka-pendaftaran-murid-baru-ta-2026-2027-tawarkan-bonus-laptop-hingga-bebas-spp-26696', 'berita_1792556429.jpg', 'BOGOR — Yayasan Telekomunikasi Nasional SMK Infokom Kota Bogor resmi membuka Sistem Penerimaan Murid Baru (SPMB) untuk Tahun Ajaran 2026/2027. Sekolah vokasi berakreditasi \"A\" sekaligus Sekolah Pusat Keunggulan (PK) ini menawarkan berbagai keunggulan fasilitas, pilihan program keahlian di bidang teknologi dan ekonomi kreatif, serta berbagai penawaran bonus menarik bagi para pendaftar di setiap gelombangnya.\r\nPada SPMB Tahun Ajaran 2026/2027 ini, SMK Infokom Kota Bogor menyediakan 2 bidang keahlian utama yang terbagi ke dalam 4 jurusan unggulan, yaitu:\r\n1. Teknik Komputer dan Jaringan (TKJ)   \r\n2. Rekayasa Perangkat Lunak (RPL)  \r\n3. Desain Komunikasi Visual (DKV)  \r\n4. Produksi dan Siaran Program Televisi (PSPT) \r\nUntuk memberikan apresiasi kepada calon siswa baru, sekolah menyediakan program bonus khusus berdasarkan gelombang pendaftaran:\r\nGelombang 1 (15 Desember 2025 – 30 April 2026): Bonus Free 1 Unit Laptop.  \r\nGelombang 2 (1 Mei – 30 Juni 2026): Bonus Free SPP selama 3 Bulan. \r\nGelombang 3 (1 Juli – 30 Agustus 2026): Bonus Free Seragam Lengkap (Jas Almamater, Olahraga, dan Jurusan).\r\nProses pendaftaran dilayani secara langsung di kampus sekolah setiap hari Senin hingga Sabtu pukul 08.00–15.00 WIB.\r\nCalon orang tua murid dan siswa yang ingin mendaftar atau mendapatkan informasi lebih lanjut dapat mendatangi langsung lokasi SMK Infokom Kota Bogor di Jl. Letjend Ibrahim Adjie No. 178, atau menghubungi layanan informasi melalui Hotline WhatsApp di 0878-7307-1400. Informasi resmi juga dapat diakses melalui situs web www.smkinfokom-bogor.sch.id, Instagram @smk.infokom_official, serta kanal YouTube SMK INFOKOM Bogor.', 'SMK INFOKOM', 'publish', '2026-10-21 04:20:29', '2026-10-21 04:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `bkk_lowongan`
--

CREATE TABLE `bkk_lowongan` (
  `id` int NOT NULL,
  `posisi` varchar(150) NOT NULL,
  `perusahaan` varchar(150) NOT NULL,
  `lokasi` varchar(150) DEFAULT NULL,
  `tipe_pekerjaan` enum('Full-time','Part-time','Kontrak','Magang','PKL') NOT NULL DEFAULT 'Full-time',
  `gaji` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `kualifikasi` text,
  `kuota` int DEFAULT NULL,
  `batas_daftar` date DEFAULT NULL,
  `kontak` varchar(150) DEFAULT NULL,
  `status` enum('buka','tutup') NOT NULL DEFAULT 'buka',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bkk_lowongan`
--

INSERT INTO `bkk_lowongan` (`id`, `posisi`, `perusahaan`, `lokasi`, `tipe_pekerjaan`, `gaji`, `deskripsi`, `kualifikasi`, `kuota`, `batas_daftar`, `kontak`, `status`, `created_at`) VALUES
(1, 'Staf Administrasi Pelatihan', 'LPK Jiritsu Nusantara', 'Kota Bogor', 'Part-time', 'Rp 3.500.000 - Rp 4.500.000', 'LPK Jiritsu Nusantara merupakan lembaga pelatihan kerja yang berfokus pada pengembangan keterampilan dan kesiapan peserta untuk memasuki dunia kerja. Kegiatan lembaga pelatihan seperti ini dapat mencakup pembekalan kompetensi, pelatihan kerja, serta persiapan memasuki peluang kerja sesuai program yang tersedia.', 'Lulusan SMA/SMK semua jurusan.\r\nMampu menggunakan Microsoft Word dan Excel.\r\nTeliti dalam mengelola dokumen dan data peserta.\r\nMemiliki kemampuan komunikasi yang baik.', 30, '2026-11-20', NULL, 'buka', '2026-09-24 11:12:22'),
(2, 'Junior Web Developer', 'PT GIT Solution', 'Yogyakarta', 'Part-time', 'Rp 3.800.000 - Rp. 5.000.000', 'PT GIT Solution bergerak di bidang teknologi informasi dengan fokus pada perencanaan, pembangunan, pengembangan, dan audit sistem berbasis teknologi informasi. Bidang tersebut mencakup pengembangan perangkat lunak, solusi sistem informasi, serta dukungan teknologi untuk membantu kebutuhan bisnis dan organisasi.', 'Lulusan SMK RPL/PPLG.\r\nMemahami HTML, CSS, JavaScript, dan PHP.\r\nMengenal database MySQL.\r\nMemiliki proyek web sederhana sebagai portofolio.', 20, '2026-11-27', NULL, 'buka', '2026-09-24 11:12:22'),
(3, 'Network Support Technician', 'CV Netmedia Solusi', 'Yogyakarta', 'Full-time', 'Rp 4.500.000 - Rp 6.000.000', 'Citraweb Solusi Teknologi bergerak di bidang teknologi informasi, khususnya solusi jaringan komputer dan infrastruktur internet. Perusahaan ini dikenal berkaitan dengan produk dan teknologi jaringan seperti MikroTik, serta layanan pendukung bagi kebutuhan jaringan perusahaan dan penyedia layanan internet.', 'Lulusan SMK TKJ\r\nMemahami dasar TCP/IP, router, dan konfigurasi jaringan.\r\nMampu melakukan troubleshooting koneksi internet.\r\nMemiliki kemauan belajar teknologi jaringan.', 15, '2026-10-30', NULL, 'buka', '2026-10-15 05:14:03'),
(4, 'Junior 2D Animator', 'PT Mataram Surya Visi Sinema (MSV Studio)', 'Yogyakarta', 'Kontrak', 'Rp 3.000.000 - Rp 4.500.000', 'MSV Studio merupakan perusahaan yang bergerak di industri kreatif digital, khususnya produksi animasi dan konten audiovisual. Perusahaan ini mengembangkan karya kreatif melalui proses ilustrasi, desain karakter, animasi, dan produksi konten visual untuk kebutuhan hiburan maupun media digital.', 'Lulusan SMK DKV atau jurusan multimedia.\r\nMemahami prinsip dasar animasi 2D.\r\nMampu menggunakan software animasi atau ilustrasi digital.\r\nMemiliki kreativitas dan portofolio karya.', 5, '2026-12-10', NULL, 'buka', '2026-10-15 05:14:03'),
(5, 'BONET — IT Solution Partner', 'PT Bonet Utama', 'Kota Bogor', 'Full-time', 'Rp 3.500.000 - Rp 4.500.000', 'BONET merupakan perusahaan yang bergerak di bidang teknologi informasi dan layanan solusi IT. Layanannya berkaitan dengan dukungan teknologi, infrastruktur jaringan, serta kebutuhan sistem informasi untuk membantu operasional bisnis dan organisasi.', 'Lulusan SMK Jurusan TKJ atau RPL\r\nMemahami instalasi software, jaringan komputer, dan troubleshooting.\r\nMampu bekerja dalam tim dan berkomunikasi dengan baik.', 50, '2026-11-20', NULL, 'buka', '2026-10-15 06:13:53'),
(6, 'Junior Graphic Designer', 'PT Tribun Digital Online', 'Jakarta', 'Kontrak', 'Rp 3.800.000', 'Tribunnews.com merupakan portal berita digital yang menyajikan informasi terkini seputar nasional, daerah, politik, ekonomi, olahraga, hiburan, dan berbagai topik lainnya. Perusahaan media digital ini juga memanfaatkan teknologi dan kreativitas dalam pengelolaan konten serta publikasi berita secara daring.', 'Lulusan SMK DKV atau jurusan relevan\r\nMenguasai dasar Adobe Photoshop, Illustrator, atau Canva.\r\nMampu membuat desain konten media sosial\r\nMemiliki portofolio desain', 2, '2026-10-28', NULL, 'buka', '2026-10-15 06:13:53'),
(9, 'Peserta PKL Desain Konten Digital', 'PT Tribun Digital Online', 'Jakarta', 'PKL', NULL, 'Membantu menyiapkan materi visual untuk media digital, mengedit gambar, membuat desain sederhana, dan mengelola aset konten dengan arahan tim kreatif.', 'Siswa SMK yang sedang menjalani PKL.\r\nMemahami dasar desain grafis.\r\nMampu menggunakan Canva atau aplikasi desain sejenis.\r\nMenyertakan contoh karya.', NULL, '2026-11-16', NULL, 'buka', '2026-10-22 01:14:35'),
(10, 'Peserta PKL Teknisi Jaringan', 'CV Netmedia Solusi', 'Kota Bogor', 'PKL', NULL, 'Mempelajari dasar pemeliharaan jaringan, pengenalan perangkat router, pencatatan konfigurasi, dan pemeriksaan konektivitas jaringan di bawah pengawasan teknisi', 'Siswa SMK jurusan TKJ/TJKT.\r\nMemahami dasar IP address dan LAN.\r\nMemiliki sikap teliti dan bertanggung jawab.', NULL, '2026-11-09', NULL, 'buka', '2026-10-22 01:18:31'),
(11, 'Administrasi Bisnis, Manajemen, Sistem Informasi, Pendidikan.', 'LPK Jiritsu Nusantara', 'Kota Bogor', 'Magang', NULL, 'Membantu pengelolaan administrasi pelatihan, pengolahan data peserta, penyusunan laporan, pengarsipan dokumen, dan persiapan kegiatan pelatihan kerja.', 'Mahasiswa aktif minimal semester 4.\r\nMampu menggunakan Microsoft Word dan Excel.\r\nTeliti dalam mengelola dokumen dan data.\r\nMemiliki komunikasi dan kerja sama tim yang baik.', NULL, '2026-10-28', NULL, 'buka', '2026-10-22 02:11:58'),
(12, 'Magang Web Developer', 'Universitas AMIKOM', 'Yogyakarta', 'Magang', NULL, 'Membantu pengembangan dan pemeliharaan website, memperbaiki tampilan halaman, serta melakukan pengujian fitur website.', 'Siswa SMK jurusan PPLG/RPL.\r\nMemahami dasar HTML, CSS, dan JavaScript.\r\nMampu bekerja sama dalam tim.\r\nBersedia mengikuti kegiatan magang sesuai jadwal.', NULL, '2026-12-07', NULL, 'buka', '2026-10-22 02:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `bkk_mitra`
--

CREATE TABLE `bkk_mitra` (
  `id` int NOT NULL,
  `nama_perusahaan` varchar(150) NOT NULL,
  `jenis` enum('industri','universitas') NOT NULL DEFAULT 'industri',
  `bidang` varchar(150) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `urutan` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bkk_mitra`
--

INSERT INTO `bkk_mitra` (`id`, `nama_perusahaan`, `jenis`, `bidang`, `alamat`, `logo`, `keterangan`, `urutan`, `created_at`) VALUES
(1, 'PT Bonet Utama', 'industri', 'Teknologi Informasi dan Komunikasi (TIK) serta solusi layanan IT (IT Solution Partner)', NULL, 'bkk_mitra_1792414353.jpeg', NULL, 1, '2026-09-24 11:12:23'),
(3, 'PT Mataram Surya Visi Sinema', 'industri', 'Bergerak di industri kreatif digital, khususnya di bidang Animasi dan Pasca-produksi', NULL, 'bkk_mitra_1792414841.jpeg', NULL, 4, '2026-09-24 11:12:23'),
(5, 'PT Tribun Digital Online', 'industri', 'Media, Komunikasi, dan Informasi Digital', NULL, 'bkk_mitra_1792414588.jpeg', NULL, 2, '2026-10-15 05:14:03'),
(6, 'LPK Jiritsu Nusantara', 'industri', 'Bergerak di bidang Pendidikan, Pelatihan Kerja, dan Agen Pengiriman Resmi (Sending Organization / SO) untuk tenaga kerja Indonesia ke Jepang', NULL, 'bkk_mitra_1792415169.jpeg', NULL, 5, '2026-10-15 05:14:03'),
(8, 'CV Netmedia Solusi', 'industri', 'Penyedia perangkat jaringan (networking), edukasi, dan solusi digital', NULL, 'bkk_mitra_1792414698.jpeg', NULL, 3, '2026-10-15 06:13:53'),
(10, 'PT GIT Solution', 'industri', 'Perencanaan, Pembangunan, Pengembangan, serta Audit sistem berbasis Teknologi Informasi (TI)', NULL, 'bkk_mitra_1792415475.jpeg', NULL, 6, '2026-10-19 13:11:15'),
(12, 'Universitas Djuanda', 'universitas', 'Jasa pendidikan tinggi, penelitian, pengembangan ilmu pengetahuan dan teknologi.', 'Jalan Tol Ciawi No. 1, Ciawi, Kabupaten Bogor, Jawa Barat.', 'bkk_mitra_1792633270.png', 'Universitas Djuanda (UNIDA) merupakan perguruan tinggi swasta di Bogor yang menyelenggarakan pendidikan dalam bidang ilmu komputer, pendidikan, ekonomi, pangan, kesehatan, dan ilmu sosial', 0, '2026-10-22 01:41:10'),
(13, 'Universitas Ibn Khaldun Bogor', 'universitas', 'Jasa pendidikan tinggi, penelitian, pengabdian kepada masyarakat, dan pengembangan teknologi.', 'Jalan KH. Sholeh Iskandar KM 2, Kedung Badak, Kota Bogor, Jawa Barat', 'bkk_mitra_1792633396.png', 'Kerja sama yang diusulkan berupa seminar pendidikan, pembinaan karakter siswa, pengenalan program studi, pelatihan teknologi, serta pemberian informasi beasiswa dan penerimaan mahasiswa baru', 0, '2026-10-22 01:42:50'),
(14, 'IPB University', 'universitas', 'Pendidikan tinggi, penelitian ilmiah, inovasi teknologi, pertanian, dan pengembangan kewirausahaan.', 'Kampus IPB Dramaga, Jalan Raya Dramaga, Kecamatan Dramaga, Kabupaten Bogor, Jawa Barat 16680.', 'bkk_mitra_1792633485.png', 'Kerja sama yang diusulkan berupa kunjungan edukasi, pengenalan teknologi dan riset, seminar karier, pembinaan siswa bidang informatika, serta pengenalan peluang melanjutkan pendidikan tinggi.', 0, '2026-10-22 01:44:45'),
(15, 'Universitas Pakuan', 'universitas', 'Jasa pendidikan tinggi, penelitian, pengembangan ilmu pengetahuan, dan pelatihan', 'Jalan Pakuan, Tegallega, Kecamatan Bogor Tengah, Kota Bogor, Jawa Barat 16127', 'bkk_mitra_1792633747.png', 'Kerja sama yang diusulkan berupa seminar karier, pengenalan program studi, pelatihan dasar pemrograman, pengembangan kompetensi digital, dan informasi penerimaan mahasiswa baru.', 0, '2026-10-22 01:49:07'),
(16, 'Politeknik Negeri Jakarta', 'universitas', 'Pendidikan vokasi, pelatihan keterampilan teknis, rekayasa, teknologi informasi, dan bisnis.', 'Jalan Prof. Dr. G.A. Siwabessy, Kampus Universitas Indonesia, Depok, Jawa Barat 16425.', 'bkk_mitra_1792633808.png', 'Kerja sama yang diusulkan berupa pelatihan kompetensi informatika, kunjungan laboratorium, seminar industri, pengenalan pendidikan vokasi, serta informasi jalur kuliah lanjutan bagi siswa SMK.', 0, '2026-10-22 01:50:08'),
(17, 'Universitas AMIKOM Yogyakarta', 'universitas', 'Pendidikan tinggi, teknologi informasi, pengembangan perangkat lunak, animasi, perfilman, multimedia, penyiaran, dan ekonomi kreatif.', 'Universitas AMIKOM Yogyakarta', 'bkk_mitra_1792634452.png', 'Bekerja sama dengan industri teknologi dan kreatif dalam pengembangan keterampilan mahasiswa, praktik kerja, magang, produksi animasi dan film, serta peningkatan kesiapan lulusan memasuki dunia kerja.', 0, '2026-10-22 02:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `bkk_pelamar`
--

CREATE TABLE `bkk_pelamar` (
  `id` int NOT NULL,
  `kode_lamaran` varchar(30) NOT NULL,
  `lowongan_id` int NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tahun_lulus` year NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat` text,
  `cv_file` varchar(255) DEFAULT NULL,
  `status` enum('baru','diproses','lolos','tidak_lolos') NOT NULL DEFAULT 'baru',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakurikuler`
--

CREATE TABLE `ekstrakurikuler` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text,
  `pembina` varchar(100) DEFAULT NULL,
  `jadwal` varchar(100) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `urutan` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ekstrakurikuler`
--

INSERT INTO `ekstrakurikuler` (`id`, `nama`, `deskripsi`, `pembina`, `jadwal`, `gambar`, `urutan`, `created_at`) VALUES
(1, 'Pramuka', 'Membentuk kemandirian, kepemimpinan, dan kepedulian sosial melalui kegiatan kepramukaan.', NULL, 'Kamis, 15.00 WIB', 'ekstra_1792619011_6ad93203ee8cb.jpeg', 1, '2026-10-20 01:16:09'),
(2, 'Palang Merah Remaja (PMR)', 'Kegiatan wadah pembinaan generasi muda dari Palang Merah Indonesia (PMI) di sekolah', NULL, 'Selasa, 14.00 WIB', 'ekstra_1792619145_6ad93289da9d2.webp', 2, '2026-10-20 01:16:09'),
(3, 'Basket', 'Latihan basket rutin dan pengembangan tim untuk ajang antar-sekolah.', NULL, 'Sabtu, 9.00 WIB', 'ekstra_1792619065_6ad93239d91e6.jpeg', 3, '2026-10-20 01:16:09'),
(4, 'Futsal', 'Latihan dan pembinaan tim futsal putra-putri untuk kompetisi tingkat kota.', NULL, 'Sabtu, 10.00 WIB', 'ekstra_1792619047_6ad932270e4b7.jpeg', 4, '2026-10-20 01:16:09'),
(5, 'Paskibra', 'Kegiatan pembinaan siswa yang berfokus pada pembentukan disiplin, kepemimpinan, nasionalisme, dan kedekatan fisik serta mental.', NULL, 'Jumat, 15.00 WIB', 'ekstra_1792619356_6ad9335c808d9.jpeg', 5, '2026-10-20 01:16:09'),
(6, 'Japanese Club', 'Kegiatan ini berfokus pada latihan percakapan (kaiwa), pengenalan huruf (Hiragana, Katakana, Kanji), serta eksplorasi tren pop culture dan tradisi Jepang', NULL, 'Jumat, 15.00 WIB', 'ekstra_1792619431_6ad933a7e4d60.png', 6, '2026-10-20 01:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id` int NOT NULL,
  `nama` varchar(150) NOT NULL,
  `deskripsi` text,
  `gambar` varchar(255) DEFAULT NULL,
  `urutan` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id`, `nama`, `deskripsi`, `gambar`, `urutan`, `created_at`) VALUES
(1, 'Lab TKJ', 'Dilengkapi perangkat komputer terbaru untuk praktik pemrograman dan jaringan.', 'fasilitas_1792411817.jpeg', 1, '2026-09-22 11:50:22'),
(4, 'Lab PSPT', 'Ruang khusus yang dilengkapi dengan teknologi audio dan video untuk memproduksi serta menyiarkan konten media', 'fasilitas_1792305351.jpg', 2, '2026-09-22 11:50:22'),
(12, 'Lab DKV', 'Mengembangkan kreativitas dalam desain grafis, ilustrasi, fotografi, pengolahan gambar digital, serta pembuatan karya visual untuk media cetak dan digital', 'fasilitas_1792413238.jpeg', 3, '2026-10-15 05:14:03'),
(15, 'Perpustakaan', 'Koleksi buku pelajaran, referensi teknologi, dan ruang baca yang nyaman.', 'fasilitas_1792305330.jpg', 5, '2026-10-15 06:13:52'),
(17, 'Lab RPL', 'Mengembangkan keterampilan pemrograman, pembuatan website, aplikasi desktop dan mobile, serta pengelolaan basis data dan pengembangan perangkat lunak.', 'fasilitas_1792305585.jpg', 4, '2026-10-18 06:39:45'),
(18, 'Ruang Kelas', 'Ruang belajar yang nyaman dan kondusif untuk mendukung kegiatan pembelajaran siswa.', 'fasilitas_1792306284.jpg', 7, '2026-10-18 06:51:24'),
(19, 'Mushola', 'Fasilitas ibadah yang mendukung kegiatan keagamaan', 'fasilitas_1792306348.jpg', 9, '2026-10-18 06:52:28'),
(20, 'Ruang Guru', 'Ruang kerja guru untuk mempersiapkan pembelajaran, berdiskusi, dan melakukan koordinasi akademik.', 'fasilitas_1792306404.jpg', 11, '2026-10-18 06:53:24'),
(21, 'Ruang Tata Usaha', 'Fasilitas pelayanan administrasi sekolah bagi siswa, orang tua, dan masyarakat.', 'fasilitas_1792306469.jpg', 12, '2026-10-18 06:54:29'),
(22, 'Kantin', 'Menyediakan makanan dan minuman bagi siswa serta warga sekolah untuk mendukung kebutuhan selama kegiatan belajar.', 'fasilitas_1792306669.jpg', 13, '2026-10-18 06:57:49'),
(23, 'Ruang Wakasek', 'Ruangan untuk mendukung pelaksanaan tugas wakil kepala sekolah dalam mengoordinasikan kegiatan akademik, kesiswaan, dan administrasi sekolah', 'fasilitas_1792307027.jpg', 10, '2026-10-18 07:03:47'),
(24, 'Ruang UKS', 'Pelayanan kesehatan dasar bagi siswa yang membutuhkan pertolongan pertama atau istirahat saat merasa kurang sehat di lingkungan sekolah.', 'fasilitas_1792307764.jpeg', 8, '2026-10-18 07:16:04'),
(25, 'Ruang Aula', 'Fasilitas serbaguna yang digunakan untuk berbagai kegiatan sekolah, seperti rapat, seminar, workshop, sosialisasi, pertunjukan, serta acara resmi sekolah', 'fasilitas_1792414079.jpg', 6, '2026-10-19 12:47:59'),
(26, 'Taman', 'Taman sekolah rindang yang cocok untuk berteduh dan mengerjakan tugas.', 'fasilitas_1792621106.jpg', 14, '2026-10-21 22:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int NOT NULL,
  `judul` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kategori` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Kegiatan',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `judul`, `gambar`, `kategori`, `created_at`) VALUES
(5, 'Kunjungan ke Universitas Amikom Yogyakarta 2025', 'galeri_1792539342_6ad7face4de67.jpg', 'Kunjungan Industri', '2026-10-20 23:35:42'),
(6, 'Lava Tour Merapi 2025', 'galeri_1792539434_6ad7fb2adcd90.jpg', 'Kunjungan Industri', '2026-10-20 23:37:14'),
(7, 'Kunjungan ke Universitas Amikom Yogyakarta 2025', 'galeri_1792539569_6ad7fbb12d8c8.jpg', 'Kunjungan Industri', '2026-10-20 23:39:29'),
(8, 'Upacara Bendera hari Senin', 'galeri_1792539916_6ad7fd0cc4e9f.jpg', 'Kegiatan', '2026-10-20 23:45:16'),
(9, 'Kegiatan Pembelajaran di Lab RPL', 'galeri_1792540137_6ad7fde9374cd.jpg', 'Kegiatan', '2026-10-20 23:48:57'),
(10, 'Kegiatan Pembelajaran di Lab TKJ', 'galeri_1792540183_6ad7fe1711889.jpg', 'Kegiatan', '2026-10-20 23:49:43'),
(11, 'Kegiatan Pembelajaran di Lab DKV', 'galeri_1792540236_6ad7fe4c7fdc1.jpg', 'Kegiatan', '2026-10-20 23:50:36'),
(12, 'Kegiatan Pembelajaran di Lab PSPT', 'galeri_1792540330_6ad7feaab6948.jpg', 'Kegiatan', '2026-10-20 23:52:10'),
(14, 'Pengibaran Bendera Merah Putih', 'galeri_1792540622_6ad7ffced7ec2.jpg', 'Kegiatan', '2026-10-20 23:57:02'),
(15, 'Kegiatan Paskibra 17 Agustus 2026', 'galeri_1792540904_6ad800e8186f5.jpg', 'Kegiatan', '2026-10-21 00:01:44'),
(16, 'Sesi foto bersama di Universitas Amikom 2025', 'galeri_1792541025_6ad801616e0b9.jpg', 'Kunjungan Industri', '2026-10-21 00:03:45'),
(17, 'Kegiatan Para  OSIS SMK INFOKOM', 'galeri_1792630668_6ad95f8c808de.jpeg', 'Kegiatan', '2026-10-22 00:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `guru_staff`
--

CREATE TABLE `guru_staff` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `jabatan` varchar(100) NOT NULL,
  `bidang` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `urutan` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `guru_staff`
--

INSERT INTO `guru_staff` (`id`, `nama`, `nip`, `jabatan`, `bidang`, `foto`, `urutan`, `created_at`) VALUES
(2, 'Aditya Nugraha, ST.', NULL, 'Kepala Program Keahlian Jurusan TKJ', 'Administrasi Infrastruktur Jaringan (AIJ)', 'guru_1790254173.png', 1, '2026-09-24 12:49:33'),
(3, 'Ridwan Hala, S.Kom.,Gr.', NULL, '⁠Kepala Program Keahlian RPL', 'Robotik', 'guru_1790254393.png', 2, '2026-09-24 12:53:13'),
(4, 'Muhammad Ibnu Arif, S.IKom.', NULL, '⁠Kepala Program Keahlian DKV', 'Produksi Desain Komunikasi Visual', 'guru_1790254487.png', 3, '2026-09-24 12:54:13'),
(5, 'Erli Suherli, A.Md.Kom.', NULL, 'Kepala Program Keahlian PSPT', 'Dasar-Dasar Program Keahlian Broadcasting dan Perfilman', 'guru_1790254581.png', 4, '2026-09-24 12:56:21'),
(6, 'Ahmad Hotib, S.Pd.I', NULL, 'Pembina OSIS', 'Pendidikan Agama Islam', 'guru_1790254804.png', 5, '2026-09-24 13:00:04'),
(7, 'Abdul Azis, M.Pd.', NULL, 'Pembina OSIS', 'Pendidikan Agama Islam', 'guru_1790254921.png', 6, '2026-09-24 13:02:01'),
(8, 'Vera Yuni Astuti SP. M.IKom. Gr.', NULL, 'Staf Kurikulum', 'Program Keahlian Kewirausahaan', 'guru_1790255058.png', 7, '2026-09-24 13:04:18'),
(9, 'M. Fauzan Arifin, S.IKom.,Gr.', NULL, 'Staf Kurikulum', 'Editing Audio dan Video', 'guru_1790255192.png', 8, '2026-09-24 13:06:09'),
(10, 'Dra. Popon Puspitasari', NULL, 'Guru Bimbingan & Konseling', 'Pendidikan Agama Islam', 'guru_1790255280.png', 9, '2026-09-24 13:08:00'),
(11, 'Richo Santana, S.Kom', NULL, 'Guru Bimbingan & Konseling', 'Pemrograman Web dan Mobile', 'guru_1790255767.png', 10, '2026-09-24 13:16:07'),
(12, 'Dian Hardianti, S.Kom.,Gr.', NULL, '⁠Guru Bimbingan & Konseling', 'Koding dan Kecerdasan Artifisial', 'guru_1790256386.png', 11, '2026-09-24 13:26:26'),
(13, 'Yeni Yuliawati, S.Pd.,Gr.', NULL, 'Staf Teller (Bendahara)', 'Bahasa Indonesia', 'guru_1790256486.png', 12, '2026-09-24 13:28:06'),
(14, 'Rita Widyastuti', NULL, '⁠Staf Teller (Bendahara)', NULL, 'guru_1790256671.png', 13, '2026-09-24 13:31:11'),
(15, 'Eva Farida Rahayu, S.Pd.,Gr', NULL, '⁠Staf Teller (Bendahara)', 'Bahasa Indonesia', 'guru_1790256815.png', 14, '2026-09-24 13:33:35'),
(16, 'Jayadi, S.Pd.,Gr.', NULL, '⁠Staf Tata Usaha', 'Pendidikan Jasmani, Olah Raga & Kesehatan', 'guru_1790256919.png', 15, '2026-09-24 13:35:19'),
(17, 'Yadi Setiadi, S.Sos.,Gr.', NULL, 'Staf Tata Usaha', 'Bahasa Sunda', 'guru_1790257031.png', 16, '2026-09-24 13:37:11'),
(18, 'Siti Nuraeni', NULL, 'Staf Tata Usaha', NULL, 'guru_1790257304.png', 17, '2026-09-24 13:41:44'),
(19, 'Reza Prafitriansyah, S.Kom.,Gr.', NULL, 'Staf Perpustakaan', 'Dasar-Dasar Program Keahlian Desain Komunikasi Visual', 'guru_1790257483.png', 18, '2026-09-24 13:44:43'),
(20, 'Dra. Diana Octaria', NULL, 'Projek Ilmu Pengetahuan Alam dan Sosial', NULL, 'guru_1790257640.png', 19, '2026-09-24 13:47:20'),
(21, 'Nabila Ahmadia Pratama, S.Pd.', NULL, 'Bahasa Indonesia', NULL, 'guru_1790257712.png', 20, '2026-09-24 13:48:32'),
(22, 'Erwin Hasiholan Gultom, S.Kom.', NULL, 'Pemrograman Berorientasi Objek', NULL, 'guru_1790257790.png', 21, '2026-09-24 13:49:50'),
(23, 'Widyatama Nuranisa, SM', NULL, 'Kreativitas, Inovasi, dan Kewirausahaan', NULL, 'guru_1790257920.png', 22, '2026-09-24 13:52:00'),
(24, 'Dara Purwanita, S.Pd.,Gr.', NULL, 'Bahasa Inggris', NULL, 'guru_1790258031.png', 23, '2026-09-24 13:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `hero_bg`
--

CREATE TABLE `hero_bg` (
  `id` int NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `urutan` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hero_bg`
--

INSERT INTO `hero_bg` (`id`, `gambar`, `urutan`, `created_at`) VALUES
(4, 'hero_1792410169_6ad60239c448e.jpg', 1, '2026-10-19 11:42:49'),
(5, 'hero_1792410177_6ad60241b1f15.jpg', 2, '2026-10-19 11:42:57'),
(6, 'hero_1792410183_6ad602472c041.jpg', 3, '2026-10-19 11:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int NOT NULL,
  `nama_jurusan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `singkatan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `visi` text COLLATE utf8mb4_general_ci,
  `misi` text COLLATE utf8mb4_general_ci,
  `tujuan` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `singkatan`, `deskripsi`, `gambar`, `created_at`, `visi`, `misi`, `tujuan`) VALUES
(1, 'Rekayasa Perangkat Lunak', 'RPL', 'RPL adalah sebuah jurusan yang mempelajari dan mendalami semua cara-cara pengembangan perangkat lunak termasuk pembuatan, pemeliharaan, manajemen organisasi pengembangan perangkat lunak dan manajemen kualitas.', 'jurusan_1790252459.png', '2026-09-13 06:19:47', 'Menjadi program keahlian unggul di bidang pengembangan perangkat lunak yang kompeten, kreatif, dan berkarakter.', '1. Menguasai dasar pemrograman dan pengembangan aplikasi.\n2. Melatih siswa membangun perangkat lunak sesuai kebutuhan nyata.\n3. Menanamkan sikap profesional, kerja sama, dan etika digital.\n4. Menyiapkan siswa melanjutkan studi atau terjun ke dunia kerja.', 'Lulusan mampu mengembangkan, menguji, dan memelihara perangkat lunak, serta siap bekerja sebagai programmer, software tester, atau wirausaha di bidang teknologi.'),
(2, 'Teknik Komputer dan Jaringan', 'TKJ', 'TKJ merupakan sebuah kejuruan yang mempelajari tentang cara merakit komputer, mengenal dan mempelajari komponen hardware apa saja yang ada di dalam komputer, merakit komputer serta fokus mempelajari jaringan dasar.', 'jurusan_1790252466.png', '2026-09-13 06:19:47', 'Menjadi program keahlian unggul di bidang komputer dan jaringan yang berkompeten dan siap kerja.', '1. Menguasai perakitan dan perawatan komputer.\n2. Mempelajari instalasi dan konfigurasi jaringan dasar.\n3. Membiasakan siswa bekerja secara sistematis, aman, dan disiplin.\n4. Mempersiapkan sertifikasi kompetensi dan dunia kerja.', 'Lulusan mampu merakit dan merawat komputer, mengelola jaringan skala kecil hingga menengah, serta bekerja sebagai teknisi jaringan atau wirausaha di bidang TIK.'),
(3, 'Desain Komunikasi Visual', 'DKV', 'DKV adalah kejuruan berbasis ilmu desain yang mempelajari cara menyampaikan pesan, informasi, atau gagasan melalui elemen visual yang kreatif, efektif, dan komunikatif', 'jurusan_1790252473.png', '2026-09-13 06:19:47', 'Menjadi program keahlian unggul dalam desain komunikasi visual yang kreatif, inovatif, dan berkarakter.', '1. Menguasai dasar desain grafis dan komposisi visual.\n2. Membuat karya desain untuk media cetak dan digital.\n3. Melatih kreativitas, komunikasi, dan presentasi karya.\n4. Menumbuhkan jiwa kreatif dan kewirausahaan di bidang desain.', 'Lulusan mampu menghasilkan karya desain komunikasi visual yang profesional, serta bekerja sebagai desainer grafis, content creator, atau wirausaha kreatif.'),
(4, 'Produksi Siaran Program Televisi', 'PSPT', 'PSPT merupakan jurusan keahlian yang mempelajari keterampilan teknis dan kreatif dalam dunia penyiaran, pertelevisian, serta media digital.', 'jurusan_1790252481.png', '2026-09-13 06:19:47', 'Menjadi program keahlian unggul di bidang produksi siaran televisi dan media digital.', '1. Menguasai teknik kamera, pencahayaan, dan audio.\n2. Mempelajari produksi konten siaran dan media digital.\n3. Melatih kreativitas dan kerja sama dalam tim produksi.\n4. Membekali siswa dengan etika dan profesionalisme penyiaran.', 'Lulusan mampu memproduksi konten siaran dan video profesional, serta bekerja di stasiun televisi, rumah produksi, atau media digital.');

-- --------------------------------------------------------

--
-- Table structure for table `kalender_pendidikan`
--

CREATE TABLE `kalender_pendidikan` (
  `id` int NOT NULL,
  `tahun_pelajaran` varchar(20) NOT NULL DEFAULT '2026/2027',
  `kegiatan` varchar(150) NOT NULL,
  `kategori` enum('Kegiatan','Akademik','Ujian','Libur','PPDB') NOT NULL DEFAULT 'Kegiatan',
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kalender_pendidikan`
--

INSERT INTO `kalender_pendidikan` (`id`, `tahun_pelajaran`, `kegiatan`, `kategori`, `tanggal_mulai`, `tanggal_selesai`, `keterangan`, `created_at`) VALUES
(1, '2026/2027', 'Awal Tahun Pelajaran — Hari Pertama Masuk Sekolah', 'Akademik', '2026-07-13', NULL, 'Seragam lengkap, masuk pagi sesuai jadwal wali kelas.', '2026-10-21 22:17:45'),
(2, '2026/2027', 'Masa Pengenalan Lingkungan Sekolah (MPLS) Kelas X', 'Kegiatan', '2026-07-13', '2026-07-15', 'Pengenalan akademik, ekstrakurikuler, dan tata tertib sekolah.', '2026-10-21 22:17:45'),
(3, '2026/2027', 'Penilaian Tengah Semester Ganjil (PTS)', 'Ujian', '2026-09-21', '2026-09-26', 'PTS seluruh tingkatan — jadwal rilis melalui wali kelas.', '2026-10-21 22:17:45'),
(4, '2026/2027', 'Penilaian Akhir Semester Ganjil (PAS)', 'Ujian', '2026-12-14', '2026-12-19', 'PAS seluruh tingkatan sebelum libur semester.', '2026-10-21 22:17:45'),
(5, '2026/2027', 'Libur Semester Ganjil', 'Libur', '2026-12-21', '2027-01-02', 'Libur semester, sekolah kembali belajar 4 Januari 2027.', '2026-10-21 22:17:45'),
(6, '2026/2027', 'Awal Semester Genap', 'Akademik', '2027-01-04', NULL, 'Kegiatan belajar mengajar semester genap dimulai.', '2026-10-21 22:17:45'),
(7, '2026/2027', 'Penilaian Tengah Semester Genap (PTS)', 'Ujian', '2027-03-08', '2027-03-13', 'PTS seluruh tingkatan semester genap.', '2026-10-21 22:17:45'),
(8, '2026/2027', 'Penerimaan Peserta Didik Baru (PPDB) 2027/2028', 'PPDB', '2027-02-15', '2027-05-15', 'Pendaftaran online melalui halaman PPDB website sekolah.', '2026-10-21 22:17:45'),
(9, '2026/2027', 'Uji Kompetensi Keahlian (UKK) Kelas XII', 'Ujian', '2027-05-03', '2027-05-08', 'Uji praktik kompetensi sesuai keahlian masing-masing.', '2026-10-21 22:17:45'),
(10, '2026/2027', 'Penilaian Akhir Semester Genap (PAS)', 'Ujian', '2027-05-31', '2027-06-05', 'PAS seluruh tingkatan akhir tahun pelajaran.', '2026-10-21 22:17:45'),
(11, '2026/2027', 'Pembagian Rapor & Akhir Tahun Pelajaran', 'Akademik', '2027-06-12', NULL, 'Rapor kenaikan kelas dibagikan melalui wali kelas.', '2026-10-21 22:17:45'),
(12, '2026/2027', 'Libur Kenaikan Kelas', 'Libur', '2027-06-14', '2027-07-10', 'Tahun pelajaran baru dimulai pertengahan Juli 2027.', '2026-10-21 22:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_akademik`
--

CREATE TABLE `kegiatan_akademik` (
  `id` int NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text,
  `tanggal` date DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kegiatan_akademik`
--

INSERT INTO `kegiatan_akademik` (`id`, `judul`, `deskripsi`, `tanggal`, `gambar`, `created_at`) VALUES
(2, 'Uji Kompetensi Keahlian (UKK)', 'Ujian praktik yang menguji kompetensi siswa sesuai standar industri sebelum kelulusan.', '2027-05-03', 'kegiatan_1790262761.png', '2026-09-22 11:50:23'),
(9, 'Masa Pengenalan Lingkungan Sekolah (MPLS) Kelas X', 'Pengenalan akademik, ekstrakurikuler, dan tata tertib sekolah bagi siswa baru kelas X bersama guru dan pembimbing.', '2026-07-13', NULL, '2026-10-22 01:38:46'),
(10, 'Penilaian Tengah Semester (PTS) Ganjil', 'Evaluasi hasil belajar pertengahan semester ganjil seluruh tingkatan; jadwal resmi diumumkan melalui wali kelas.', '2026-09-21', NULL, '2026-10-22 01:38:46'),
(11, 'Penilaian Akhir Semester (PAS) Ganjil', 'Evaluasi akhir semester ganjil seluruh mata pelajaran sebelum libur semester berlangsung.', '2026-12-14', NULL, '2026-10-22 01:38:46'),
(12, 'Praktik Kerja Lapangan (PKL) Kelas XI', 'Siswa kelas XI melaksanakan praktik kerja di dunia industri sebagai penerapan langsung kompetensi keahlian.', '2027-01-11', NULL, '2026-10-22 01:38:46'),
(13, 'Penilaian Tengah Semester (PTS) Genap', 'Evaluasi hasil belajar pertengahan semester genap seluruh tingkatan.', '2027-03-08', NULL, '2026-10-22 01:38:46'),
(14, 'Penilaian Akhir Semester (PAS) Genap', 'Evaluasi akhir semester genap sekaligus penutupan mata pelajaran tahun pelajaran berjalan.', '2027-05-31', NULL, '2026-10-22 01:38:46'),
(15, 'Pembagian Rapor & Akhir Tahun Pelajaran', 'Rapor kenaikan kelas dibagikan kepada orang tua melalui wali kelas masing-masing.', '2027-06-12', NULL, '2026-10-22 01:38:46'),
(16, 'Bimbingan Konseling & Kesiapan Kerja', 'Layanan bimbingan konseling untuk kesiapan akademik, mental, dan karir siswa menuju dunia kerja atau perguruan tinggi.', NULL, NULL, '2026-10-22 01:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id` int NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text,
  `file_dokumen` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kurikulum`
--

INSERT INTO `kurikulum` (`id`, `judul`, `deskripsi`, `file_dokumen`, `gambar`, `created_at`) VALUES
(2, 'Kurikulum Merdeka - Program Keahlian TIK', 'SMK INFOKOM BOGOR menerapkan Kurikulum Merdeka yang memadukan pembelajaran berbasis proyek dengan kompetensi industri, agar lulusan siap kerja maupun melanjutkan pendidikan.', NULL, 'kurikulum_1790263376.png', '2026-09-24 11:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran_ppdb`
--

CREATE TABLE `pendaftaran_ppdb` (
  `id` int NOT NULL,
  `nomor_pendaftaran` varchar(30) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `asal_sekolah` varchar(150) NOT NULL,
  `jurusan_pilihan` int DEFAULT NULL,
  `nama_orangtua` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat` text,
  `berkas_dokumen` varchar(255) DEFAULT NULL,
  `status` enum('menunggu','diverifikasi','ditolak','diterima') NOT NULL DEFAULT 'menunggu',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `alasan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pendaftaran_ppdb`
--

INSERT INTO `pendaftaran_ppdb` (`id`, `nomor_pendaftaran`, `nama_lengkap`, `nisn`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `asal_sekolah`, `jurusan_pilihan`, `nama_orangtua`, `no_hp`, `email`, `alamat`, `berkas_dokumen`, `status`, `created_at`, `alasan`) VALUES
(5, 'PPDB-2026-9CCF2', 'Faza Fauzan Adziman', '0012009211', 'Laki-laki', 'Bogor', '2026-10-19', 'Ibnu Aqil', 1, 'akos', '085122013630', 'faza4096@gmail.com', 'Jalan Infokom', NULL, 'ditolak', '2026-10-21 06:21:28', 'kamu ditolak karena kurang ganteng');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int NOT NULL,
  `judul` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tanggal` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `isi`, `tanggal`, `created_at`) VALUES
(1, 'Shalat Dhuha bersama kelas XI dan X', 'besok persiapkan alat shalat seperti sajadah dan mukena bagi perempuan, pastikan sudah berwudhu dari rumah', '2026-09-25', '2026-09-24 14:59:56'),
(2, 'Tryout TKA kelas XII', 'pelaksanaan tryout tka dari univ gundhadarma dan mediatama yang dilaksanakan hari rabu 23 september 2026', '2026-09-23', '2026-09-24 15:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_kontak`
--

CREATE TABLE `pesan_kontak` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `status` enum('belum_dibaca','sudah_dibaca') NOT NULL DEFAULT 'belum_dibaca',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pesan_kontak`
--

INSERT INTO `pesan_kontak` (`id`, `nama`, `email`, `pesan`, `status`, `created_at`) VALUES
(2, 'Faza Fauzan', 'faza4096@gmail.com', 'Assalamualikum, anak saya sangar tertarik di sekolah SMK INFOKOM BOGOR,  dia mau mengambil jurusan DKV dia hobi menggambar dan merancang sebuah poster, mohon doanya ya, terimakasih', 'sudah_dibaca', '2026-10-22 01:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id` int NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text,
  `tingkat` enum('Sekolah','Kota/Kabupaten','Provinsi','Nasional','Internasional') NOT NULL DEFAULT 'Kota/Kabupaten',
  `tahun` year NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id`, `judul`, `deskripsi`, `tingkat`, `tahun`, `gambar`, `created_at`) VALUES
(1, 'Juara Lomba Web Desain', 'Alhamdulillah Wasyukurillah ya Rabb..\r\nPrestasi kembali diukir oleh M. Shaleh (XII RPL) dalam Lomba Web Desain yang diadakan di Universitas Negeri Jakarta (UNJ) sebagai juara 1 dan Glenaldin Halim sebagai Juara Harapan ke-2, dan juga Fathia Rahmania dan Rakha Prasetya yg masuk 6 besar', 'Kota/Kabupaten', '2018', 'prestasi_1790264791.png', '2026-09-22 11:50:22'),
(2, 'Juara ke-1  IT SOFTWARE & Juara ke-3 Web Desain', 'Selamat Kami Ucapkan kepada Sholeh yang menjadi Juara ke-1 IT SOFTWARE dan Raka yang menjadi Juara ke-3 WEB DESIGN.\r\nDalam kegiatan perlombaan LKS Tingkat Kota Bogor dan akan mewakili Kota Bogor ditingkat Provinsi', 'Kota/Kabupaten', '2018', 'prestasi_1790264391.png', '2026-09-24 11:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int NOT NULL,
  `jenis` enum('sejarah','visi_misi','sambutan','struktur','fasilitas') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `judul` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `jenis`, `judul`, `isi`, `gambar`, `updated_at`) VALUES
(1, 'sejarah', 'Sejarah Sekolah', 'Sekolah ini resmi didirikan pada tanggal 10 Mei 2005 oleh Yayasan Telekomunikasi Nasional (Yatelnas). Kehadiran SMK Infokom dipicu oleh tingginya kebutuhan tenaga kerja lokal yang melek teknologi informasi pada awal abad ke-21. \r\n\r\nTak lama setelah didirikan, sekolah ini resmi mengantongi Izin Operasional dari Dinas Pendidikan Kota Bogor melalui surat keputusan nomor 421/.5/86 DISDIK Tahun 2005 tertanggal 18 Juli 2005\r\n\r\nSecara legalitas formal, Yayasan Yatelnas disahkan melalui Akta Pendirian Nomor 137 oleh Notaris Rinasari Dwi Juli, S.H., pada 10 Juni 2010. Yayasan ini diprakarsai oleh sejumlah tokoh akademisi dan praktisi seperti Ir. Gun Gun Gunawan, M.Si., Ir. Aan Chandra, Wieke Erwina, M.Si., Moelyati Effendi, MS., Dra. Moerfiah, MS., dan Dedi Kusdinar SH, MM. Sebelum berfokus penuh pada pendidikan menengah, yayasan ini sempat mengelola unit Akademi Telekomunikasi Nasional periode 2003–2014 sebelum akhirnya dialihkan.', 'profil_sejarah_1792309389.jpg', '2026-10-18 07:43:09'),
(2, 'visi_misi', 'Visi & Misi', 'VISI\r\nTerwujudnya SMK Infokom Bogor sebagai SMK yang peduli dan berbudaya lingkungan hidup dengan tamatan yang kompeten dan mampu bersaing di tingkat Nasional, maupun Internasional.\r\n\r\nMISI\r\n1. Membangun mental dan sikap peserta didik yang beriman dan bertaqwa kepada Tuhan yang Maha Esa.\r\n2. Mengembangkan kurikulum dan menyelenggarakan pembelajaran berstandar Nasional.\r\n3. Melalui kemitraan, keterbukaan dan pelayanan prima, SMK Infokom Kota Bogor :\r\n * Meningkatkan kualitas dan kuantitas tamatan yang siap kerja.\r\n * Menyiapkan wirausahawan yang handal dan mampu bersaing.\r\n * Menyiapkan tenaga terampil yang memiliki etos kerja dan kepribadian.\r\n\r\nTUJUAN\r\n1. Menyiapkan lulusan yang yang bertaqwa kepada Tuhan Yang Maha Esa, berPaket untuk memasuki lapangan kerja.\r\n2. Menyiapkan lulusan agar menjadi warga negara yang peduli lingkungan, produktif, adaptif, dan kreatif.\r\n3. Menyiapkan lulusan yang memahami sistem manajemen mutu agar mampu berkarir, berkompetisi, dan bersifat profesional.\r\n4. Menyiapkan tenaga kerja tingkat menengah untuk mengisi kebutuhan dunia kerja berskala global.\r\n5. Mempersiapkan peserta didik mampu bekerja mandiri serta mengisi lowongan pekerjaan yang ada di DU/DI sebagai tenaga tingkat menengah sesuai dengan Paket dalam program keahlian.\r\n6. Membekali peserta didik agar mampu mengembangkan sikap profesional dan berPaket dalam bidang keahliannya.\r\n7. Membekali peserta didik dengan ilmu pengetahuan dan teknologi agar mampu mengembangkan diri baik secara mandiri maupun melalui jenjang pendidikan yang lebih tinggi.', '', '2026-10-19 13:08:06'),
(3, 'sambutan', 'Sambutan Kepala Sekolah', 'Selamat datang di Website resmi SMK INFOKOM Kota Bogor. Di era digital saat ini, website sekolah merupakan pintu gerbang informasi terdepan sebagai sarana untuk menyebarluaskan berbagai publikasi terkait kemajuan pendidikan dan pencapaian sekolah terkini. Sebagai media pembelajaran, terlebih di masa pandemi masih berlangsung, Website sekolah juga diarahkan dapat mendatangkan kemanfaatan sebagai sarana pembelajaran dengan memuat blog, e-learning, karya dan media pembelajaran yang dibuat oleh pendidik serta para siswa.\r\n\r\nDi sisi lain kami sungguh berharap Website ini juga dapat menjadi sarana silaturahmi dan komunikasi antara sekolah dengan para alumni di berbagai tempat, sebagai sebuah keluarga besar yang solid serta dapat berkontribusi dalam memajukan pendidikan di SMK INFOKOM tercinta. Kritik, saran dan masukan dari berbagai stake holder sekolah tentu sangat kami harapkan.Terima kasih atas kerjasamanya, mari terus berkarya menuju SMK INFOKOM yang lebih berkualitas dan berjaya dalam mencerdaskan kehidupan anak bangsa Indonesia. SMK, Bisa...! SMK INFOKOM, Luar Biasa…!', 'profil_sambutan_1790245931.png', '2026-09-24 10:32:11'),
(4, 'fasilitas', 'Fasilitas Sekolah', 'Laboratorium Komputer, Laboratorium Jaringan, Perpustakaan, Ruang Multimedia, Lapangan Olahraga, dan fasilitas penunjang lainnya.', NULL, '2026-09-13 06:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL DEFAULT 'Laki-laki',
  `kelas` varchar(20) NOT NULL,
  `jurusan_id` int DEFAULT NULL,
  `status` enum('aktif','lulus','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`, `jenis_kelamin`, `kelas`, `jurusan_id`, `status`, `created_at`) VALUES
(1, '2023001', 'Rizky Fauzan', 'Laki-laki', 'XII', 1, 'aktif', '2026-10-15 05:40:43'),
(2, '2023002', 'Bagus Saputra', 'Laki-laki', 'XII', 1, 'aktif', '2026-10-15 05:40:43'),
(3, '2023003', 'Nadia Rahmawati', 'Perempuan', 'XII', 1, 'aktif', '2026-10-15 05:40:43'),
(4, '2023004', 'Aisyah Permata', 'Perempuan', 'XII', 1, 'aktif', '2026-10-15 05:40:43'),
(5, '2023005', 'Yoga Nugroho', 'Laki-laki', 'XII', 2, 'aktif', '2026-10-15 05:40:43'),
(6, '2023006', 'Ahmad Prasetyo', 'Laki-laki', 'XII', 2, 'aktif', '2026-10-15 05:40:43'),
(7, '2023007', 'Dewi Oktaviani', 'Perempuan', 'XII', 2, 'aktif', '2026-10-15 05:40:43'),
(8, '2023008', 'Rina Anggraini', 'Perempuan', 'XII', 2, 'lulus', '2026-10-15 05:40:43'),
(9, '2023009', 'Andi Fauzan', 'Laki-laki', 'XII', 3, 'aktif', '2026-10-15 05:40:43'),
(10, '2023010', 'Ilham Saputra', 'Laki-laki', 'XII', 3, 'aktif', '2026-10-15 05:40:43'),
(11, '2023011', 'Lestari Rahmawati', 'Perempuan', 'XII', 3, 'aktif', '2026-10-15 05:40:43'),
(12, '2023012', 'Siti Permata', 'Perempuan', 'XII', 3, 'aktif', '2026-10-15 05:40:43'),
(13, '2023013', 'Rizky Nugroho', 'Laki-laki', 'XII', 4, 'aktif', '2026-10-15 05:40:43'),
(14, '2023014', 'Bagus Prasetyo', 'Laki-laki', 'XII', 4, 'aktif', '2026-10-15 05:40:43'),
(15, '2023015', 'Nadia Oktaviani', 'Perempuan', 'XII', 4, 'aktif', '2026-10-15 05:40:43'),
(16, '2023016', 'Aisyah Anggraini', 'Perempuan', 'XII', 4, 'aktif', '2026-10-15 05:40:43'),
(17, '2024017', 'Yoga Fauzan', 'Laki-laki', 'XI', 1, 'aktif', '2026-10-15 05:40:43'),
(18, '2024018', 'Ahmad Saputra', 'Laki-laki', 'XI', 1, 'aktif', '2026-10-15 05:40:43'),
(19, '2024019', 'Dewi Rahmawati', 'Perempuan', 'XI', 1, 'aktif', '2026-10-15 05:40:43'),
(20, '2024020', 'Rina Permata', 'Perempuan', 'XI', 1, 'aktif', '2026-10-15 05:40:43'),
(21, '2024021', 'Andi Nugroho', 'Laki-laki', 'XI', 2, 'aktif', '2026-10-15 05:40:43'),
(22, '2024022', 'Ilham Prasetyo', 'Laki-laki', 'XI', 2, 'aktif', '2026-10-15 05:40:43'),
(23, '2024023', 'Lestari Oktaviani', 'Perempuan', 'XI', 2, 'aktif', '2026-10-15 05:40:43'),
(24, '2024024', 'Siti Anggraini', 'Perempuan', 'XI', 2, 'aktif', '2026-10-15 05:40:43'),
(25, '2024025', 'Rizky Fauzan', 'Laki-laki', 'XI', 3, 'aktif', '2026-10-15 05:40:43'),
(26, '2024026', 'Bagus Saputra', 'Laki-laki', 'XI', 3, 'aktif', '2026-10-15 05:40:43'),
(27, '2024027', 'Nadia Rahmawati', 'Perempuan', 'XI', 3, 'aktif', '2026-10-15 05:40:43'),
(28, '2024028', 'Aisyah Permata', 'Perempuan', 'XI', 3, 'aktif', '2026-10-15 05:40:43'),
(29, '2024029', 'Yoga Nugroho', 'Laki-laki', 'XI', 4, 'aktif', '2026-10-15 05:40:43'),
(30, '2024030', 'Ahmad Prasetyo', 'Laki-laki', 'XI', 4, 'aktif', '2026-10-15 05:40:43'),
(31, '2024031', 'Dewi Oktaviani', 'Perempuan', 'XI', 4, 'aktif', '2026-10-15 05:40:43'),
(32, '2024032', 'Rina Anggraini', 'Perempuan', 'XI', 4, 'aktif', '2026-10-15 05:40:43'),
(33, '2025033', 'Andi Fauzan', 'Laki-laki', 'X', 1, 'aktif', '2026-10-15 05:40:43'),
(34, '2025034', 'Ilham Saputra', 'Laki-laki', 'X', 1, 'aktif', '2026-10-15 05:40:43'),
(35, '2025035', 'Lestari Rahmawati', 'Perempuan', 'X', 1, 'aktif', '2026-10-15 05:40:43'),
(36, '2025036', 'Siti Permata', 'Perempuan', 'X', 1, 'aktif', '2026-10-15 05:40:43'),
(37, '2025037', 'Rizky Nugroho', 'Laki-laki', 'X', 2, 'aktif', '2026-10-15 05:40:43'),
(38, '2025038', 'Bagus Prasetyo', 'Laki-laki', 'X', 2, 'aktif', '2026-10-15 05:40:43'),
(39, '2025039', 'Nadia Oktaviani', 'Perempuan', 'X', 2, 'aktif', '2026-10-15 05:40:43'),
(40, '2025040', 'Aisyah Anggraini', 'Perempuan', 'X', 2, 'aktif', '2026-10-15 05:40:43'),
(41, '2025041', 'Yoga Fauzan', 'Laki-laki', 'X', 3, 'aktif', '2026-10-15 05:40:43'),
(42, '2025042', 'Ahmad Saputra', 'Laki-laki', 'X', 3, 'aktif', '2026-10-15 05:40:43'),
(43, '2025043', 'Dewi Rahmawati', 'Perempuan', 'X', 3, 'aktif', '2026-10-15 05:40:43'),
(44, '2025044', 'Rina Permata', 'Perempuan', 'X', 3, 'aktif', '2026-10-15 05:40:43'),
(45, '2025045', 'Andi Nugroho', 'Laki-laki', 'X', 4, 'aktif', '2026-10-15 05:40:43'),
(46, '2025046', 'Ilham Prasetyo', 'Laki-laki', 'X', 4, 'aktif', '2026-10-15 05:40:43'),
(47, '2025047', 'Lestari Oktaviani', 'Perempuan', 'X', 4, 'aktif', '2026-10-15 05:40:43'),
(48, '2025048', 'Siti Anggraini', 'Perempuan', 'X', 4, 'aktif', '2026-10-15 05:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `id` int NOT NULL,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jumlah` int NOT NULL DEFAULT '0',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`id`, `label`, `jumlah`, `icon`) VALUES
(1, 'Siswa Aktif', 950, 'bi-mortarboard-fill'),
(2, 'Guru & Staff', 20, 'bi-person-badge-fill'),
(3, 'Jurusan', 4, 'bi-journal-bookmark-fill'),
(4, 'Prestasi', 100, 'bi-trophy-fill');

-- --------------------------------------------------------

--
-- Table structure for table `statistik_jurusan`
--

CREATE TABLE `statistik_jurusan` (
  `jurusan_id` int NOT NULL,
  `jumlah` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `statistik_jurusan`
--

INSERT INTO `statistik_jurusan` (`jurusan_id`, `jumlah`) VALUES
(1, 350),
(2, 300),
(3, 300),
(4, 150);

-- --------------------------------------------------------

--
-- Table structure for table `struktur_organisasi`
--

CREATE TABLE `struktur_organisasi` (
  `id` int NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `urutan` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `struktur_organisasi`
--

INSERT INTO `struktur_organisasi` (`id`, `jabatan`, `nama`, `foto`, `urutan`, `created_at`) VALUES
(1, 'Kepala Sekolah', 'Ir. Hj. Liliek Rahmaningsih, M.M.Pd.', 'struktur_1792313894.png', 1, '2026-09-22 11:50:21'),
(2, 'Wakil Kepala Sekolah Kurikulum', 'Mila Yaelasari, M.Pd.', 'struktur_1790249713.png', 2, '2026-09-22 11:50:21'),
(3, 'Wakil Kepala Sekolah Kesiswaan', 'Dea Rijalul Fikri, S.Kom.,Gr.', 'struktur_1790249842.png', 3, '2026-09-22 11:50:21'),
(4, '⁠Wakil Kepala Sekolah Bidang Hubungan Industri dan Masyarakat', 'Radiani Srirestuti Dewi, SS.,Gr', 'struktur_1790250046.png', 4, '2026-09-22 11:50:21'),
(9, 'Wakil Kepala Sekolah Bidang Pengembangan Sumber Daya Manusia', 'Heny Handayani, S.Pd.', 'struktur_1790250091.png', 5, '2026-09-24 11:41:31'),
(10, 'Wakil Kepala Sekolah Bidang Sarana dan Prasarana', 'Agus Tiyono, M.Pd.', 'struktur_1790250148.png', 6, '2026-09-24 11:42:28'),
(12, 'Ketua Manajemen Mutu', 'Aditya Nugraha, ST.', 'struktur_1790258362.png', 7, '2026-09-24 13:59:22'),
(13, '⁠Kepala Tata Usaha', 'Cahyadi Rozi, ST.', 'struktur_1790258397.png', 8, '2026-09-24 13:59:57'),
(14, '⁠Kepala Perpustakaan', 'Drs. Puji Marhaen Waluyo', 'struktur_1790258450.png', 9, '2026-09-24 14:00:50'),
(15, 'Kepala Bendahara', 'Putri Riandini, S.Hut., M.Pd.,Gr.', 'struktur_1790258505.png', 10, '2026-09-24 14:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level` enum('superadmin','admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama_lengkap`, `level`, `created_at`) VALUES
(1, 'admin', '$2y$10$/tbZ8p6l6uiCSCyUTieyD.TDJ.ximneQcGuCIDt60hM1LKvDC4ctq', 'Administrator', 'superadmin', '2026-09-13 06:19:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `bkk_lowongan`
--
ALTER TABLE `bkk_lowongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bkk_mitra`
--
ALTER TABLE `bkk_mitra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bkk_pelamar`
--
ALTER TABLE `bkk_pelamar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_lamaran` (`kode_lamaran`),
  ADD KEY `lowongan_id` (`lowongan_id`);

--
-- Indexes for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru_staff`
--
ALTER TABLE `guru_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_bg`
--
ALTER TABLE `hero_bg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kalender_pendidikan`
--
ALTER TABLE `kalender_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan_akademik`
--
ALTER TABLE `kegiatan_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftaran_ppdb`
--
ALTER TABLE `pendaftaran_ppdb`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_pendaftaran` (`nomor_pendaftaran`),
  ADD KEY `jurusan_pilihan` (`jurusan_pilihan`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan_kontak`
--
ALTER TABLE `pesan_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis` (`jenis`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `jurusan_id` (`jurusan_id`);

--
-- Indexes for table `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistik_jurusan`
--
ALTER TABLE `statistik_jurusan`
  ADD PRIMARY KEY (`jurusan_id`);

--
-- Indexes for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bkk_lowongan`
--
ALTER TABLE `bkk_lowongan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bkk_mitra`
--
ALTER TABLE `bkk_mitra`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bkk_pelamar`
--
ALTER TABLE `bkk_pelamar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `guru_staff`
--
ALTER TABLE `guru_staff`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `hero_bg`
--
ALTER TABLE `hero_bg`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kalender_pendidikan`
--
ALTER TABLE `kalender_pendidikan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kegiatan_akademik`
--
ALTER TABLE `kegiatan_akademik`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pendaftaran_ppdb`
--
ALTER TABLE `pendaftaran_ppdb`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pesan_kontak`
--
ALTER TABLE `pesan_kontak`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bkk_pelamar`
--
ALTER TABLE `bkk_pelamar`
  ADD CONSTRAINT `bkk_pelamar_ibfk_1` FOREIGN KEY (`lowongan_id`) REFERENCES `bkk_lowongan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pendaftaran_ppdb`
--
ALTER TABLE `pendaftaran_ppdb`
  ADD CONSTRAINT `pendaftaran_ppdb_ibfk_1` FOREIGN KEY (`jurusan_pilihan`) REFERENCES `jurusan` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
