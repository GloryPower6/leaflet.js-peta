-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jul 2024 pada 06.16
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
-- Database: `db_leaflet_kec_pasarwajo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `markers`
--

INSERT INTO `markers` (`id`, `user_id`, `lat`, `lng`, `name`, `description`, `icon`) VALUES
(1, 1, -5.50235189147146, 122.84457226517934, '', '', 'sekolah'),
(2, 1, -5.502448007726533, 122.84567177295685, '', '', 'sekolah'),
(3, 1, -5.495682511302283, 122.84344545700844, 'SMA Negeri 1 Pasarwajo', '', 'sekolah'),
(4, 1, -5.499773639273382, 122.84553087142503, 'Mesjid Raya Pasarwajo', '', 'tempat-ibadah'),
(5, 1, -5.501113060654883, 122.84324665192364, '', '', 'penginapan'),
(6, 1, -5.506581292400967, 122.87747604264196, 'SD Negeri 1 Kondowa', '', 'sekolah'),
(7, 1, -5.50692838669744, 122.87499239956026, 'Masjid Jami Kondowa', '', 'tempat-ibadah'),
(8, 1, -5.507911531850469, 122.87335621082809, 'AS Five Homestay', '', 'penginapan'),
(9, 1, -5.509241566628579, 122.87253480338761, 'Masjid Jami Nurul Taqwa', '', 'tempat-ibadah'),
(10, 1, -5.51408104993007, 122.86993169170636, 'SMP Negeri 8 Buton', '', 'sekolah'),
(11, 1, -5.514634176178293, 122.86953105503191, 'SMA Negeri 2 Pasarwajo', '', 'sekolah'),
(12, 1, -5.521329711465249, 122.86529882608426, 'Penginapan Anisa', '', 'penginapan'),
(13, 1, -5.5229053884345, 122.86321621139084, 'Masjid Ar-Rahman', '', 'tempat-ibadah'),
(14, 1, -5.524351062547596, 122.86074038196952, 'Kontrakan Amir', '', 'penginapan'),
(15, 1, -5.524261337599459, 122.85855010781816, 'Masjid Nurul Amal', '', 'tempat-ibadah'),
(16, 1, -5.533664087047644, 122.85213555444855, 'SMP Negeri 29 Buton', '', 'sekolah'),
(17, 1, -5.532915565038108, 122.84622426678091, 'SD Negeri 63 Buton', '', 'sekolah'),
(18, 1, -5.531169562291347, 122.8455000744702, 'Masjid Muslimin Kombeli', '', 'tempat-ibadah'),
(19, 1, -5.53329699982719, 122.83905604360292, 'SMA Negeri 4 Pasarwajo', '', 'sekolah'),
(20, 1, -5.526358733818289, 122.83907886608856, 'Kos Nindy', '', 'penginapan'),
(21, 1, -5.525894220313675, 122.84477588215948, 'SD Negeri 1 Awainulu', '', 'sekolah'),
(22, 1, -5.522117881733622, 122.84283577296299, '', '', 'tempat-ibadah'),
(23, 1, -5.51961443082706, 122.84206495021142, 'SDN 25 Buton', '', 'sekolah'),
(24, 1, -5.512548265572066, 122.8412437860458, 'Penginapan Ayungge', '', 'penginapan'),
(25, 1, -5.512166163072436, 122.84093495885016, 'SD Negeri 2 Banabungi', '', 'sekolah'),
(26, 1, -5.511568161657816, 122.84162698526922, 'Masjid Al Muhajirin', '', 'tempat-ibadah'),
(27, 1, -5.510666106329709, 122.84160955194143, 'Hotel Buton Jaya', '', 'penginapan'),
(28, 1, -5.510399449338372, 122.84180283179934, 'Hotel Muslimah', '', 'penginapan'),
(29, 1, -5.5093898799510255, 122.84129267605705, 'Robby Kos Kosan', '', 'penginapan'),
(30, 1, -5.509556008302711, 122.8416795986236, 'Hotel HANY', '', 'penginapan'),
(31, 1, -5.508968263801176, 122.84199604980769, 'SMK Kesehatan Bakti Husada Pasarwajo', '', 'sekolah'),
(32, 1, -5.5082646518656295, 122.84191452384822, 'Kos Kosan Hijau', '', 'penginapan'),
(33, 1, -5.505678016608422, 122.84166838323769, 'TK Negeri Pembina', '', 'sekolah'),
(34, 1, -5.503756070155943, 122.84293555278765, 'Universitas Dayanu Ikhsanuddin - Kampus 2', '', 'sekolah'),
(35, 1, -5.501198523736538, 122.8425818681717, 'Kos Maysila', '', 'penginapan'),
(36, 1, -5.4998316348564185, 122.84238189619201, 'SDN 1 Buton', '', 'sekolah'),
(37, 1, -5.498443327107813, 122.8426236248676, 'Kost Mama Dora', '', 'penginapan'),
(38, 1, -5.494124253307948, 122.84585363538702, 'Losmen Rizki', '', 'penginapan'),
(39, 1, -5.49212073624565, 122.84626083223753, 'Lapassarwajo', '', 'penginapan'),
(40, 1, -5.49097845577565, 122.84413457237513, 'Kos/ Penginapan Arjun', '', 'penginapan'),
(41, 1, -5.497637571661992, 122.84567032567728, 'TK Pertiwi', '', 'sekolah'),
(42, 1, -5.490364650773017, 122.84527810466557, 'SD Negeri 3 Pasarwajo', '', 'sekolah'),
(43, 1, -5.48073359054383, 122.85056448917403, 'SD Negeri 1 Saragi', '', 'sekolah'),
(44, 1, -5.481046869761179, 122.85054139455039, 'TK Putra II Saragi', '', 'sekolah'),
(45, 1, -5.4746677850296175, 122.8551346063614, 'Masjid Hidayatullah Wakoko', '', 'tempat-ibadah'),
(46, 1, -5.47510815084335, 122.85487706893963, '', '', 'sekolah'),
(47, 1, -5.445344863537711, 122.87934485991856, '', '', 'sekolah'),
(48, 1, -5.4459147167173425, 122.88149432985716, '', '', 'tempat-ibadah'),
(49, 1, -5.435568236896745, 122.9047506736115, 'Madrasah Tsanawiyah Negeri 2 Buton', '', 'sekolah'),
(50, 1, -5.439640142934248, 122.89104691108865, 'SDN 1 Kancinaa', '', 'sekolah'),
(51, 1, -5.439207197366038, 122.89095140712982, 'Masjid Hizbul Wathan', '', 'tempat-ibadah'),
(52, 1, -5.458832294715913, 122.86649644374849, 'Masjid Darul Aqsha', '', 'tempat-ibadah'),
(53, 1, -5.463121603682005, 122.86160947394131, 'SMP Negeri 7 Buton', '', 'sekolah'),
(54, 1, -5.4648348767993316, 122.86025039742857, 'Universitas Muhammadiyah Buton', '', 'sekolah'),
(55, 1, -5.4666401796350055, 122.86215585438131, 'Pesantren Hidayatullah', '', 'sekolah'),
(56, 1, -5.483272856080784, 122.84913712103123, 'Masjid As-Shobri Saragi', '', 'tempat-ibadah'),
(57, 1, -5.505406435070928, 122.84481883049013, 'Gereja Katolik Stella Maris', '', 'tempat-ibadah'),
(58, 1, -5.472748141155005, 122.85548329353334, 'Hotel Muslimah', '', 'penginapan'),
(59, 1, -5.469041923757302, 122.84570395946504, 'SDN 2 Saragi', '', 'sekolah'),
(60, 1, -5.470249231663392, 122.8461277484894, 'Masjid Jabal Nur', '', 'tempat-ibadah'),
(61, 1, -5.474061748518868, 122.83919692039491, 'Taman Kanak-kanak Mutiara', '', 'sekolah'),
(62, 1, -5.472721190465901, 122.83622503280641, 'Masjid Nadhotul Fatah Desa Lapodi', '', 'tempat-ibadah'),
(63, 1, -5.470761354587456, 122.8328722715378, 'Masjid AN NUR', '', 'tempat-ibadah'),
(64, 1, -5.47051595224543, 122.82777070999147, 'SD Negeri 2 Lapodi', '', 'sekolah'),
(65, 1, -5.471290457777925, 122.8268587589264, 'SMA Negeri 3 Pasarwajo', '', 'sekolah'),
(66, 1, -5.472433273010512, 122.82679438591005, 'SMP Negeri 4 Pasarwajo', '', 'sekolah'),
(67, 1, -5.472961829445323, 122.82022297382356, 'SD Negeri 1 Warinta', '', 'sekolah'),
(68, 1, -5.46776585181171, 122.76737272739412, 'SMP Negeri 15 Buton', '', 'sekolah'),
(69, 1, -5.464198528279014, 122.76917517185213, 'SDN 101 Buton', '', 'sekolah'),
(70, 1, -5.470446347770804, 122.76242136955263, 'SMA Negeri 5 Pasarwajo', '', 'sekolah'),
(71, 1, -5.472715844403046, 122.75635421276094, 'SDN 1 Wakaokili', '', 'sekolah'),
(72, 1, -5.4708628708741935, 122.7545464038849, 'Masjid Haqqul Yakkin Kaongkeongkea', '', 'tempat-ibadah'),
(73, 1, -5.471445285770006, 122.7541494369507, 'TK Harapan Ibu', '', 'sekolah'),
(74, 1, -5.41480142950995, 122.8832656145096, 'SMA Negeri 6 Pasarwajo', '', 'sekolah'),
(75, 1, -5.410886161183793, 122.88492858409883, 'Masjid AS-Syaqur', '', 'tempat-ibadah'),
(76, 1, -5.409252333505319, 122.88332998752595, 'Masjid Al-Hijrah', '', 'tempat-ibadah'),
(77, 1, -5.409476937966017, 122.87775635719301, 'SDN 2 Winning', '', 'sekolah'),
(78, 1, -5.407383331907321, 122.87110447883607, 'Masjid Al-Musafir', '', 'tempat-ibadah'),
(79, 1, -5.406181520691337, 122.8718662261963, 'SMP Negeri 37 Buton', '', 'sekolah'),
(80, 1, -5.403911994416249, 122.8616362810135, 'SDN 1 Winning', '', 'sekolah'),
(81, 1, -5.525984943000785, 122.84228146076204, 'MIN 2 Buton', '', 'sekolah'),
(82, 1, -5.532688643461585, 122.85331875085834, 'Masjid Al Hidaya', '', 'tempat-ibadah'),
(83, 1, -5.511698981834073, 122.87055462598802, 'SD Negeri 1 Dongkala', '', 'sekolah'),
(84, 1, -5.534493510777901, 122.89696633815765, 'Masjid Jamil', '', 'tempat-ibadah'),
(85, 1, -5.536098426140642, 122.89627969264984, 'TK Tunas Bahari', '', 'sekolah'),
(86, 1, -5.537881201764622, 122.89708971977235, 'SDN 1 Holimombo Jaya', '', 'sekolah'),
(87, 1, -5.5388267024276265, 122.89649426937105, 'SMP Negeri 38 Buton', '', 'sekolah'),
(88, 1, -5.551854302433463, 122.89253532886507, 'Mesjid Desa Koholimombono', '', 'tempat-ibadah'),
(89, 1, -5.554213873388461, 122.89156436920166, 'SDN 2 Holimombo', '', 'sekolah'),
(90, 1, -5.568245499861563, 122.89107084274293, 'SDN 1 Holimombo', '', 'sekolah'),
(91, 1, -5.564999312814531, 122.89127737283708, 'SMP Negeri 4 Wabula', '', 'sekolah'),
(92, 1, -5.56476180401404, 122.89094477891923, 'SMA Negeri 2 Wabula', '', 'sekolah'),
(93, 1, -5.568048871748667, 122.89125859737398, 'SD Negeri 12 Buton', '', 'sekolah'),
(94, 1, -5.567989327705051, 122.89171457290651, 'Taman Kanak Kanak', '', 'sekolah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$DMO4shpZ3705Wzbhzf8/9ux9SFOuHq.HXUBYhjwgSq0BfiRax7Ls6');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `markers`
--
ALTER TABLE `markers`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
