-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 08 2019 г., 15:48
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
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Михаил Кочеров', '<p>&nbsp;</p>\r\n\r\n<p>Я веб разработчик из Казани. Мне 28 лет.</p>\r\n\r\n<p>Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты.</p>\r\n\r\n<p>Этот сайт я сделал в рамках обучения в школе онлайн обучения WebCademy. Чуть позже я освежу в нём свой контент. А пока посмотрите, как тут всё классно и красиво!</p>\r\n\r\n<h2><strong>Что я умею</strong></h2>\r\n\r\n<p>Меня привлекет Frontend разработка, это не только моя работа, но и хобби. Также знаком и могу решать не сложные задачи на Backend.</p>\r\n\r\n<p>Знаком и использую современный workflow, работаю с репозиториями git и сборкой проекта на gulp.</p>\r\n', '-231515981.JPG'),
(2, 'Александр Дианов', '<p>Я веб разработчик из Москвы.&nbsp;</p>\r\n\r\n<p>Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты.</p>\r\n\r\n<p>Этот сайт я сделал в рамках обучения в школе онлайн обучения WebCademy. Чуть позже я освежу в нём свой контент. А пока посмотрите, как тут всё классно и красиво!</p>\r\n\r\n<h2><strong>Что я умею</strong></h2>\r\n\r\n<p>Меня привлекет Frontend разработка, это не только моя работа, но и хобби. Также знаком и могу решать не сложные задачи на Backend.</p>\r\n\r\n<p>Знаком и использую современный workflow, работаю с репозиториями git и сборкой проекта на gulp.</p>\r\n', '1067028576.jpg');

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
(9, 'PHP'),
(11, 'Учебные проекты'),
(12, 'Новости IT'),
(13, 'Полезные статьи');

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
(9, 22, 29, 'Космический аппарат NASA &laquo;New Horizons&raquo; передал на Землю самое четкое на сегодня изображение объекта пояса Койпера 2014 MU69, также известного как Ultima Thule, которое было получено 1 января 2019 года всего за 7 минут до максимального сближения зонда с астероидом', '2019-02-03 20:15:15'),
(10, 22, 1, '123', '2019-02-06 19:01:08');

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
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `period`, `title`, `description`) VALUES
(2, 'Октябрь 2005 - настоящее время', 'Ювелир', '1. Монтировка простых ювелирных изделий из цветных металлов и серебра.\r\n\r\n2. Сверление отверстий с применением простейших приспособлений.\r\n\r\n3. Подготовка наборов к пайке, пайка, заправка в зоны пайки, гибка, правка, центровка, подгонка, отбеливание изделий, деталей и узлов к ним.\r\n\r\n4. Соединение звеньев в ушки.\r\n\r\n5. Заточка и заправка инструмента.\r\n\r\n6. Контактная (точечная) сварка изделий.'),
(3, 'Февраль 2003 - январь 2004', 'техник-технолог', 'Анализ и контроль качества сырья, материалов, готовой продукции, проведение необходимых технологических расчетов и оформление технической документации, выявление причины брака продукции, разработка мер по его предупреждению и ликвидации, осуществление контроля за соблюдением правил ТБ.');

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
(3, 'info@mail.com', 'Петя', 'В WHATSAPP ОКАЗАЛОСЬ ВОЗМОЖНЫМ ЧИТАТЬ УДАЛЕННЫЕ СООБЩЕНИЯ\r\nФункция резервного копирования в популярном мессенджере позволила восстановить доступ к удаленным сообщениям. Как сообщает РИА Новости, в WhatsApp найден сбой, который позволяет читать удаленные собеседником сообщения.\r\n\r\nОказалось, что это возможно благодаря функции резервного копирования. Для этого владелец телефона должен удалить программу и переустановить ее - после этого восстановится архив сообщений вместе с удаленными записями.\r\n\r\nЕсть и другой способ читать удаленные сообщения - с помощью экрана уведомлений. Несмотря на то что WhatsApp скрывает такие записи, они остаются доступны сторонним программам, которым пользователь мог открыть доступ к программе.', '43366.jpg', '903361439.jpg', '2019-01-31 00:18:13'),
(4, 'dasdias@yandex.ru', 'Ирина', 'В Соединенных Штатах адвокат Ларри Уильямс II подал в суд на корпорацию Apple. Поводом для этого стала уязвимость в работе программы&nbsp; FaceTime, которая позволяла подслушивать за пользователями до того, как они ответят или сбросят звонок.\r\n\r\nПо словам адвоката, он лично испытал на себе все &laquo;прелести&raquo; сервиса от купертиновцев, когда неизвестный услышал показания его клиента, которые он давал под присягой. Теперь юрист обвиняет Apple в халатности и нарушении закона, а также требует возместить ущерб, сумма которого не раскрывается, пишет издание News.ru, ссылаясь на Bloomberg.\r\n\r\nСтоит сказать, что изъян в работе FaceTime был обнаружен в работе девайсов, работающих на ОС iOS версии 12.1 и старше во время групповых звонков. После множества обращений пользователей компания Apple признала наличие бага и пообещала в скором времени его исправить....\r\n', NULL, NULL, '2019-01-31 01:00:53'),
(5, 'info@mail.com', 'Емельян', 'МОСКВА, 30 янв &mdash; РИА Новости. &quot;АвтоВАЗ&quot; начнет продажи Lada Vesta Sport 31 января по цене чуть более чем в миллион рублей.\r\nАвтомобиль с комплектацией Luxe получил систему стабилизации, климат- и круиз-контроль. Кроме того, у новой модели мультифункциональное рулевое колесо, есть обогрев передних сидений, датчики дождя и света, а также аудиосистема.\r\nКроме того, предлагается пакет Multimedia с камерой заднего вида, обогревом ветрового стекла и мультимедийной системой с навигатором. С такими опциями Lada Vesta Sport обойдется еще дороже &mdash; в 1,046 миллиона рублей.\r\nПродажи растут\r\nПо итогам прошлого года &quot;АвтоВАЗ&quot; отчитался о росте экспорта на 57 процентов по сравнению с 2017 годом. На зарубежный рынок концерн поставил 38,052 тысячи автомобилей.\r\n&quot;Автомобили Lada продаются в 34 странах, начало поставок в Турцию, Тунис, Чили, на Кубу. Lada Vesta - модель номер 1 (занимает 30% экспортных поставок)&quot;, - говорилось в презентации, которую представил в начале года исполнительный вице-президент &quot;АвтоВАЗа&quot; Ян Птачек.\r\nПриоритетными экспортными рынками остаются страны СНГ. Так, в Казахстане за минувший год было продано 13,192 тысячи машин Lada (+51% в годовом выражении).\r\n&quot;Сложно говорить о конкретных цифрах, так как волатильность на внешних рынках намного выше, чем в России. Мы также рассматриваем некоторые зарубежные рынки на предмет новых возможностей&quot;, - прокомментировал Птачек планы компании.\r\nС обновленным ценником\r\nС 1 января 2019 года автомобили Lada подорожали на 15-25 тысяч рублей. Наибольший рост, по данным агентства &quot;Автостат&quot;, показали универсалы Vesta SW и Vesta SW Cross, а также кросс-версия Lada XRAY.\r\nМашины семейства Granta и внедорожники Lada 4х4 в среднем стали стоить больше на 15 тысяч рублей.\r\nСемейство Lada Largus, хетчбек Lada XRAY и седаны Vesta, Vesta Cross и Vesta CNG прибавили в цене 20 тысяч рублей, причем это касается как пяти- и семиместных автомобилей, так и их кросс-версий.\r\n&quot;АвтоВАЗ&quot; повысил цены на весь модельный ряд в России из-за увеличения НДС на два процентных пункта. Теперь минимальная стоимость Lada Granta &mdash; 434 900 рублей; Vesta &mdash; 614 900 рублей; XRAY &mdash; 609 900 рублей; Largus &mdash; 560 900 рублей; 4х4 &mdash; от 518 900 рублей.', 'vaz.jpg', '-11217642.jpg', '2019-01-31 01:12:49'),
(9, 'index@mail.com', 'Джон До', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '476.jpg', '35098266.jpg', '2019-02-05 20:12:10'),
(10, 'info12@mail.com', 'Бэтмен', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '404.pdf', '15663452.pdf', '2019-02-05 20:12:53'),
(12, 'info2@mail.com', 'Александр', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. \r\n\r\nLorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'The first secret of design is noticing.pdf', '18764343.pdf', '2019-02-05 20:39:55'),
(13, 'didefapeje@sandcars.net', 'Michael777', 'Наряду с типами носителей в CSS3 включена поддержка различных технических параметров устройств, на основе которых требуется загружать те или иные стили. К примеру, можно определить смартфон с максимальным разрешением 640 пикселов и для него установить одни стилевые свойства, а для остальных устройств другие. Также можно выявить различные характеристики вроде наличия монохромного экрана, ориентации (портретная или альбомная) и др. Все характеристики легко комбинируются, поэтому допустимо задать стиль только для устройств в альбомной ориентации с заданным разрешением экрана.', NULL, NULL, '2019-02-05 20:40:53'),
(14, 'info12@mail.com', 'Валентин', '', NULL, NULL, '2019-02-05 20:59:21');

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) UNSIGNED NOT NULL,
  `work_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technology` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projectlink` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `portfolio`
--

INSERT INTO `portfolio` (`id`, `work_name`, `description`, `result`, `technology`, `projectlink`, `github_link`, `author_id`, `date_time`, `post_img`, `post_img_small`, `cat`, `date_update`) VALUES
(7, 'Сайт строительной копмании &quot;СпецСтройПроект&quot;', 'В работе использованы препроцессоры pug и less. Сделаны все эффекты и интерактив.  Интерактив написан на JQuery. Весь проект протестирован на совместимость, с другими браузерами. Для старых браузеров использован подход Graceful Degradation.', 'Проект сделан в срок. Заказчик доволен. Сайт запущен, работает и уже радует посетителей и владельцев бизнеса. Выполнена адаптация под мобильные устройства.', 'HTML5, CSS3.\r\nJavaScript, jQuery.\r\nLESS, PUG, Gulp, npm, bower.', 'www.s-sproekt.ru', '', 6, '2019-02-04 17:01:50', '325604583.jpg', '360-325604583.jpg', 5, '2019-02-05 21:19:22'),
(8, 'Сайт Портфолио', 'Сайт портфолио, сверстан на курсах &quot;Профессия HTML верстальщик&quot; Сделаны все эффекты и интерактив. В работе использованы препроцессоры less. в процессе верстки сайта использовался BEM naming. Интерактив написан на JQuery. Весь проект протестирован на совместимость в разных браузерах. Выполнена адаптация под мобильные устройства', 'Проект сделан в срок. Получен выпускной диплом.', 'HTML5, CSS3.\r\njQuery.\r\nLESS, Gulp, npm.', 'www.info.hobbyflyrc.ru/portfolio/', '', 6, NULL, '-15665118.jpg', '360--15665118.jpg', 9, '2019-02-05 22:20:57'),
(12, 'Сайт Piroll', 'Сайт Piroll. Сверстан в целях поддержания навыков. В верстке использован HTML5, CSS3, препроцессор LESS, фреймворк Bootstrap, JQuery. Выполнена анимация с помощью библиотеки Animate.css', 'Работа добавлена в коллекцию портфолио.', 'HTML5, CSS3. Препроцессор LESS. Фреймворк Bootstrap. Библиотека JQuery', 'www.info.hobbyflyrc.ru/piroll/', '', 6, NULL, '-211176188.jpg', '360--211176188.jpg', 9, '2019-02-05 23:09:54'),
(13, 'Landing', 'Сайт верстался в целях повышения квалификации. На сайте использовался плагин Owl Carousel 2 для создания фото карусели и карусели с информационными блоками.  Сайт сверстан на сетке Bootstrap. ', 'Добавлен в личную коллекцию портфолио. ', 'HTML5, CSS3.\r\nBootstrap.\r\nПлагин Owl Carousel 2.', 'www.info.hobbyflyrc.ru/tourney/index.html', '', 6, NULL, '288660878.jpg', '360-288660878.jpg', 9, '2019-02-05 23:10:37'),
(14, 'Gaxcoin', 'Пример страницы входа на сайт с красивой анимацией. Для анимации использовалась библиотека particles.js https://github.com/VincentGarreau/particles.js/', 'Добавлено в коллекцию портфолио.', 'HTML5, CSS3.\r\nБиблиотека particles js .', 'www.info.hobbyflyrc.ru/form/', '', 6, NULL, '-504116644.jpg', '360--504116644.jpg', 9, '2019-02-05 23:39:27'),
(15, 'Учебный сайт', 'Сайт сверстан при прохождении интенсива &quot;Марафон: 11 услуг&quot; от школы онлайн обучения - WebCademy\r\n На сайте использовалась анимация. Добавлена Яндекс Метрика. Применены виджеты Вконтакте. Комментарии от Дискус. Установлена HTML админка Textolite, позволяющая изменять контент прям на сайте. Сделана форма обратной связи с отправкой сообщения на email. Установлена проверка от спама reCAPTCHA.\r\n', 'Сайт добавлен к коллекцию портфолио.', 'Библиотека Animate_css.\r\nБиблиотека wow_js.\r\nсчетчик Яндекс Метрики.\r\nвиджет комментариев Вконтакте.\r\nвиджет сообщений Вконтакте. \r\nкомментарии от Дискус.\r\nHTML админка Textolite.\r\nПроверка от спама reCAPTCHA.', 'www.info.hobbyflyrc.ru/marafon/', '', 6, NULL, '534339483.jpg', '360-534339483.jpg', 9, '2019-02-06 00:06:18'),
(16, 'Учебный проект Букинг', 'Учебный проект Букинг,  Сайт выполнен на интенсиве от школы WebCademy. ', 'Добавлен в коллекцию портфолио', 'HTML5, CSS3.\r\nСетка Bootstrap.', 'www.info.hobbyflyrc.ru/buking', '', 6, NULL, '-169725706.jpg', '360--169725706.jpg', 9, '2019-02-06 00:21:04');

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
(24, 'Развёртывание Office 2019 Click-to-Run с помощью SCCM', '<p>В этой статье мы рассмотрим особенности развёртывания новых дистрибутивов Office 2019 Click-to-Run с помощью Configuration Manager Current Branch (1806). Функционал развёртывания Click-to-Run дистрибутивов Office 365 появился в SCCM 1702, затем был значительно улучшен в SCCM 1806 и это, пожалуй, самый простой способ развёртывания Office 365 или Office 2019.<br />\r\nOffice 2019 теперь поставляется только в виде дистрибутивов Click-to-Run. Click-to-Run использует встроенную технологию App-V для запуска Office в изолированной среде, а сами приложения распространяются через CDN.</p>\r\n', 1, '2019-02-08 15:22:09', '536118474.png', '320-536118474.png', '12', '2019-02-08 15:22:37'),
(25, 'Учим CSS Grid за 5 минут', '<p>Grid макеты имеют основополагающее значение для дизайна веб-сайтов, а модуль CSS Grid &mdash; это самый мощный и простой инструмент для его создания.</p>\r\n\r\n<p>В этом году модуль также получил нативную поддержку&nbsp;<a href=\"https://vk.com/away.php?to=https%3A%2F%2Fcaniuse.com%2F%23feat%3Dcss-grid&amp;cc_key=\" target=\"_blank\" title=\"https://caniuse.com/#feat=css-grid\">основных браузеров</a>(Safari, Chrome, Firefox), поэтому я считаю, что всем фронтенд разработчикам придется изучать эту технологию в недалеком будущем.</p>\r\n\r\n<h3>Ваш первый CSS Grid макет</h3>\r\n\r\n<p>Двумя основными компонентами CSS Grid являются обертка(Родитель) и элементы (Дети). Обертка &mdash; это фактически сетка, а элементы &mdash; это содержимое внутри сетки.</p>\r\n\r\n<p>Вот разметка для обертки с шестью элементами в ней:</p>\r\n\r\n<pre>\r\n&lt;div class=&quot;wrapper&quot;&gt;\r\n  &lt;div&gt;1&lt;/div&gt;\r\n  &lt;div&gt;2&lt;/div&gt;\r\n  &lt;div&gt;3&lt;/div&gt;\r\n  &lt;div&gt;4&lt;/div&gt;\r\n  &lt;div&gt;5&lt;/div&gt;\r\n  &lt;div&gt;6&lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n\r\n<p>Чтобы превратить нашу обертку div в сетку, мы просто дадим ей отображение grid:</p>\r\n\r\n<pre>\r\n.wrapper {\r\n    display: grid;\r\n}</pre>\r\n\r\n<p>Но это пока ничего не делает, поскольку мы не определили, как мы хотим, чтобы наша сетка выглядела. Сейчас это просто складывает 6 div друг на друга.</p>\r\n', 1, '2019-02-08 15:30:43', '802848468.jpg', '320-802848468.jpg', '13', NULL),
(26, '7 ресурсов для практики английского языка', '<p>Speaky<br />\r\nЭто простая соцсеть для людей, изучающих иностранные языки. Есть только текстовый чат (но кто вам запрещает обменяться контактами и поговорить в скайпе, да?). В чате имеется удобная функция исправления ошибок собеседника.</p>\r\n\r\n<p>&lt;Tandem<br />\r\nМобильное приложение, которое по своим возможностям очень похоже на предыдущий ресурс. Так же можно поправлять собеседника. Главное отличие - возможность отправлять аудиосообщения.</p>\r\n\r\n<p>&lt;HelloTalk<br />\r\nСнова мобильное приложение и снова похоже на предыдущие. Есть чат, возможность исправления реплик собеседника, картинки и аудиосообщения.</p>\r\n\r\n<p>&lt;Italki<br />\r\nСайт, на котором можно подобрать себе репетитора по многим языкам. Чаще всего репетитор является носителем, поэтому сможет научить только хорошему :)</p>\r\n\r\n<p>&lt;Interpals<br />\r\nЯзыковая социальная сеть, которая появилась аж девятнадцать лет назад и до сих пор успешно функционирует. На ресурсе зарегистрировано очень много пользователей, поэтому отыскать для себя подходящего собеседника будет просто.</p>\r\n\r\n<p>&lt;Lang-8<br />\r\nЭто лучшее место для практики письменного английского. Вам нужно будет написать эссе, сочинение, рассказ - что угодно - на языке, который изучаете, опубликовать его, а носители языка укажут на ошибки.</p>\r\n\r\n<p>&lt;HelloLingo<br />\r\nещё один простой текстовый чат. Понравится тем, кто не хочет заводить знакомств с иностранцами, а желает только попрактиковать язык.</p>\r\n', 1, '2019-02-08 15:32:19', '17424107.jpg', '320-17424107.jpg', '13', NULL),
(27, 'Как попробовать себя в вёрстке, если нет ни времени, ни денег', '<h2>Как учиться, если нет времени</h2>\r\n\r\n<p>Приготовьтесь, сейчас будет очевиднейший совет, к которому мы приложим действенные инструменты. Итак, чтобы учиться, если у вас нет времени - начните планировать.</p>\r\n\r\n<p>В действительности у нас есть масса времени, которую мы тратим на бесполезные вещи: часовые залипания в соцсетях, сериальчики (хоть они и прикольные, да), встречи, от которых можно было бы отказаться.</p>\r\n\r\n<p>Но одними рассуждениями мы ничего не исправим, давайте переходить к практическим советам.</p>\r\n\r\n<h2>ЯЯ готов(а), что делать?</h2>\r\n\r\n<h3>GGTD</h3>\r\n\r\n<p>Для управления своим временем мы будем использовать методику GTD, которая включает в себя три основных привычки, которые человек должен в себе сформировать:</p>\r\n\r\n<ul>\r\n	<li>Записывать все свои дела;</li>\r\n	<li>Принимать быстрое решение при выборе следующего дела;</li>\r\n	<li>Выполнять то, что уже записано.</li>\r\n</ul>\r\n\r\n<p>Выписывать свои дела - это очень важно. Излишняя информация и постоянное удержание в памяти списка дел приводят к утомлению и стрессу. Освободите голову - оставьте всё на бумаге или в компьютере. Так вы разгрузите свою голову и сможете избежать случаев под названием &quot;забыл&quot;, &quot;ааа, точно!&quot; и подобных.</p>\r\n\r\n<p>Чтобы освободить голову от лишней информации, выпишите на листок все планы, мысли, идеи, желания - всё, что не даёт покоя. Сделали? Супер! Уже освободили немного места и энергии для будущих дел.</p>\r\n\r\n<p>Следующий пункт вышеуказанного списка говорит о том, что вам нужно прописать следующий шаг для каждого, а затем предпринять конкретное действие.. Сядьте, подумайте &quot;А что делать дальше?&quot;, найдите ответ и сделайте. Это может относиться как к глобальным делам, так и задачам попроще. Например, вам давно не даёт покоя мысль о ремонте в ванной - начните с подбора подходящего дизайна интерьера.</p>\r\n\r\n<p>И последний шаг - &quot;выполнять то, что уже записано&quot;. Если до этого всё было сделано правильно, то здесь остаётся только одно - взять и сделать: выбрать дизайн, посмотреть урок, купить билеты.</p>\r\n\r\n<p>Эта методика позволяет избавить себя от необходимости всё время держать в голове список дел. Благодаря ей же составляется &quot;чистый план действий&quot;, в котором ясен каждый последующий шаг. Никаких ненужных терзаний и раздумий - одни действия.</p>\r\n\r\n<h3>PPomodoro</h3>\r\n\r\n<p>Мы уже писали об этой технике, позволяющей эффективно работать над одной задачей и эффективно отдыхать. Подробнее можно прочесть&nbsp;<a href=\"https://vk.com/page-123083697_53255877\" title=\"https://vk.com/page-123083697_53255877\">вот тут</a>.&nbsp;<br />\r\nЕсли говорить коротко, то интенсивная работа над задачей длится 25 минут, после чего делается перерыв. И так несколько подходов, в конце каждого из которых нужно разминаться и делать гимнастику для глаз.&nbsp;<br />\r\nТот же Pomodoro, но с интерактивом &mdash; это приложение для смартфонов и планшетов&nbsp;<a href=\"https://vk.com/away.php?to=https://play.google.com/store/apps/details?id=cc.forestapp\" title=\"https://vk.com/away.php?to=https://play.google.com/store/apps/details?id=cc.forestapp\">Forest</a>. В нём можно уже самостоятельно выставлять таймер - хоть на 10 минут, хоть на час. За каждый отработанный промежуток времени на вашем игровом поле вырастает маленькое деревце &mdash; и так до большого леса.</p>\r\n\r\n<h2>ИИтого</h2>\r\n\r\n<p>Сочетание этих техник позволит освободить время для занятий той же вёрсткой. С одной стороны вы избавите себя от необходимости держать всё в голове и ускорите процесс решения текущих проблем, с другой - будете работать эффективнее.</p>\r\n\r\n<h3>PP.S.</h3>\r\n\r\n<p>Если вам интересно, как учиться, не имея денег, то можете прочесть&nbsp;<a href=\"https://vk.com/glo_academy?w=wall-123083697_33446\" title=\"https://vk.com/glo_academy?w=wall-123083697_33446\">наш прошлый пост</a>, в котором есть несколько больших площадок для бесплатного обучения практически чему угодно.</p>\r\n', 1, '2019-02-08 15:34:49', '1016683142.jpg', '320-1016683142.jpg', '13', NULL),
(28, 'Странности CSS, о которых полезно знать', '<p>Вертикальные поля<br />\r\nЧто станет с элементом, если назначить ему свойство padding-top: 50%? Интуитивно понятно, что подобное свойство устанавливает размер поля от верхнего края содержимого элемента, размер которого составляет 50%&hellip; От чего берутся эти 50%? Собственно говоря, в определённый момент интуиция при разборе особенностей этого свойства оказывается бесполезной. Дело в том, что эти вот 50% берутся от ширины родительского элемента того элемента, которому назначают верхнее поле.</p>\r\n\r\n<p>Вот пример, подготовленный средствами CodePen. Такие примеры вы найдёте и во многих других разделах этого материала.</p>\r\n\r\n<p>Вышесказанное справедливо и для нижнего поля, задаваемого свойством padding-bottom. Знание этой особенности, в частности, позволяет создавать отзывчивые элементы, сохраняющие соотношение сторон:</p>\r\n\r\n<p>.square {<br />\r\n&nbsp; width: 100%;<br />\r\n&nbsp; height: 0;<br />\r\n&nbsp; padding-bottom: 100%;<br />\r\n}<br />\r\nОО непостоянном схлопывании отступов<br />\r\nРасстояние между следующими элементами будет 20px, а не 40px:</p>\r\n\r\n<p>&lt;div style=&quot;margin-bottom:20px&quot;&gt;foo&lt;/div&gt;<br />\r\n&lt;div style=&quot;margin-top:20px&quot;&gt;foo&lt;/div&gt;<br />\r\n&nbsp;</p>\r\n\r\n<p>Однако так бывает не всегда. Отступы не схлопываются при работе со следующими элементами:</p>\r\n\r\n<p>Плавающие элементы.<br />\r\nАбсолютно позиционированные элементы.<br />\r\nСтрочно-блочные (inline-block) элементы.<br />\r\nЭлементы с параметром overflow, установленным в любое значение кроме &nbsp;visible (они не схлопывают отступы со своими элементами-потомками).<br />\r\nЭлементы, к которым применено правило clear (их верхние отступы не схлопываются с нижними отступами их родительских блоков).<br />\r\nКорневой элемент дерева документа.<br />\r\nУУровень прозрачности и порядок наложения элементов<br />\r\nПредположим, что имеются три элемента &lt;div&gt;, каждый из них позиционирован абсолютно. Они содержат другие элементы, которым назначено свойство z-index со значениями от 1 до 3. Каждый следующий такой элемент выводится поверх предыдущего. Если теперь назначить z-index: 10самому нижнему элементу, он будет выведен поверх двух других, порядок расположения которых не изменится. Пока всё выглядит так, как и ожидается. Если теперь назначить первому элементу &lt;div&gt;, тому, который теперь находится выше других, свойство opacity: 0.99, то он окажется под двумя другими.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2019-02-08 15:36:30', '-429992035.png', '320--429992035.png', '13', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `html` int(11) UNSIGNED DEFAULT NULL,
  `css` int(11) UNSIGNED DEFAULT NULL,
  `js` int(11) UNSIGNED DEFAULT NULL,
  `jquery` int(11) UNSIGNED DEFAULT NULL,
  `php` int(11) UNSIGNED DEFAULT NULL,
  `mysql` int(11) UNSIGNED DEFAULT NULL,
  `git` int(11) UNSIGNED DEFAULT NULL,
  `gulp` int(11) UNSIGNED DEFAULT NULL,
  `npm` int(11) UNSIGNED DEFAULT NULL,
  `yarn` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jquery`, `php`, `mysql`, `git`, `gulp`, `npm`, `yarn`) VALUES
(1, 100, 90, 80, 70, 60, 50, 40, 30, 20, '10');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
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
(2, 'info@example.com', '$2y$10$mdOaOfClsRMRC1XZxMIzbOmFsgqquvvXg2tSzjwLH7OagTaTwYhcy', 'admin', 'Емельян', 'Казаков', 'Россия', 'Рязань', '1148506347.jpg', '48-1148506347.jpg', NULL, NULL),
(4, 'info1@example.com', '$2y$10$T/rdAqszTqDmndXPSAYHj.0z4HHCN7zx6sD9zdZlrsUjDPL93nCuC', 'user', 'Вася', 'Пупов', 'Россия', 'Казань', '111532712.jpg', '48-111532712.jpg', NULL, NULL),
(5, 'info4@example.com', '$2y$10$ef9PCl2Se6OuxBPxu.N8aOzVFgXo8HComXgyoLsxBBjGbXWYXAiby', 'user', NULL, '', '', '', NULL, NULL, '7E1W0tpoiYaDeCU', 0),
(6, 'dasdias@yandex.ru', '$2y$10$VbaI6ziln/HHOLRUVcOg2esJzPfpC1plTKGznAvOYAvF/IHza.SUi', 'admin', 'Alex', 'Fix', 'Россия', 'Москва', '-48220647.jpg', '48--48220647.jpg', NULL, NULL),
(7, 'info@yandex.ru', '$2y$10$GmkPfUwdFW2Hnr.tzKomSeg2QFCdJc77NRysSwjlGWBhD6QongjRS', 'user', 'Петя', 'Жмуркин', 'Россия', 'Новгород', '-124242846.jpg', '48--124242846.jpg', NULL, NULL),
(8, 'info@example.ru', '$2y$10$dbqd8TAQIL1NzD9/1nOwROVdesRMsrdqpJL0Ymnn0TlXLXDyAXOQi', 'user', 'Коля', 'Степашкин', '', '', '515719382.jpg', '48-515719382.jpg', NULL, NULL),
(9, 'info@mail.com', '$2y$10$tJ1RMIx4LZBSTGN2WJHHYe4tYJz7BAvu0WsbTMKkOHlAINOJDFR7S', 'user', 'Василий', 'Пупыркин', '', '', NULL, NULL, NULL, NULL),
(10, 'mail@mail.com', '$2y$10$.UxVLNw6thtghTfQa/Zv1ubNZn8t5wYMJ5fJxY2lSkcll/DobAPMa', 'user', NULL, '', '', '', NULL, NULL, NULL, NULL),
(23, 'tesla@mail.com', '$2y$10$oZ.Fhm.u1dvVyAVyJlF83.fHDncF2SbDDgz6SxHuGk72hTX/UYqiK', 'user', 'Nicola', 'Tesla', 'Croatia', 'Smiljan', '30615844.png', '48-30615844.png', NULL, NULL),
(24, 'einstein@mail.com', '$2y$10$kjuVuMjPdvWbUQ3grq/RPeJIwayTF/cnOv0mOzh0dRe6T6xqYxS4u', 'user', 'Albert', 'Einstein', 'Germany', 'Ulm', '75354919.jpg', '48-75354919.jpg', NULL, NULL),
(25, 'lomonosov@mail.com', '$2y$10$qJ9f8NpeTe1wd6z1Ru3BGO62sIVX09iNWgmWYyX4VS0uSStRLg75.', 'user', 'Михайло', 'Ломоносов', 'Российская Империя', 'дер. Мешанинская', '64624023.jpg', '48-64624023.jpg', NULL, NULL),
(26, 'newton@mail.com', '$2y$10$tf6Tr9sdhdwpa9C6VN551.5kgfIfLYCQ1ZnSofJ7sGygXG98n29CW', 'user', 'Isaak', 'Newton', 'England', 'Lincolnshir', '57202758.jpg', '48-57202758.jpg', NULL, NULL),
(27, 'info234234@mail.com', '$2y$10$4i51Wl/VHw4ZPwkaQp/ig.xiP68MrxdbfHOYcgf.WyoncwGofBxYm', 'user', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL, NULL, NULL),
(28, 'info9@mail.com', '$2y$10$Cf5Clk0n3rnNtdev4uFHZOV9tqNA92ubwSg43gl.klILvcmHj.dnu', 'user', 'Кирилл', 'Толмацкий', '', '', '41549987.jpg', '48-41549987.jpg', NULL, NULL),
(29, 'info99@mail.com', '$2y$10$Qy9Rvx8e2PEin.vkxc/7CuaCTOs1FvgWZdvC4q7C0rHVwb1Tu62i.', 'user', NULL, '', '', '', NULL, NULL, NULL, NULL),
(30, 'info50@mail.com', '$2y$10$WlP7E4mVLC25b3zSxGvruuBvkHoeKBAxf85IOQl6Rg9BE0ibuSi4W', 'user', NULL, '', '', '', NULL, NULL, NULL, NULL),
(31, 'info90@mail.com', '$2y$10$leuoleQO4eJJgyCPH9eOY.ugKwcRIIm6Irwy0lPXjDCT0HIhwrN/S', 'user', 'Квентин', 'Тарантино', '', '', '91845397.jpg', '48-91845397.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL,
  `text` text,
  `result` text,
  `technologies` text,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) DEFAULT NULL,
  `post_img_small` varchar(191) DEFAULT NULL,
  `project_link` varchar(191) DEFAULT NULL,
  `github_link` varchar(191) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `title`, `cat`, `text`, `result`, `technologies`, `author_id`, `date_time`, `post_img`, `post_img_small`, `project_link`, `github_link`, `update_time`) VALUES
(7, 'Проект Органика', 11, 'Верстка учебного макета для освоения разметки и базовых навыков вёрстки.', '', 'HTML<br>\r\nCSS', 1, '2019-02-08 15:00:00', '-96253393.jpg', '320--96253393.jpg', '', '', '2019-02-08 15:26:10'),
(8, 'Макет Appolo', 11, 'Учебный макет, построенный на сетке Bootstrap.\r\nМобильная вёрстка под планшеты и смартфоны.', '', 'HTML<br>\r\nCSS<br>\r\nBootstrap<br>\r\njQuery<br>\r\nwow-js<br>', 1, '2019-02-08 15:12:41', '-514138291.jpg', '320--514138291.jpg', '', '', '2019-02-08 15:26:43'),
(9, 'Сайт портфолио', 11, 'Персональный сайт портфолио с резюме и работами по вёрстке.', '', 'HTML\r\nCSS\r\nJS\r\nBootstrap\r\nfancybox\r\njquery\r\nwow-js', 1, '2019-02-08 15:18:09', '620146131.jpg', '320-620146131.jpg', '', '', '2019-02-08 15:19:04'),
(10, 'Страница инстаграмма', 11, 'Страница сделана на интенсиве Webcademy.ru с целью освоения навыков работы с git, gulp и JS.', '', 'HTML<br>\r\nCSS<br>\r\nGit<br>\r\nGulp<br>\r\nJS<br>\r\njQuery<br>', 1, '2019-02-08 15:43:42', '797214998.jpg', '320-797214998.jpg', '', '', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_portfolio_author` (`author_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_works_author` (`author_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
