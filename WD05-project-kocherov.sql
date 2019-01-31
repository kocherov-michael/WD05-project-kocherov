-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 31 2019 г., 21:15
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
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`) VALUES
(19, 'Ученый рассказал о возможном ущербе от астероида Апофис в случае столкновения с Землей', 'Ученый добавил, что на сегодняшний день у человечества нет средств изменить траекторию астероида, если возникнет опасность его столкновения с Землей. \"[Межконтинентальные баллистические] ракеты, которые есть, если смогут попасть в астероид вблизи Земли, практически не повлияют на его траекторию\", - отметил специалист.\r\n\r\nАстероид Апофис был обнаружен в 2004 году в обсерватории Китт-Пик (штат Аризона). Его назвали в честь древнеегипетского змея-разрушителя, который пытается уничтожить Солнце в течение его ночного перехода. Небесное тело движется со скоростью более 30 км/с, то подходя на относительно небольшое расстояние к Земле, то отдаляясь от нее. В следующий раз сближение ожидается в 2029 году (он может оказаться, по разным данным, в 37-38 тыс. км).\r\n\r\nРанее в Институте космических исследований (ИКИ) РАН предлагали \"стрелять\" малыми астероидами по опасным небесным телам. Для этих целей, как сообщал ТАСС ведущий научный сотрудник ИКИ Натан Эйсмонт, нужно отправлять космические аппараты к малым астероидам, чтобы изменить траекторию их движения. После этого объект попадет в гравитационное поле Земли, которое отправит его к опасному небесному телу.', 1, '2019-01-31 17:56:01', '743845279.jpg', '320-743845279.jpg'),
(20, '&laquo;Hubble&raquo; случайно открыл галактику неподалеку от Млечного Пути', 'Наблюдая за шаровым скоплением NGC 6752 с помощью космического телескопа «Hubble», астрономы сделали неожиданное открытие: они обнаружили небольшую тусклую галактику, проживающую на расстоянии всего 30 миллионов световых лет от Земли. Статья, описывающая исследование, представлена в журнале Monthly Notices of the Royal Astronomical Society.\r\n\r\n«Основной целью нашей работы было определение возраста одного из шаровых скоплений Млечного Пути, удаленного от нас на 13,5 тысяч световых лет, для чего мы изучали популяцию белых карликов в нем. Однако, просматривая данные, мы неожиданно заметили компактную группу звезд. После тщательного анализа их яркости и температуры стало ясно, что эти светила не принадлежат скоплению NGC 6752, а находятся на несколько миллионов световых лет дальше», – пишут авторы исследования.', 1, '2019-01-31 20:48:10', '4615375.jpg', '320-4615375.jpg'),
(21, 'Магнитное поле Земли было на грани исчезновения, заявляют ученые', 'Магнитное поле Земли имело самую низкую напряженность около 565 миллионов лет назад, когда его мощное динамо было на грани исчезновения, говорится в исследовании, представленном в журнале Nature Geoscience. Поскольку формирование твердого внутреннего ядра Земли усилило бы геомагнитное поле, это свидетельствует о том, что к тому времени внутреннее ядро ​​еще не затвердело.\r\n\r\nОценка периода формирования твердого ядра варьируется в широких пределах – от 2,5 миллиардов до 500 миллионов лет назад. Однако эти временные параметры могут быть уточнены путем анализа каменистых пород, которые хранят следы древней природы геомагнитного поля. Затвердевание жидкого железа на неокрепшей границе внутреннего ядра стало бы важным источником энергии для геодинамо – конвекционных потоков жидкого металла во внешнем ядре, которые питают магнитное поле. На основе компьютерного моделирования ученые определили, что такой прирост энергии будет исторически «задокументирован» в породе по следам напряженности геомагнитного поля.', 1, '2019-01-31 20:49:09', '1203773656.jpg', '320-1203773656.jpg'),
(22, 'Получен самый детальный на сегодня снимок Ultima Thule', 'Космический аппарат NASA «New Horizons» передал на Землю самое четкое на сегодня изображение объекта пояса Койпера 2014 MU69, также известного как Ultima Thule, которое было получено 1 января 2019 года всего за 7 минут до максимального сближения зонда с астероидом.\r\n\r\n«Полученные данные не только помогают нам раскрывать геологические особенности на обеих частях, составляющих Ultima Thule, но и преподносят новые сюрпризы. Однако уже в следующем месяце у нас появятся цветные и более четкие изображения, которые помогут разгадать многие тайны далекого объекта», – сказал Алан Штерн, главный исследователь миссии из Юго-западного исследовательского института (США).', 1, '2019-01-31 20:50:27', '939000551.jpg', '320-939000551.jpg'),
(23, 'Жизненно важные химические элементы имеют инопланетное происхождение', 'Согласно исследованию, проведенному петрологами Университета Райса (США), Земля получила основную часть своего углерода, азота и других жизненно важных летучих элементов в результате столкновения с планетой, которое создало Луну более 4,4 миллиарда лет назад. Выводы ученых представлены в журнале Science Advances.\r\n\r\n«Наш сценарий впервые согласует сроки и способ доставки летучих элементов на Землю со всеми геохимическими данными», – сообщает соавтор исследования Радждип Дасгупта.\r\n\r\nДоказательства, направленные на проверку давней теории о том, что летучие вещества Земли появились в результате столкновения с протопланетой, содержащей богатое серой ядро, пришли из комбинации высокотемпературных экспериментов под высоким давлением в лаборатории, специализирующейся на изучении геохимических реакций, происходящих глубоко в недрах нашей планеты. Содержание серы в ядре объекта-донора имеет значение из-за удивительного множества экспериментальных данных об углероде, азоте и сере, присутствующих во всех слоях Земли, кроме ядра.', 1, '2019-01-31 20:51:18', NULL, NULL);

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
(26, 'newton@mail.com', '$2y$10$tf6Tr9sdhdwpa9C6VN551.5kgfIfLYCQ1ZnSofJ7sGygXG98n29CW', 'user', 'Isaak', 'Newton', 'England', 'Lincolnshir', '57202758.jpg', '48-57202758.jpg', NULL, NULL),
(27, 'info4@mail.com', '$2y$10$aXpTbTi6jyQOwTRNuNShvOREaDPO0W3L7y8VqAduYEhOiB8J5K9fi', 'user', 'Александр', 'Пушкин', '', '', NULL, NULL, NULL, NULL),
(28, 'info12@mail.com', '$2y$10$GGiDtogIwEFqQSubWal3hueIKmFl8WOKtBFfjKUVc880jeDfNnjb.', 'user', 'Михаил8', 'Пушкин4', '', '', NULL, NULL, 'BzvNogkC7dn6Yp1', 3),
(29, 'info200@mail.com', '$2y$10$J5SY1KXhKlzUyntQ2sLJVeDXu/cHN5He..D9NCB5cD1psZ3.uaGi6', 'user', 'Михаил', 'Пушкин', '', '', NULL, NULL, NULL, NULL),
(30, 'info21@mail.com', '$2y$10$c/pamQoOH1upUXBpW6JnpelgpTMnHBwEk.9y0Ph5Svrq.Tc1hzQey', 'user', 'Михаил', '', '', '', NULL, NULL, NULL, NULL),
(31, 'info31@mail.com', '$2y$10$e9yiTkP2yEHNwx590tI0SOKU9l31EO9vYUKg1g9zSMmWvL9aRTLIO', 'user', 'Михаил', '', '', '', NULL, NULL, NULL, NULL),
(32, 'info33@mail.com', '$2y$10$HyL3bEnaPJtIIo9UvfffyuCDBSEDYXqtyDjFbAD3PpSgZiYEttSh.', 'user', 'Михаил', 'Кочеров', 'Россия', '', NULL, NULL, NULL, NULL),
(33, 'info6@mail.com', '$2y$10$jLBWvkiSXOXSshOBn4yWo.GXL9LjdxHPxDIkX3iRfhqILUnOktMVO', 'user', NULL, '', '', '', NULL, NULL, NULL, NULL),
(34, '123info@mail.com', '$2y$10$l7UAzakDg6bMMt7jdHCIBuif2is0/ZN24/yKS.R67x8JYyDp1O2rC', 'user', NULL, '', '', '', NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

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
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
