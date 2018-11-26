-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2018 at 05:22 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_login_register`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `token`, `created_at`, `updated_at`) VALUES
(12, 'coba1', '$2y$10$XfLZbDEF7uyUnFi.vPRZNeMC733ez7nKU2cxbPQMsmvnWjO6x1UF.', 0, '1TlU8dHIw2YbRWkz', '2018-11-16 06:07:40', NULL),
(13, 'coba1@mail.com', '$2y$10$QX/GK7EXMSq1UjL.lY4AJug9myFEKarJDg5.SZx93hWGmLoJN2.B.', 0, '4J3hN6LokHQAMuC8', '2018-11-16 08:37:31', NULL),
(14, 'coba2@mail.com', '$2y$10$U1I3ocxMKt3a2g03k0CTReq5uzwl6sivFuDC9Rt1jaUtVqv.RYdsO', 0, 'Xc45CKfTbHjVkJL2', '2018-11-16 08:40:09', NULL),
(15, 'coba3@mail.com', '$2y$10$rvJ34YN4RZ9RXReuC55pweFejeF5uacU/2jSHlt4eauxa1zVBdAFm', 0, 'i4Y7w1f2ApsohGEg', '2018-11-16 08:41:46', NULL),
(16, 'coba4@mail.com', '$2y$10$bU4JYmeHIglhzOL2LJuKo.xcHYPTZKBxSJSgYCWgvo5OqkVcrOxN.', 0, '4FB9vHna3xGJLy1X', '2018-11-16 08:43:23', NULL),
(17, 'coba5@mail.com', '$2y$10$kfRjDL8/eNcZu4Wjk4C5B.Pr96WSLFJYPJ.axneIHzubBWCTw8IGG', 0, 'm6YLcwB3sDeyrWJH', '2018-11-16 08:45:51', NULL),
(18, 'coba6@mail.com', '$2y$10$RL3wZBeD680SecVpxbbGteOFXg18rsnyDUw7OYwr2rTU7tytUYL1e', 0, 'i7lLaw5PtNQp9SbH', '2018-11-16 08:47:54', NULL),
(19, 'coba7@mail.com', '$2y$10$mcMr5P6O7an9llKSPBjhd.9/PGaV9LGszdD7f/fBTHgZLl.heynh.', 0, 'aKdv4WPFsneLERij', '2018-11-16 09:09:42', NULL),
(20, 'coba8@mail.com', '$2y$10$T2XIqxHy0jn8YgJKTdUsqeLhMcozb7r71PIN6anDvMKRNTtRGFwOG', 0, '7tupdFYb98BNO0Vm', '2018-11-16 09:11:55', NULL),
(21, 'coba9@mail.com', '$2y$10$iePHLgGF884U2qgkXuf5L.eEGJlLXdT/O646VvqH0z7mAzDIy8Erq', 0, 'G360zr9ugTdemAP5', '2018-11-16 09:13:36', NULL),
(22, 'coba10@mail.com', '$2y$10$yL8QulcdtZ3LzcH.prBJCOad8NGUsEqSH6ipH0JeIVK823r594KfG', 0, 'aksqOENM3u9WHeCB', '2018-11-16 09:14:53', NULL),
(23, 'coba11@mail.com', '$2y$10$rWce/tcp70l5pIX7/QQDm.dV0BdZISAX.7EQu2INiCiPnGM98cppq', 0, 'Xj04LW8yxef3SuCh', '2018-11-16 09:16:43', NULL),
(24, 'coba12@mail.com', '$2y$10$TCCbGX2F/VHwEIAktS7D9.65oMlISki8zmLz0T781.dluNzWhbH8K', 0, 'MCPs4OKvTI6rF8qn', '2018-11-19 06:18:47', NULL),
(25, 'coba13@mail.com', '$2y$10$qZ/NasW.L3OkeoPIeypu4eWY5yPjktn2QHw0GgSGMUn2PszwVKKl6', 0, '0xOFR3Cgl9UBo8aK', '2018-11-19 06:23:33', NULL),
(26, 'coba14@mail.com', '$2y$10$Mw7PiPhPGlSOrfY6kvQ4iOgLYt2RNfbnr0tQDsNLBK5H6RqNlcZnK', 0, 'egI8MNqh34bk2XBa', '2018-11-19 06:27:29', NULL),
(27, 'coba15@mail.com', '$2y$10$5BLYILNNZwv6nPjZc2CaLOWMdf/6gTwUom4T9PDz53YKThPH56rh6', 0, 'xk95QRFzl8wrsVJK', '2018-11-19 06:34:19', NULL),
(28, 'coba69@mail.com', '$2y$10$.4G.1NOCMGZhFiHJOWQl8.hgCW2t5IDjxFF8Q86iRAb6HG2eU/ahO', 0, 'JvbCPzV1wKyZnotx', '2018-11-19 07:08:47', NULL),
(29, 'coba16@mail.com', '$2y$10$DMA0VfL05yVhgtXEqom0q.IGu.So8HiRsil7hO3Sx2DZXv/DPEo3G', 1, '5IlwcpQM1BvKPHah', '2018-11-19 07:28:58', NULL),
(30, 'coba17@mail.com', '$2y$10$Dn649afyFWv6iWsZzL4gwevUD/7TUkPcqN.h.nN2FmWE8LG4//0bu', 1, 'AeFhbXCIi4EGLWrQ', '2018-11-19 08:54:28', NULL),
(31, 'coba18@mail.com', '$2y$10$Nxg2XO3YrrumPPPAuJCHr.XhLM6zuKfLE525URoyMscYGVT.9FBg6', 1, '1Is9Gqxlh7mgiKk6', '2018-11-22 02:56:50', NULL),
(32, 'coba19@mail.com', '$2y$10$GHPA71ZHbDpXww8mDi0GhuaTG8/F5H0aJEBg9/RCKtCYUpRgXkitK', 0, 'Bm0IU2kuHvxt8eOY', '2018-11-22 06:09:54', NULL),
(33, 'coba20@mail.com', '$2y$10$0XkOasOMsYyFMAuDgLnBI.5LYhAt0rA6NyOOFISvUeQC.Tu1CafEG', 1, 'VnL27AgpuZyi3fJB', '2018-11-22 07:04:53', NULL),
(34, 'coba21@mail.com', '$2y$10$GYx1CZAyK42.y9ST/zuL1uJ/O2StqeDd6D2ydCbU2ISexUQOR/Hea', 1, 'D8En47L1ZBFKvu6e', '2018-11-22 07:19:36', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
