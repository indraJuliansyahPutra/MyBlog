-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 10:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(1, 1, 'Politik', '2023-04-11 06:41:50'),
(2, 1, 'Bisnis', '2023-04-11 06:41:57'),
(3, 1, 'Olahraga', '2023-04-11 06:42:11'),
(4, 1, 'Teknologi', '2023-04-11 06:42:23'),
(5, 1, 'Kesehatan', '2023-04-11 06:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 19, 'Pengguna', 'pengguna@pengguna.com', 'Such a Great Post!', '2023-04-15 08:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 4, 1, 'Google Rilis Sistem Operasi Baru untuk Perangkat IoT', 'Google-Rilis-Sistem-Operasi-Baru-untuk-Perangkat-IoT', '<p>Google telah merilis sistem operasi baru bernama &quot;Fuchsia&quot; yang ditujukan untuk perangkat Internet of Things (IoT). Fuchsia menawarkan kernel kustom yang dirancang khusus untuk perangkat kecil dan sumber terbuka. Sistem operasi ini juga memiliki antarmuka pengguna yang bersih dan mudah digunakan, serta mendukung aplikasi Android dan Linux.</p>\r\n\r\n<p>Fuchsia memiliki desain yang berbeda dari sistem operasi lainnya karena tidak didasarkan pada kernel Linux seperti Android dan Chrome OS. Sebaliknya, Fuchsia menggunakan kernel Zircon yang dikembangkan oleh Google sendiri. Kernel Zircon dirancang untuk sistem embedded, sehingga lebih efisien dan cepat daripada kernel Linux.</p>\r\n\r\n<p>Fuchsia juga menawarkan antarmuka pengguna yang modern dan bersih, serta dapat beradaptasi dengan berbagai perangkat IoT. Sistem operasi ini mendukung aplikasi Android dan Linux melalui emulator, yang memungkinkan pengembang untuk menguji aplikasi mereka di lingkungan Fuchsia. Google belum memberikan banyak detail tentang rencana pengembangan Fuchsia, tetapi sistem operasi ini bisa menjadi alternatif yang menarik untuk perangkat IoT di masa depan.</p>\r\n', 'macbook-459196__340.jpg', '2023-04-11 06:46:31'),
(2, 4, 1, 'Microsoft Membuka Layanan Cloud Gaming di Seluruh Dunia', 'Microsoft-Membuka-Layanan-Cloud-Gaming-di-Seluruh-Dunia', '<p>Microsoft telah meluncurkan layanan cloud gaming baru yang disebut &quot;Xbox Cloud Gaming&quot; dan membuatnya tersedia di seluruh dunia. Layanan ini memungkinkan pengguna untuk memainkan game Xbox favorit mereka di berbagai perangkat, termasuk ponsel, tablet, dan PC. Xbox Cloud Gaming memiliki lebih dari 100 game yang tersedia untuk dimainkan, dan dapat diakses dengan berlangganan Xbox Game Pass Ultimate.</p>\r\n\r\n<p>Xbox Cloud Gaming menawarkan pengalaman gaming yang mulus tanpa perlu mengunduh atau menginstal game secara lokal di perangkat. Layanan ini juga mendukung multiplayer dan sinkronisasi dengan akun Xbox, sehingga pengguna dapat melanjutkan game yang mereka mainkan di berbagai perangkat. Xbox Cloud Gaming dapat diakses melalui aplikasi Xbox Game Pass di perangkat Android atau melalui browser web pada perangkat lainnya.</p>\r\n\r\n<p>Layanan ini akan membantu Microsoft untuk bersaing dengan platform cloud gaming lainnya seperti Google Stadia dan Amazon Luna. Xbox Cloud Gaming juga memberikan keuntungan bagi pengguna yang tidak memiliki perangkat Xbox, tetapi ingin memainkan game Xbox favorit mereka. Dengan layanan ini, pengguna dapat mengakses berbagai game Xbox dan memainkannya di perangkat yang mereka miliki.</p>\r\n', 'building-1011876__340.jpg', '2023-04-11 06:48:11'),
(3, 4, 1, 'Intel Mengumumkan Prosesor Generasi Ke-12', 'Intel-Mengumumkan-Prosesor-Generasi-Ke-12', '<p>Intel telah mengumumkan peluncuran prosesor generasi ke-12 mereka, yang disebut &quot;Alder Lake&quot;. Prosesor ini memiliki arsitektur hybrid baru yang menggabungkan inti performa tinggi dan inti performa rendah, serta didukung oleh teknologi pembelajaran mesin untuk meningkatkan kinerja dan efisiensi daya. Alder Lake akan tersedia untuk komputer desktop dan laptop pada akhir tahun ini.</p>\r\n\r\n<p>Prosesor Alder Lake akan menggunakan fabrikasi 10 nanometer SuperFin dari Intel, yang memungkinkan prosesor untuk memiliki konsumsi daya yang lebih rendah dan performa yang lebih baik. Prosesor ini juga mendukung teknologi PCIe 5.0 dan Thunderbolt 4, yang memungkinkan transfer data yang lebih cepat dan kinerja grafis yang lebih baik.</p>\r\n', 'cpu-4393374__340.jpg', '2023-04-11 06:50:25'),
(4, 4, 1, 'Apple Rilis iPhone 13 dengan Peningkatan Kamera dan Fitur Baru', 'Apple-Rilis-iPhone-13-dengan-Peningkatan-Kamera-dan-Fitur-Baru', '<p>Apple telah merilis iPhone 13 dengan beberapa peningkatan, termasuk kamera yang lebih baik, layar yang lebih cerah, dan baterai yang lebih tahan lama. iPhone 13 memiliki empat model yang berbeda, termasuk iPhone 13 mini, iPhone 13, iPhone 13 Pro, dan iPhone 13 Pro Max. Semua model iPhone 13 didukung oleh prosesor A15 Bionic yang diklaim lebih cepat dan efisien daripada prosesor sebelumnya.</p>\r\n\r\n<p>Salah satu peningkatan terbesar pada iPhone 13 adalah pada kamera. Kamera belakang iPhone 13 dan iPhone 13 mini sekarang memiliki lensa ultra-wide baru dengan aperture f/1.8 dan 12 megapiksel. Sedangkan iPhone 13 Pro dan iPhone 13 Pro Max memiliki kamera belakang tiga lensa yang mencakup ultra-wide, wide, dan telephoto, masing-masing dengan aperture yang lebih besar. Selain itu, iPhone 13 juga dilengkapi dengan fitur baru seperti mode sinematik, yang memungkinkan pengguna untuk merekam video dengan efek bokeh yang menarik.</p>\r\n', 'macbook-1093641__340.jpg', '2023-04-11 06:55:30'),
(5, 4, 1, 'Facebook Mengubah Nama Perusahaannya Menjadi \"Meta\"', 'Facebook-Mengubah-Nama-Perusahaannya-Menjadi-Meta', '<p>Facebook mengumumkan perubahan besar-besaran dengan mengubah nama perusahaannya menjadi &quot;Meta&quot;. CEO Facebook, Mark Zuckerberg, mengatakan bahwa nama baru tersebut mencerminkan fokus perusahaan pada metaverse, yaitu konsep dunia virtual di mana orang dapat berinteraksi dan beraktivitas dalam lingkungan digital yang imersif. Meta akan menjadi nama induk untuk semua produk dan layanan Facebook, termasuk Instagram, WhatsApp, dan Oculus.</p>\r\n\r\n<p>Meta mengumumkan bahwa mereka akan menginvestasikan miliaran dolar dalam pengembangan metaverse, termasuk pengembangan teknologi dan infrastruktur yang diperlukan. Meta juga berencana untuk mengadakan konferensi tahunan yang disebut &quot;Meta Connect&quot; untuk membahas perkembangan metaverse dan memperkenalkan produk baru. Selain itu, Meta juga akan meluncurkan program beta untuk metaverse pada tahun 2022 dan berharap dapat menghadirkan metaverse yang lebih luas dan terintegrasi dalam beberapa tahun</p>\r\n', 'mobile-phone-1917737__340.jpg', '2023-04-11 06:58:28'),
(6, 5, 1, 'Penelitian Terbaru Ungkap Manfaat Minum Kopi Bagi Kesehatan', 'Penelitian-Terbaru-Ungkap-Manfaat-Minum-Kopi-Bagi-Kesehatan', '<p>Penelitian terbaru mengungkap bahwa minum kopi secara teratur dapat memberikan manfaat bagi kesehatan. Sejumlah studi menunjukkan bahwa kandungan antioksidan dalam kopi dapat membantu mengurangi risiko terkena beberapa penyakit kronis, seperti diabetes tipe 2, penyakit jantung, dan kanker. Namun, para ahli tetap menyarankan untuk mengonsumsi kopi dengan bijak, karena minuman ini juga dapat menyebabkan efek samping jika dikonsumsi secara berlebihan.</p>\r\n', 'coffe-1354786__340.jpg', '2023-04-11 07:00:11'),
(7, 5, 1, 'Cegah Penyebaran Virus, Ahli Sarankan Rajin Cuci Tangan Pakai Sabun', 'Cegah-Penyebaran-Virus-Ahli-Sarankan-Rajin-Cuci-Tangan-Pakai-Sabun', '<p>Cuci tangan dengan sabun dan air mengalir dianggap sebagai cara paling efektif untuk mencegah penyebaran virus, terutama pada masa pandemi ini. Para ahli merekomendasikan agar kita rajin mencuci tangan setiap kali menyentuh permukaan yang mungkin terkontaminasi virus, seperti pintu, gagang tangga, atau benda-benda lain yang sering disentuh orang banyak. Selain itu, kita juga harus selalu mengenakan masker dan menjaga jarak dengan orang lain untuk meminimalkan risiko terinfeksi.</p>\r\n', 'coronavirus-5174671__340.jpg', '2023-04-11 07:00:52'),
(8, 5, 1, 'Studi: Olahraga Rutin Dapat Meningkatkan Kualitas Tidur', 'Studi-Olahraga-Rutin-Dapat-Meningkatkan-Kualitas-Tidur', '<p>Hasil studi terbaru menunjukkan bahwa melakukan olahraga secara rutin dapat membantu meningkatkan kualitas tidur. Olahraga dapat membantu meredakan stres dan meningkatkan produksi hormon melatonin yang berfungsi dalam mengatur siklus tidur. Selain itu, olahraga juga dapat membantu mengurangi risiko terkena penyakit kronis, seperti diabetes, obesitas, dan penyakit jantung.</p>\r\n', 'istockphoto-495557092-170667a.jpg', '2023-04-11 07:01:47'),
(9, 5, 1, 'Ahli Gizi Ingatkan Pentingnya Konsumsi Sayur dan Buah-buahan', 'Ahli-Gizi-Ingatkan-Pentingnya-Konsumsi-Sayur-dan-Buah-buahan', '<p>Para ahli gizi mengingatkan bahwa konsumsi sayur dan buah-buahan sangat penting bagi kesehatan. Sayur dan buah-buahan mengandung banyak vitamin, mineral, serat, dan antioksidan yang dibutuhkan tubuh untuk menjaga kesehatan. Para ahli merekomendasikan untuk mengonsumsi setidaknya lima porsi sayur dan buah-buahan setiap hari, dan memilih beragam jenis sayur dan buah-buahan agar asupan nutrisi yang diperoleh lebih lengkap.</p>\r\n', 'salad-2756467__340.jpg', '2023-04-11 07:02:42'),
(10, 5, 1, 'Pentingnya Istirahat yang Cukup bagi Kesehatan Mental', 'Pentingnya-Istirahat-yang-Cukup-bagi-Kesehatan-Mental', '<p>Istirahat yang cukup sangat penting bagi kesehatan mental. Kurang tidur atau kelelahan dapat meningkatkan risiko terkena gangguan mood, kecemasan, dan depresi. Selain itu, istirahat juga membantu mengurangi stres dan meningkatkan produktivitas. Para ahli merekomendasikan agar kita menjaga pola tidur yang teratur, menghindari aktivitas yang terlalu melelahkan, dan mengambil waktu untuk bersantai dan melakukan kegiatan yang menyenangkan.</p>\r\n', 'istockphoto-910148024-170667a.jpg', '2023-04-11 07:03:26'),
(11, 2, 1, 'Pendapatan Facebook Meningkat di Kuartal Pertama Tahun 2023', 'Pendapatan-Facebook-Meningkat-di-Kuartal-Pertama-Tahun-2023', '<p>Facebook melaporkan pendapatan sebesar 26,2 miliar dolar pada kuartal pertama tahun 2023, meningkat sebesar 15% dibandingkan dengan periode yang sama tahun sebelumnya. Pertumbuhan pendapatan tersebut didorong oleh kenaikan iklan di platform Facebook, Instagram, dan WhatsApp. Meskipun pandemi COVID-19 masih berlangsung, perusahaan teknologi tersebut terus berinovasi untuk meningkatkan pengalaman pengguna dan menghasilkan lebih banyak pendapatan.</p>\r\n\r\n<p>Namun, beberapa analis mengkhawatirkan dampak regulasi terbaru yang dikeluarkan oleh pemerintah AS terhadap bisnis Facebook. Pada bulan Maret 2023, Kongres AS mengeluarkan Undang-Undang Kepatuhan Sosial Media, yang membatasi kemampuan perusahaan teknologi untuk mengumpulkan dan menggunakan data pengguna. Meskipun Facebook menyatakan dukungannya terhadap undang-undang tersebut, tetapi hal tersebut dapat mempengaruhi pendapatan perusahaan di masa depan.</p>\r\n\r\n<p>Sebagai tanggapan terhadap kekhawatiran tersebut, CEO Facebook Mark Zuckerberg mengumumkan bahwa perusahaan akan terus fokus pada pengembangan fitur-fitur baru yang dapat meningkatkan keterlibatan pengguna dan mendiversifikasi sumber pendapatannya.</p>\r\n', 'ecommerce-3562191__340.jpg', '2023-04-15 08:21:21'),
(12, 2, 1, 'Ritel Online Tumbuh Pesat di Asia Tenggara', 'Ritel-Online-Tumbuh-Pesat-di-Asia-Tenggara', '<p>Berdasarkan laporan terbaru dari eMarketer, ritel online di Asia Tenggara diprediksi akan tumbuh pesat pada tahun 2023. Diperkirakan total nilai pasar ritel online di Asia Tenggara akan mencapai 148 miliar dolar pada tahun 2023, naik sebesar 25% dari tahun sebelumnya. Pertumbuhan tersebut didorong oleh meningkatnya penetrasi internet dan smartphone di kawasan tersebut.</p>\r\n\r\n<p>Beberapa perusahaan ritel online terbesar di Asia Tenggara, seperti Lazada, Shopee, dan Tokopedia, terus mengembangkan bisnis mereka untuk memenuhi kebutuhan konsumen yang semakin tinggi. Mereka juga mengadopsi strategi pemasaran yang lebih agresif dan menawarkan berbagai promo dan diskon untuk menarik pelanggan baru dan meningkatkan loyalitas pelanggan.</p>\r\n\r\n<p>Namun, ada juga beberapa tantangan yang dihadapi oleh ritel online di Asia Tenggara, seperti masalah infrastruktur logistik yang belum sepenuhnya matang dan persaingan yang semakin ketat di pasar. Oleh karena itu, perusahaan ritel online terus berinovasi dan mengembangkan teknologi untuk meningkatkan efisiensi dan kecepatan pengiriman produk.</p>\r\n', 'ecommerce-3640321__340.jpg', '2023-04-15 08:21:51'),
(13, 2, 1, 'Industri Penerbangan Berjuang untuk Bangkit dari Pandemi', 'Industri-Penerbangan-Berjuang-untuk-Bangkit-dari-Pandemi', '<p>Industri penerbangan global terus berjuang untuk bangkit dari dampak pandemi COVID-19. Meskipun beberapa maskapai telah mengalami sedikit pemulihan pada akhir tahun 2022, namun keadaan masih jauh dari kondisi normal sebelum pandemi. Maskapai besar seperti American Airlines, Delta, dan United terus mengalami</p>\r\n\r\n<p>Industri penerbangan global terus berjuang untuk bangkit dari dampak pandemi COVID-19. Meskipun beberapa maskapai telah mengalami sedikit pemulihan pada akhir tahun 2022, namun keadaan masih jauh dari kondisi normal sebelum pandemi. Maskapai besar seperti American Airlines, Delta, dan United terus mengalami</p>\r\n\r\n<p>Industri penerbangan global terus berjuang untuk bangkit dari dampak pandemi COVID-19. Meskipun beberapa maskapai telah mengalami sedikit pemulihan pada akhir tahun 2022, namun keadaan masih jauh dari kondisi normal sebelum pandemi. Maskapai besar seperti American Airlines, Delta, dan United terus mengalami</p>\r\n\r\n<p>Industri penerbangan global terus berjuang untuk bangkit dari dampak pandemi COVID-19. Meskipun beberapa maskapai telah mengalami sedikit pemulihan pada akhir tahun 2022, namun keadaan masih jauh dari kondisi normal sebelum pandemi. Maskapai besar seperti American Airlines, Delta, dan United terus mengalami</p>\r\n', 'coronavirus-5174671__340.jpg', '2023-04-15 08:22:17'),
(14, 1, 1, 'Partai Demokrat Menang Pemilihan Umum Presiden AS 2024', 'Partai-Demokrat-Menang-Pemilihan-Umum-Presiden-AS-2024', '<p>Partai Demokrat berhasil memenangkan pemilihan umum presiden AS pada tahun 2024. Pasangan calon presiden dan wakil presiden dari partai tersebut, Kamala Harris dan Cory Booker, berhasil mengalahkan pasangan calon dari Partai Republik, Ron DeSantis dan Mike Pence. Kemenangan tersebut menandai awal era baru bagi politik AS dan menjadi tonggak sejarah sebagai pemilihan pertama di mana seorang wanita dan seorang pria kulit hitam menjadi presiden dan wakil presiden AS.</p>\r\n\r\n<p>Kemenangan Partai Demokrat diyakini karena program-program mereka yang berfokus pada isu-isu sosial, seperti kesetaraan gender, hak-hak LGBT, dan reformasi imigrasi. Pasangan Harris-Booker juga berhasil memperoleh dukungan dari kelompok minoritas dan kaum muda, yang menjadi pemilih penting pada pemilihan umum kali ini.</p>\r\n\r\n<p>Namun, meskipun Partai Demokrat berhasil memenangkan pemilihan umum presiden, mereka masih akan menghadapi tantangan dalam menjalankan pemerintahan AS. Mereka harus bekerja sama dengan Kongres AS, yang masih memiliki mayoritas Partai Republik, serta mengatasi masalah-masalah seperti ketegangan hubungan dengan China, perubahan iklim, dan pengelolaan pandemi COVID-19.</p>\r\n', 'usa-1561757__340.jpg', '2023-04-15 08:25:12'),
(15, 1, 1, 'Krisis Kemanusiaan di Myanmar Terus Berlanjut', 'Krisis-Kemanusiaan-di-Myanmar-Terus-Berlanjut', '<p>Krisis kemanusiaan di Myanmar terus berlanjut setelah kudeta militer pada bulan Februari 2023. Militer Myanmar telah mengambil alih pemerintahan dan menangkap pemimpin sipil Aung San Suu Kyi. Sejak itu, terjadi kekerasan dan represi yang mengakibatkan ribuan orang tewas dan jutaan orang mengungsi.</p>\r\n\r\n<p>Komunitas internasional telah mengecam tindakan militer Myanmar dan meminta mereka untuk mengembalikan demokrasi dan menghentikan kekerasan. Beberapa negara juga telah memberlakukan sanksi ekonomi terhadap Myanmar sebagai tindakan protes.</p>\r\n\r\n<p>Namun, masalah tersebut belum menunjukkan tanda-tanda akan segera diatasi. Militer Myanmar menolak untuk mengakui kritik internasional dan terus melancarkan serangan kekerasan terhadap warga sipil dan demonstran yang menuntut kembalinya demokrasi. Krisis kemanusiaan di Myanmar masih menjadi isu besar dan menimbulkan keprihatinan di seluruh dunia.</p>\r\n', 'reichstag-1358937__340.jpg', '2023-04-15 08:25:43'),
(16, 1, 1, 'Israel dan Palestina Sepakat untuk Mengakhiri Konflik', 'Israel-dan-Palestina-Sepakat-untuk-Mengakhiri-Konflik', '<p>Setelah bertahun-tahun konflik yang memakan banyak korban jiwa, Israel dan Palestina akhirnya sepakat untuk mengakhiri konflik mereka. Kesepakatan tersebut dicapai setelah perundingan yang panjang dan melibatkan pihak-pihak internasional, termasuk PBB dan AS.</p>\r\n\r\n<p>Kesepakatan ini mencakup perjanjian untuk menyelesaikan sengketa perbatasan dan pembentukan dua negara yang merdeka dan diakui internas Setelah bertahun-tahun konflik yang memakan banyak korban jiwa, Israel dan Palestina akhirnya sepakat untuk mengakhiri konflik mereka. Kesepakatan tersebut dicapai setelah perundingan yang panjang dan melibatkan pihak-pihak internasional, termasuk PBB dan AS. Kesepakatan ini mencakup perjanjian untuk menyelesaikan sengketa perbatasan dan pembentukan dua negara yang merdeka dan diakui internas</p>\r\n\r\n<p>Setelah bertahun-tahun konflik yang memakan banyak korban jiwa, Israel dan Palestina akhirnya sepakat untuk mengakhiri konflik mereka. Kesepakatan tersebut dicapai setelah perundingan yang panjang dan melibatkan pihak-pihak internasional, termasuk PBB dan AS.</p>\r\n\r\n<p>Kesepakatan ini mencakup perjanjian untuk menyelesaikan sengketa perbatasan dan pembentukan dua negara yang merdeka dan diakui internas</p>\r\n', 'blue-1283011__340.jpg', '2023-04-15 08:26:23'),
(17, 3, 1, 'Timnas Brasil Juara Piala Dunia 2026', 'Timnas-Brasil-Juara-Piala-Dunia-2026', '<p>Timnas Brasil berhasil keluar sebagai juara Piala Dunia FIFA 2026 setelah mengalahkan timnas Argentina di final dengan skor 2-1. Pertandingan yang berlangsung di Stadion MetLife, New York, AS, itu menjadi pertandingan yang sangat dinanti-nanti oleh para penggemar sepak bola di seluruh dunia.</p>\r\n\r\n<p>Bintang muda Brasil, Gabriel Jesus, mencetak gol pertama untuk timnya di menit ke-30. Argentina berhasil menyamakan kedudukan melalui gol Lionel Messi di menit ke-65, tetapi Brasil kembali memimpin dengan gol dari Neymar di menit ke-82.</p>\r\n\r\n<p>Kemenangan Brasil pada Piala Dunia 2026 menjadi gelar ke-6 mereka dan mengukuhkan posisi mereka sebagai salah satu tim terbaik di dunia. Brazil menjadi negara dengan pencapaian terbanyak dalam sejarah Piala Dunia FIFA.</p>\r\n', 'soccer-3471402__340.jpg', '2023-04-15 08:28:43'),
(18, 3, 1, 'Lewis Hamilton Juara Dunia F1 2023', 'Lewis-Hamilton-Juara-Dunia-F1-2023', '<p>Pembalap Mercedes, Lewis Hamilton, berhasil meraih gelar juara dunia F1 2023 setelah memenangkan Grand Prix Abu Dhabi pada akhir musim. Hamilton berhasil mengalahkan rekan setimnya, Valtteri Bottas, di posisi kedua, sedangkan Max Verstappen dari Red Bull Racing finis di posisi ketiga.</p>\r\n\r\n<p>Kemenangan di Abu Dhabi membawa Hamilton meraih gelar juara dunia F1 yang ke-8. Prestasi tersebut menjadikannya sebagai salah satu pembalap terbaik sepanjang masa dan membawa kebanggaan bagi tim Mercedes.</p>\r\n\r\n<p>Meskipun Hamilton berhasil meraih gelar juara dunia, musim F1 2023 dianggap sebagai musim yang penuh dengan persaingan yang ketat antara beberapa tim besar di sirkuit. Ini menjanjikan musim F1 yang menarik pada tahun-tahun mendatang.</p>\r\n', 'action-1867014__340.jpg', '2023-04-15 08:29:06'),
(19, 3, 1, 'Serena Williams Menang di Final Wimbledon 2024', 'Serena-Williams-Menang-di-Final-Wimbledon-2024', '<p>Petenis legendaris Amerika Serikat, Serena Williams, berhasil keluar sebagai juara tunggal putri di turnamen Wimbledon 2024 setelah mengalahkan lawannya dari Rusia, Maria Sharapova, dengan skor 6-3, 6-4 di final. Ini merupakan gelar Grand Slam ke-24 bagi Williams dan kemenangan kedua belasnya di Wimbledon.</p>\r\n\r\n<p>Pertandingan final tersebut dianggap sebagai salah satu pertandingan paling menegangkan di Wimbledon dalam beberapa tahun terakhir. Williams berhasil mengontrol permainan sepanjang pertandingan dan memanfaatkan pengalamannya untuk mengalahkan Sharapova.</p>\r\n\r\n<p>Kemenangan di Wimbledon 2024 menunjukkan bahwa Williams masih menjadi salah satu petenis terbaik di dunia dan bersiap untuk kembali ke panggung Grand Slam pada tahun-tahun mendatang. Kemenangan ini juga menjadi momen yang sangat emosional bagi Williams, yang kembali bermain dengan penuh semangat setelah melahirkan anaknya pada tahun sebelumnya.</p>\r\n', 'mountain-biking-95032__340.jpg', '2023-04-15 08:29:42'),
(20, 4, 1, 'Timnas Brasil Juara Piala Dunia 2026', 'Timnas-Brasil-Juara-Piala-Dunia-2026', '<p>Partai Demokrat Menang Pemilihan Umum Presiden AS 2024 Partai Demokrat berhasil memenangkan pemilihan umum presiden AS pada tahun 2024. Pasangan calon presiden dan wakil presiden dari partai tersebut, Kamala Harris dan Cory Booker, berhasil mengalahkan pasangan calon dari Partai Republik, Ron DeSantis dan Mike Pence. Kemenangan tersebut menandai awal era baru bagi politik AS dan menjadi tonggak sejarah sebagai pemilihan pertama di mana seorang wanita dan seorang pria kulit hitam menjadi presiden dan wakil presiden AS.</p>\r\n\r\n<p>Kemenangan Partai Demokrat diyakini karena program-program mereka yang berfokus pada isu-isu sosial, seperti kesetaraan gender, hak-hak LGBT, dan reformasi imigrasi. Pasangan Harris-Booker juga berhasil memperoleh dukungan dari kelompok minoritas dan kaum muda, yang menjadi pemilih penting pada pemilihan umum kali ini.</p>\r\n\r\n<p>Namun, meskipun Partai Demokrat berhasil memenangkan pemilihan umum presiden, mereka masih akan menghadapi tantangan dalam menjalankan pemerintahan AS. Mereka harus bekerja sama dengan Kongres AS, yang masih memiliki mayoritas Partai Republik, serta mengatasi masalah-masalah seperti ketegangan hubungan dengan China, perubahan iklim, dan pengelolaan pandemi COVID-19.</p>\r\n', 'ci.png', '2023-04-15 08:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'Admin', 'admin@admin.com', 'admin', '86cabf67676f992ee0b503cc478816e4', '2023-04-15 08:40:59'),
(2, 'Pengguna', 'pengguna@pengguna.com', 'pengguna', 'f4a7f31c5a35b5b5a0bdc85fc9cc0f98', '2023-04-15 08:45:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
