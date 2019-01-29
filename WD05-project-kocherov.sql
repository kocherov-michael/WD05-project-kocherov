-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 30 2019 г., 00:58
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wd05-project-kocherov`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Михаил Кочеров', 'Я веб-разработчик.');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `role` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secondname` text NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `avatar_small` varchar(191) DEFAULT NULL,
  `recovery_code` varchar(191) DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `secondname`, `country`, `city`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'info@mail.com', '$2y$10$heTmw28FwdXumAi3euwfe.i.1jGJCJvSLhPIy5rhkZwJKFYAa23yG', 'admin', 'Михаил', 'Кочеров', 'Россия', 'Санкт-Петербург', '72525939.JPG', '48-72525939.JPG', '5Oe8sLaQT7fK6l4', 3),
(23, 'tesla@mail.com', '$2y$10$oZ.Fhm.u1dvVyAVyJlF83.fHDncF2SbDDgz6SxHuGk72hTX/UYqiK', 'user', 'Nicola', 'Tesla', 'Croatia', 'Smiljan', '30615844.png', '48-30615844.png', NULL, NULL),
(24, 'einstein@mail.com', '$2y$10$kjuVuMjPdvWbUQ3grq/RPeJIwayTF/cnOv0mOzh0dRe6T6xqYxS4u', 'user', 'Albert', 'Einstein', 'Germany', 'Ulm', '75354919.jpg', '48-75354919.jpg', NULL, NULL),
(25, 'lomonosov@mail.com', '$2y$10$qJ9f8NpeTe1wd6z1Ru3BGO62sIVX09iNWgmWYyX4VS0uSStRLg75.', 'user', 'Михайло', 'Ломоносов', 'Российская Империя', 'дер. Мешанинская', '64624023.jpg', '48-64624023.jpg', NULL, NULL),
(26, 'newton@mail.com', '$2y$10$tf6Tr9sdhdwpa9C6VN551.5kgfIfLYCQ1ZnSofJ7sGygXG98n29CW', 'user', 'Isaak', 'Newton', 'England', 'Lincolnshir', '57202758.jpg', '48-57202758.jpg', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
