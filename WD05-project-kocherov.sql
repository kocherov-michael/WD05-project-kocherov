-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 05 2019 г., 21:00
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
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(6, 'Путешествия'),
(7, 'Покупки'),
(9, 'PHP'),
(10, 'Полёты');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(2, 22, 1, 'новый коммент', '2019-02-03 18:37:56'),
(3, 22, 28, 'комментарий без имени', '2019-02-03 18:58:20'),
(5, 22, 28, 'Космический аппарат NASA &laquo;New Horizons&raquo; передал на Землю самое четкое на сегодня изображение объекта пояса Койпера 2014 MU69, также известного как Ultima Thule, которое было получено 1 января 2019 года всего за 7 минут до максимального сближения зонда с астероидом. &laquo;Полученные данные не только помогают нам раскрывать геологические особенности на обеих частях, составляющих Ultima Thule, но и преподносят новые сюрпризы. Однако уже в следующем месяце у нас появятся цветные и более четкие изображения, которые помогут разгадать многие тайны далекого объекта&raquo;, &ndash; сказал Алан Штерн, главный исследователь миссии из Юго-западного исследовательского института (США).', '2019-02-03 19:38:10'),
(6, 21, 28, 'Магнитное поле Земли имело самую низкую напряженность около 565 миллионов лет назад, когда его мощное динамо было на грани исчезновения, говорится в исследовании, представленном в журнале Nature Geoscience. ', '2019-02-03 19:58:02'),
(7, 21, 28, 'Затвердевание жидкого железа на неокрепшей границе внутреннего ядра стало бы важным источником энергии для геодинамо &ndash; конвекционных потоков жидкого металла во внешнем ядре, которые питают магнитное поле. На основе компьютерного моделирования ученые определили, что такой прирост энергии будет исторически &laquo;задокументирован&raquo; в породе по следам напряженности геомагнитного поля.', '2019-02-03 20:01:25'),
(8, 23, 29, ' Содержание серы в ядре объекта-донора имеет значение из-за удивительного множества экспериментальных данных об углероде, азоте и сере, присутствующих во всех слоях Земли, кроме ядра.', '2019-02-03 20:09:08'),
(9, 22, 29, 'Космический аппарат NASA &laquo;New Horizons&raquo; передал на Землю самое четкое на сегодня изображение объекта пояса Койпера 2014 MU69, также известного как Ultima Thule, которое было получено 1 января 2019 года всего за 7 минут до максимального сближения зонда с астероидом', '2019-02-03 20:15:15');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secondname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `address`, `name`, `secondname`, `skype`, `vk`, `fb`, `github`, `twitter`) VALUES
(1, 'ko4erov@mail.ru', '+79118121182', 'Россия, Санкт-Петербург', 'Михаил', 'Кочеров', 'live:ko4erovv', 'https://vk.com/nicehoney', 'https://www.facebook.com/kocherov', 'https://github.com/kocherov-michael', '');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `email`, `name`, `message`, `message_file_name_original`, `message_file`, `date_time`) VALUES
(9, 'index@mail.com', 'Джон До', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '476.jpg', '35098266.jpg', '2019-02-05 20:12:10'),
(10, 'info12@mail.com', 'Бэтмен', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '404.pdf', '15663452.pdf', '2019-02-05 20:12:53'),
(12, 'info2@mail.com', 'Александр', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. \r\n\r\nLorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'The first secret of design is noticing.pdf', '18764343.pdf', '2019-02-05 20:39:55'),
(13, 'didefapeje@sandcars.net', 'Michael777', 'Наряду с типами носителей в CSS3 включена поддержка различных технических параметров устройств, на основе которых требуется загружать те или иные стили. К примеру, можно определить смартфон с максимальным разрешением 640 пикселов и для него установить одни стилевые свойства, а для остальных устройств другие. Также можно выявить различные характеристики вроде наличия монохромного экрана, ориентации (портретная или альбомная) и др. Все характеристики легко комбинируются, поэтому допустимо задать стиль только для устройств в альбомной ориентации с заданным разрешением экрана.', NULL, NULL, '2019-02-05 20:40:53'),
(14, 'info12@mail.com', 'Валентин', '', NULL, NULL, '2019-02-05 20:59:21');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cat` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`, `cat`, `update_time`) VALUES
(19, 'Ученый рассказал о возможном ущербе от астероида Апофис в случае столкновения с', 'Ученый добавил, что на сегодняшний день у человечества нет средств изменить траекторию астероида, если возникнет опасность его столкновения с Землей. \"[Межконтинентальные баллистические] ракеты, которые есть, если смогут попасть в астероид вблизи Земли, практически не повлияют на его траекторию\", - отметил специалист.\r\n\r\nАстероид Апофис был обнаружен в 2004 году в обсерватории Китт-Пик (штат Аризона). Его назвали в честь древнеегипетского змея-разрушителя, который пытается уничтожить Солнце в течение его ночного перехода. Небесное тело движется со скоростью более 30 км/с, то подходя на относительно небольшое расстояние к Земле, то отдаляясь от нее. В следующий раз сближение ожидается в 2029 году (он может оказаться, по разным данным, в 37-38 тыс. км).\r\n\r\nРанее в Институте космических исследований (ИКИ) РАН предлагали \"стрелять\" малыми астероидами по опасным небесным телам. Для этих целей, как сообщал ТАСС ведущий научный сотрудник ИКИ Натан Эйсмонт, нужно отправлять космические аппараты к малым астероидам, чтобы изменить траекторию их движения. После этого объект попадет в гравитационное поле Земли, которое отправит его к опасному небесному телу.', 1, '2019-01-31 17:56:01', '743845279.jpg', '320-743845279.jpg', '7', '2019-02-02 17:14:29'),
(20, '&laquo;Hubble&raquo; случайно открыл галактику неподалеку от Млечного Пути', 'Наблюдая за шаровым скоплением NGC 6752 с помощью космического телескопа «Hubble», астрономы сделали неожиданное открытие: они обнаружили небольшую тусклую галактику, проживающую на расстоянии всего 30 миллионов световых лет от Земли. Статья, описывающая исследование, представлена в журнале Monthly Notices of the Royal Astronomical Society.\r\n\r\n«Основной целью нашей работы было определение возраста одного из шаровых скоплений Млечного Пути, удаленного от нас на 13,5 тысяч световых лет, для чего мы изучали популяцию белых карликов в нем. Однако, просматривая данные, мы неожиданно заметили компактную группу звезд. После тщательного анализа их яркости и температуры стало ясно, что эти светила не принадлежат скоплению NGC 6752, а находятся на несколько миллионов световых лет дальше», – пишут авторы исследования.', 1, '2019-01-31 20:48:10', '4615375.jpg', '320-4615375.jpg', '8', NULL),
(21, 'Магнитное поле Земли было на грани исчезновения, заявляют ученые', 'Магнитное поле Земли имело самую низкую напряженность около 565 миллионов лет назад, когда его мощное динамо было на грани исчезновения, говорится в исследовании, представленном в журнале Nature Geoscience. Поскольку формирование твердого внутреннего ядра Земли усилило бы геомагнитное поле, это свидетельствует о том, что к тому времени внутреннее ядро ​​еще не затвердело.\r\n\r\nОценка периода формирования твердого ядра варьируется в широких пределах – от 2,5 миллиардов до 500 миллионов лет назад. Однако эти временные параметры могут быть уточнены путем анализа каменистых пород, которые хранят следы древней природы геомагнитного поля. Затвердевание жидкого железа на неокрепшей границе внутреннего ядра стало бы важным источником энергии для геодинамо – конвекционных потоков жидкого металла во внешнем ядре, которые питают магнитное поле. На основе компьютерного моделирования ученые определили, что такой прирост энергии будет исторически «задокументирован» в породе по следам напряженности геомагнитного поля.', 1, '2019-01-31 20:49:09', '1203773656.jpg', '320-1203773656.jpg', '9', NULL),
(22, 'Получен самый детальный на сегодня снимок Ultima Thule', '<p>Космический аппарат NASA &laquo;New Horizons&raquo; передал на Землю самое четкое на сегодня изображение объекта пояса Койпера 2014 MU69, также известного как Ultima Thule, которое было получено 1 января 2019 года всего за 7 минут до максимального сближения зонда с астероидом. &laquo;Полученные данные не только помогают нам раскрывать геологические особенности на обеих частях, составляющих Ultima Thule, но и преподносят новые сюрпризы. Однако уже в следующем месяце у нас появятся цветные и более четкие изображения, которые помогут разгадать многие тайны далекого объекта&raquo;, &ndash; сказал Алан Штерн, главный исследователь миссии из Юго-западного исследовательского института (США).</p>\r\n', 1, '2019-01-31 20:50:27', '939000551.jpg', '320-939000551.jpg', '7', '2019-02-03 01:08:38'),
(23, 'Жизненно важные химические элементы имеют инопланетное происхождение', 'Согласно исследованию, проведенному петрологами Университета Райса (США), Земля получила основную часть своего углерода, азота и других жизненно важных летучих элементов в результате столкновения с планетой, которое создало Луну более 4,4 миллиарда лет назад. Выводы ученых представлены в журнале Science Advances.\r\n\r\n«Наш сценарий впервые согласует сроки и способ доставки летучих элементов на Землю со всеми геохимическими данными», – сообщает соавтор исследования Радждип Дасгупта.\r\n\r\nДоказательства, направленные на проверку давней теории о том, что летучие вещества Земли появились в результате столкновения с протопланетой, содержащей богатое серой ядро, пришли из комбинации высокотемпературных экспериментов под высоким давлением в лаборатории, специализирующейся на изучении геохимических реакций, происходящих глубоко в недрах нашей планеты. Содержание серы в ядре объекта-донора имеет значение из-за удивительного множества экспериментальных данных об углероде, азоте и сере, присутствующих во всех слоях Земли, кроме ядра.', 1, '2019-01-31 20:51:18', NULL, NULL, '8', NULL);

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
(1, 'info@mail.com', '$2y$10$heTmw28FwdXumAi3euwfe.i.1jGJCJvSLhPIy5rhkZwJKFYAa23yG', 'admin', 'Михаил', 'Кочеров', 'Россия', 'Санкт-Петербург', '51325073.JPG', '48-51325073.JPG', '5Oe8sLaQT7fK6l4', 3),
(23, 'tesla@mail.com', '$2y$10$oZ.Fhm.u1dvVyAVyJlF83.fHDncF2SbDDgz6SxHuGk72hTX/UYqiK', 'user', 'Nicola', 'Tesla', 'Croatia', 'Smiljan', '30615844.png', '48-30615844.png', NULL, NULL),
(24, 'einstein@mail.com', '$2y$10$kjuVuMjPdvWbUQ3grq/RPeJIwayTF/cnOv0mOzh0dRe6T6xqYxS4u', 'user', 'Albert', 'Einstein', 'Germany', 'Ulm', '75354919.jpg', '48-75354919.jpg', NULL, NULL),
(25, 'lomonosov@mail.com', '$2y$10$qJ9f8NpeTe1wd6z1Ru3BGO62sIVX09iNWgmWYyX4VS0uSStRLg75.', 'user', 'Михайло', 'Ломоносов', 'Российская Империя', 'дер. Мешанинская', '64624023.jpg', '48-64624023.jpg', NULL, NULL),
(26, 'newton@mail.com', '$2y$10$tf6Tr9sdhdwpa9C6VN551.5kgfIfLYCQ1ZnSofJ7sGygXG98n29CW', 'user', 'Isaak', 'Newton', 'England', 'Lincolnshir', '57202758.jpg', '48-57202758.jpg', NULL, NULL),
(27, 'info234234@mail.com', '$2y$10$4i51Wl/VHw4ZPwkaQp/ig.xiP68MrxdbfHOYcgf.WyoncwGofBxYm', 'user', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL, NULL, NULL),
(28, 'info9@mail.com', '$2y$10$Cf5Clk0n3rnNtdev4uFHZOV9tqNA92ubwSg43gl.klILvcmHj.dnu', 'user', 'Кирилл', 'Толмацкий', '', '', '41549987.jpg', '48-41549987.jpg', NULL, NULL),
(29, 'info99@mail.com', '$2y$10$Qy9Rvx8e2PEin.vkxc/7CuaCTOs1FvgWZdvC4q7C0rHVwb1Tu62i.', 'user', NULL, '', '', '', NULL, NULL, NULL, NULL),
(30, 'info50@mail.com', '$2y$10$WlP7E4mVLC25b3zSxGvruuBvkHoeKBAxf85IOQl6Rg9BE0ibuSi4W', 'user', NULL, '', '', '', NULL, NULL, NULL, NULL),
(31, 'info90@mail.com', '$2y$10$leuoleQO4eJJgyCPH9eOY.ugKwcRIIm6Irwy0lPXjDCT0HIhwrN/S', 'user', 'Квентин', 'Тарантино', '', '', '91845397.jpg', '48-91845397.jpg', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
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
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
