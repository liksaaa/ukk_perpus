-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 02:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `judul` varchar(225) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `penerbit` varchar(225) DEFAULT NULL,
  `tahun_terbit` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `deskripsi`) VALUES
(2, 3, 'Steve Jobs', 'Walter Isaacson', ' Simon & Schuster', 2011, 'Buku ini menggambarkan kehidupan Steve Jobs secara menyeluruh, termasuk masa muda, pendirian Apple, perjalanan kesuksesan dan kegagalannya, serta pengaruhnya terhadap industri teknologi dan budaya populer. Isaacson melakukan wawancara dengan Jobs, keluarganya, dan rekan-rekannya, serta melakukan penelitian mendalam untuk memberikan gambaran yang mendalam tentang sosok kompleks ini.'),
(3, 3, 'Nanti Kita Cerita Tentang Hari Ini', 'Marchella FP ', 'GagasMedia', 2018, 'Novel ini mengikuti perjalanan seorang perempuan bernama Alya yang berjuang dengan trauma masa lalunya. Alya berusaha untuk memahami dan menghadapi peristiwa-peristiwa yang telah membentuk dirinya, sambil menjalani hubungan dengan keluarga dan teman-temannya. Cerita ini membawa pembaca melalui gelombang emosi yang beragam, dari kegelapan ke terang, menawarkan pengalaman mendalam tentang perjuangan dan kesembuhan.'),
(4, 3, 'Buku Atomic Habits', ' James Clear', 'Atomic Habits', 2018, '\"Atomic Habits\" dapat diklasifikasikan sebagai buku non-fiksi dalam genre pengembangan diri dan psikologi. Buku ini membahas cara-cara untuk membentuk kebiasaan-kebiasaan yang produktif dan membantu pembaca mencapai tujuan-tujuan mereka dalam hidup.'),
(6, 4, ' Kamis yang Manis', 'Tere Liye', 'Gramedia Pustaka Utama', 2015, '\"Kamis yang Manis\" membawa pembaca melalui kisah-kisah yang beragam, mengulas berbagai aspek kehidupan sehari-hari dengan sentuhan khas Tere Liye. Setiap cerita memiliki pesan moral yang dalam dan menyentuh hati, sering kali mengangkat tema tentang cinta, persahabatan, keberanian, dan perjuangan. Di antara cerita-cerita yang terdapat dalam buku ini, pembaca akan menemukan berbagai karakter yang kuat dan emosional, serta plot yang menarik dan menggugah.'),
(7, 4, 'Sketsa Gaza', 'Erwin Arnada', ' Narasi', 2009, '\"Buku Sketsa Gaza\" adalah buku yang ditulis oleh penulis Indonesia, Erwin Arnada. Buku ini merupakan kumpulan sketsa dan cerita yang diilustrasikan oleh para pelukis Indonesia yang mengunjungi Jalur Gaza pada tahun 2009. Buku ini menggambarkan penderitaan dan kehidupan sehari-hari penduduk Gaza yang terdampak konflik.'),
(8, 4, 'Jalan Udara', ' Ahmad Tohari', 'Gramedia Pustaka Utama', 2014, 'Novel ini menggambarkan kehidupan masyarakat desa yang sederhana namun penuh dengan konflik, impian, dan keberanian. Sarwono dan Osen, bersama dengan tokoh-tokoh lain di desa, menghadapi berbagai tantangan dan peristiwa yang membentuk nasib mereka masing-masing.'),
(9, 6, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Vintage Books', 2014, '\"Sapiens: A Brief History of Humankind\" adalah sebuah buku yang ditulis oleh Yuval Noah Harari, seorang sejarawan dan profesor di Universitas Hebrew di Yerusalem, Israel. Buku ini memberikan pandangan menyeluruh tentang sejarah umat manusia, mulai dari awal mula spesies Homo sapiens hingga masa kini. '),
(10, 6, 'The Selfish Gene', 'Richard Dawkins', 'Buku ini pertama kali diterbitkan oleh Oxford University Press.', 1976, 'Dawkins menggunakan metafora \"egois\" untuk menggambarkan bagaimana gen-gen bekerja untuk mempertahankan diri mereka sendiri dan meningkatkan kemungkinan reproduksi mereka, terlepas dari efeknya pada organisme individu atau spesies secara keseluruhan. Dia menjelaskan bagaimana sifat-sifat yang menguntungkan gen-gen tertentu akan lebih cenderung tersebar di populasi seiring waktu, melalui proses seleksi alam.'),
(11, 6, 'Astrophysics for People in a Hurry', 'Neil deGrasse Tyson', 'W.W. Norton & Company', 2017, 'Dalam \"Astrophysics for People in a Hurry,\" Neil deGrasse Tyson membawa pembaca dalam perjalanan cepat melintasi alam semesta, membahas konsep-konsep dasar dalam astrofisika dengan bahasa yang mudah dipahami. Buku ini dirancang khusus untuk mereka yang tertarik memahami dasar-dasar ilmu pengetahuan tentang alam semesta, tetapi memiliki waktu terbatas untuk belajar secara mendalam.'),
(12, 8, ' Islam: A Short History', 'Karen Armstrong', 'Modern Library', 2000, ' \"Islam: A Short History,\" Karen Armstrong menguraikan perkembangan agama Islam dari zaman awalnya di Jazirah Arab hingga menjadi salah satu agama terbesar di dunia. Ia menjelaskan bagaimana Islam muncul sebagai agama monoteistik yang didirikan oleh Nabi Muhammad pada abad ke-7 Masehi di Mekkah dan Madinah.'),
(13, 8, 'God Is Not One', 'Stephen Prothero', 'HarperCollins Publishers', 2010, 'Buku ini membahas delapan agama utama dunia, yaitu Islam, Kristen, Hindu, Buddha, Yudaisme, Taoisme, Yoruba, dan Agama Orang Asli Amerika. Setiap bab menguraikan asal-usul, doktrin, praktik, dan nilai-nilai sentral dari masing-masing agama tersebut, serta mempertimbangkan konsekuensi dari perbedaan-perbedaan tersebut dalam konteks sejarah dan dunia modern.'),
(14, 8, 'A Course in Miracles', 'Buku ini disusun oleh Helen Schucman dengan bantuan William Thetford', 'Foundation for Inner Peace', 1976, 'Menurut tradisi, buku ini disusun melalui pengalaman wahyu oleh seorang psikolog bernama Helen Schucman, yang mendengar suara dalam pikirannya yang memerintahkan untuk menulis apa yang kemudian menjadi \"A Course in Miracles\". Buku ini tidak hanya mencakup teks utama, tetapi juga terdiri dari sebuah \"Buku Latihan\" yang berisi serangkaian latihan mental yang bertujuan untuk mengubah persepsi pembaca tentang diri mereka sendiri dan dunia di sekitar mereka.'),
(15, 9, ' How to See: Visual Adventures in a World God Never Made', ' George Nelson', 'Design Within Reach', 1977, 'Dalam \"How to See: Visual Adventures in a World God Never Made,\" George Nelson mengajak pembaca dalam sebuah petualangan visual yang menggetarkan, menjelajahi keindahan dan keajaiban dunia di sekitar kita. Buku ini bukan hanya sekadar sebuah panduan tentang cara melihat, tetapi juga sebuah perjalanan menuju pemahaman yang lebih dalam tentang keindahan, fungsi, dan arti di balik objek-objek sehari-hari.'),
(16, 9, 'Graphic Design', ' Ellen Lupton dan Jennifer Cole Phillips', 'Princeton Architectural Press', 2008, '\"Graphic Design: The New Basics\" merupakan sebuah buku yang memberikan pandangan menyeluruh tentang prinsip-prinsip desain grafis modern. Ditulis oleh dua ahli dalam bidang desain grafis, Ellen Lupton dan Jennifer Cole Phillips, buku ini menggabungkan teori dengan praktik, membahas prinsip-prinsip dasar yang membentuk desain grafis dalam era digital.'),
(17, 9, ' Interaction of Color', 'Josef Albers', 'Yale University Press', 1963, '\"Interaction of Color\" adalah karya klasik oleh Josef Albers, seorang seniman dan pendidik Bauhaus yang terkenal. Buku ini membahas kompleksitas warna dan interaksi mereka dalam konteks seni dan desain. Albers memperkenalkan konsep-konsep yang inovatif tentang warna, yang menjadi fondasi bagi banyak pemahaman modern tentang teori warna.'),
(18, 10, 'The Shallows: What the Internet Is Doing to Our Brains', 'Nicholas Carr', ' W. W. Norton & Company', 2010, '\"The Shallows: What the Internet Is Doing to Our Brains,\" Nicholas Carr menyelidiki dampak penggunaan internet yang intensif terhadap otak manusia dan cara teknologi informasi mengubah cara kita berpikir, membaca, dan memproses informasi. Carr menyarankan bahwa penggunaan internet yang terus-menerus, terutama dengan paparan yang sering kepada informasi yang singkat dan terfragmentasi, dapat mengurangi kemampuan kita untuk berkonsentrasi secara mendalam dan memproses informasi dengan cermat.'),
(19, 10, ' Artificial Intelligence: A Guide for Thinking Humans', 'Melanie Mitchell', 'Farrar, Straus and Giroux.', 2019, ' \"Artificial Intelligence: A Guide for Thinking Humans,\" Melanie Mitchell menghadirkan sebuah panduan yang ramah dan menarik bagi pembaca yang ingin memahami konsep-konsep dasar kecerdasan buatan (AI) tanpa harus memiliki latar belakang teknis yang kuat. Buku ini membahas perkembangan AI dari sejarahnya hingga tren terkini, membahas tentang berbagai konsep dan aplikasi AI dengan bahasa yang mudah dipahami oleh pembaca non-teknis.'),
(20, 10, 'The Phoenix Project: A Novel About IT, DevOps, and Helping Your Business Win', ' Gene Kim, Kevin Behr, dan George Spafford', 'IT Revolution Press', 2013, '\"The Phoenix Project\" adalah sebuah novel yang menggabungkan kisah fiksi dengan konsep-konsep penting dalam manajemen IT dan pengembangan perangkat lunak. Buku ini mengikuti perjalanan seorang pemimpin IT yang bernama Bill dalam menjalankan proyek Phoenix, sebuah inisiatif besar yang bertujuan untuk menyelamatkan perusahaan fiktif bernama Parts Unlimited.'),
(21, 11, 'Seri Harry Potter ', ' J.K. Rowling', 'Bloomsbury', 1997, 'Seri Harry Potter mengikuti petualangan seorang anak laki-laki bernama Harry Potter, yang mengetahui bahwa ia adalah seorang penyihir setelah menerima surat undangan untuk belajar di Sekolah Sihir Hogwarts. Di sekolah ini, Harry dan teman-temannya, Ron Weasley dan Hermione Granger, menjalani berbagai petualangan, menemukan rahasia-rahasia yang berkaitan dengan masa lalu mereka, dan menghadapi kekuatan gelap yang mengancam dunia sihir.'),
(22, 11, ' The Diary of a Young Girl', ' Anne Frank', ' Bantam Books', 1947, '\"The Diary of a Young Girl\" adalah catatan harian seorang remaja Yahudi bernama Anne Frank selama masa ia bersembunyi dari Nazi selama Perang Dunia II. Anne dan keluarganya tinggal di sebuah ruangan tersembunyi di belakang kantor ayahnya di Amsterdam, yang dikenal sebagai \"The Secret Annex,\" selama hampir dua tahun sebelum mereka akhirnya ditemukan dan ditangkap pada tahun 1944.'),
(23, 11, 'The Chronicles of Narnia', ' C.S. Lewis', ' HarperCollins ', 1950, '\"The Chronicles of Narnia\" adalah seri novel fantasi klasik yang ditulis oleh C.S. Lewis. Seri ini terdiri dari tujuh buku yang mengisahkan tentang petualangan di dunia fantasi yang ajaib dan berbahaya yang disebut Narnia. Setiap buku dalam seri menampilkan petualangan yang berbeda, tetapi karakter dan lokasi yang sama sering muncul di seluruh cerita.\r\n'),
(24, 12, 'Pedagogy of the Oppressed', 'Paulo Freire', ' Continuum International Publishing Group', 1968, '\"Pedagogy of the Oppressed\" adalah karya klasik dalam bidang pendidikan yang ditulis oleh Paulo Freire, seorang filsuf dan pendidik Brasil. Buku ini merupakan sebuah manifesto tentang pendidikan kritis dan emansipatoris, menyoroti peran pendidikan dalam pembebasan individu dan masyarakat dari penindasan dan ketidakadilan.'),
(25, 12, ' The Element: How Finding Your Passion Changes Everything', 'Sir Ken Robinson, Ph.D.', ' Viking Penguin', 2009, '\"The Element\" adalah buku yang ditulis oleh Sir Ken Robinson, seorang ahli pendidikan terkenal dan pembicara motivasi yang dikenal karena advokasi kuatnya terhadap kreativitas dalam pendidikan. Dalam buku ini, Robinson membahas tentang bagaimana menemukan dan mengeksploitasi gairah dan bakat individual dapat mengubah hidup seseorang.'),
(26, 12, ' Dumbing Us Down: The Hidden Curriculum of Compulsory Schooling', 'John Taylor Gatto', 'New Society Publishers', 1992, '\"Dumbing Us Down: The Hidden Curriculum of Compulsory Schooling\" adalah karya yang kontroversial dan menginspirasi yang ditulis oleh John Taylor Gatto, seorang guru sekolah umum berpengalaman yang kemudian menjadi pendidik dan aktivis homeschooling terkenal.'),
(27, 13, 'Watchmen', ' Alan Moore', ' DC Comics ', 1986, 'Watchmen adalah novel grafis yang ditulis oleh Alan Moore dan diilustrasikan oleh Dave Gibbons. Cerita ini berlatar di dunia alternatif di mana superhero telah menjadi bagian dari kehidupan sehari-hari, tetapi masyarakat mulai meragukan kebermanfaatan mereka. Ketika seorang mantan superhero yang dikenal sebagai The Comedian dibunuh, detektif pensiunan Rorschach mulai menyelidiki dan menemukan konspirasi yang lebih besar yang mengancam seluruh dunia.'),
(28, 13, 'Avengers', ' Stan Lee, Roy Thomas, Brian Michael Bendis, dan Jonathan Hickman', ' Marvel Comics', 1963, 'Avengers adalah tim pahlawan super yang terdiri dari berbagai karakter superhero dari Marvel Comics. Tim ini pertama kali dibentuk oleh Iron Man, Thor, Hulk, Ant-Man, dan Wasp, dengan tujuan untuk melindungi dunia dari ancaman yang terlalu besar untuk ditangani sendiri. Sejak itu, tim ini telah berkembang dan mengalami banyak perubahan anggota, termasuk bergabungnya karakter-karakter seperti Captain America, Black Widow, Hawkeye, Scarlet Witch, Vision, dan banyak lagi.'),
(29, 13, 'Sandman', ' Neil Gaiman', ' DC Comics', 1989, 'Sandman adalah seri komik karya penulis terkenal Neil Gaiman, yang diilustrasikan oleh berbagai seniman. Cerita ini mengikuti kehidupan Morpheus, Sang Sandman, juga dikenal sebagai Dream (Mimpi), yang merupakan salah satu dari tujuh Endless, entitas metafisika yang mewakili konsep seperti Kematian, Takdir, Kebahagiaan, dll.'),
(30, 14, ' The Oxford English Dictionary', ' Oxford University Press', ' Oxford University Press', 1928, 'The Oxford English Dictionary (OED) adalah kamus bahasa Inggris paling terkenal dan paling otoritatif di dunia. Kamus ini tidak hanya memberikan definisi kata-kata, tetapi juga memberikan informasi tentang asal-usul, perkembangan makna, ejaan, dan penggunaan kata-kata dalam berbagai konteks sepanjang sejarah bahasa Inggris.'),
(31, 14, ' The Official SAT Study Guide', 'College Board', 'College Board', 2004, 'The Official SAT Study Guide adalah buku persiapan resmi yang diterbitkan oleh College Board, lembaga yang mengelola ujian SAT. Buku ini dirancang untuk membantu para siswa mempersiapkan diri secara efektif untuk menghadapi ujian SAT, yang merupakan ujian standar yang digunakan untuk masuk ke perguruan tinggi di Amerika Serikat.'),
(32, 14, 'CRC Handbook of Chemistry and Physics', ' CRC Press', ' CRC Press', 1913, 'CRC Handbook of Chemistry and Physics adalah salah satu referensi standar dalam ilmu kimia, fisika, dan ilmu terkait lainnya. Buku ini menyediakan informasi yang luas dan mendalam tentang berbagai topik dalam kedua bidang tersebut, termasuk konstanta fisika, properti kimia dan fisika zat, reaksi kimia, dan banyak lagi.');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(3, 'Nonfiksi'),
(4, 'Fiksi'),
(6, 'Ilmu Pengetahuan'),
(8, 'Agama dan Spiritualitas'),
(9, 'Seni dan Desain'),
(10, 'Teknologi dan Komputer'),
(11, 'Anak-anak dan Remaja'),
(12, 'Pendidikan'),
(13, 'Komik'),
(14, 'Referensi');

-- --------------------------------------------------------

--
-- Table structure for table `kategoribuku_relasi`
--

CREATE TABLE `kategoribuku_relasi` (
  `id_kategoribuku` int(11) NOT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `koleksi_pribadi`
--

CREATE TABLE `koleksi_pribadi` (
  `id_koleksi` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `tanggal_peminjaman` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `status_peminjaman` enum('dipinjam','dikembalikan') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_user`, `id_buku`, `tanggal_peminjaman`, `tanggal_pengembalian`, `status_peminjaman`) VALUES
(28, 22, 6, '2024-03-05', '2024-03-21', 'dikembalikan'),
(30, 22, 4, '2024-03-06', '2024-03-09', 'dikembalikan'),
(31, 22, 15, '2024-03-08', '2024-03-20', 'dipinjam'),
(32, 22, 12, '2024-03-06', '2024-03-15', 'dipinjam'),
(33, 22, 4, '2024-03-06', '2024-03-09', 'dipinjam'),
(34, 22, 4, '2024-03-07', '2024-03-09', 'dipinjam');

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `ulasan` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id_ulasan`, `id_user`, `id_buku`, `ulasan`, `rating`) VALUES
(6, 22, 2, 'mudah dimengerti', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `nama_lengkap` varchar(225) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_telpon` varchar(225) DEFAULT NULL,
  `level` enum('admin','petugas','peminjam') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `nama_lengkap`, `alamat`, `no_telpon`, `level`) VALUES
(2, 'petugas', '1', 'petugas@gmail.com', 'Petugas 1', 'jln kancil', '08999', 'petugas'),
(18, 'admin', '2', 'admin@gmail.com', 'admin', 'andonohu', '', 'admin'),
(22, 'aliksa', '1', 'aliksa@gmail.com', 'aliksa', 'hombis', '', 'peminjam'),
(29, 'peminjam2', '2', 'peminjam@gmail.com', 'peminjam2', 'andonohu', '087464644444', 'peminjam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD PRIMARY KEY (`id_kategoribuku`),
  ADD KEY `buku_id` (`id_buku`),
  ADD KEY `kategori_id` (`id_kategori`);

--
-- Indexes for table `koleksi_pribadi`
--
ALTER TABLE `koleksi_pribadi`
  ADD PRIMARY KEY (`id_koleksi`),
  ADD KEY `buku_id` (`id_buku`),
  ADD KEY `user_id` (`id_user`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `user_id` (`id_user`),
  ADD KEY `buku_id` (`id_buku`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id_ulasan`),
  ADD KEY `buku_id` (`id_buku`),
  ADD KEY `user_id` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  MODIFY `id_kategoribuku` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `koleksi_pribadi`
--
ALTER TABLE `koleksi_pribadi`
  MODIFY `id_koleksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id_ulasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `koleksi_pribadi`
--
ALTER TABLE `koleksi_pribadi`
  ADD CONSTRAINT `koleksi_pribadi_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `koleksi_pribadi_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);

--
-- Constraints for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `ulasan_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `ulasan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
