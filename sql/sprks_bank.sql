SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




-- Table structure for table `transaction`

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Table structure for table `users`

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Dumping data for table `users`

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Srinivas', 'srinivas@gmail.com', 30000),
(2, 'Vinay', 'vinay12@gmail.com', 4000),
(3, 'Madhuri', 'madhuri@gmail.com', 15000),
(4, 'Teja Sri', 'tejasri@gmail.com', 2000),
(5, 'Anu', 'Anu356@gmail.com', 45000),
(6, 'Uday', 'uday@gmail.com', 7000),
(7, 'Laxmi Sri', 'laxmisri@gmail.com', 10000),
(8, 'Harini', 'Harini@gmail.com', 9000),
(9, 'Loopasri', 'loopasri@gmail.com', 12000),
(10, 'Hari', 'hari56@gmail.com', 5500);


-- Indexes for table `transaction`

ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


-- Indexes for table `users`

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);



-- AUTO_INCREMENT for table `transaction`

ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;


-- AUTO_INCREMENT for table `users`

ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;
