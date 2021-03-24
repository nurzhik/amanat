-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 23 2021 г., 15:17
-- Версия сервера: 5.7.23
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `amanat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `advantages`
--

CREATE TABLE `advantages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `body` text,
  `type_id` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `advantages`
--

INSERT INTO `advantages` (`id`, `title`, `img`, `body`, `type_id`, `created`, `modified`) VALUES
(1, '  1 шаг ', '1fcfab4d05a5be2328df1f4c31bc767f.png', 'Заполнить форму', 3, '2021-02-05 11:20:43', '2021-02-05 11:22:30'),
(2, ' Высококвалифицированные врачи', '3d897aef116b7e08a341b69d03c3c79a.png', 'Обеспечение нашим клиентам оказания высокоспециализированной медицинской помощи за счет профессионализма врачей', 2, '2021-02-05 11:34:59', '2021-02-05 11:35:23'),
(3, 'Опишите проблему', '2bf503fcaedf0b9e143975c7f897fcb3.png', 'Расскажите что вас беспокоит, опишите свои симптомы\r\n', 1, '2021-02-05 11:41:27', '2021-02-05 11:41:27');

-- --------------------------------------------------------

--
-- Структура таблицы `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `albums`
--

INSERT INTO `albums` (`id`, `title`, `img`, `date`, `created`, `modified`) VALUES
(1, 'Альбом amanat drive 1', '12ddd77a23a8ef878bc71f3b89723f26.png', '2021-03-18', '2021-03-10 15:15:17', '2021-03-11 09:41:32');

-- --------------------------------------------------------

--
-- Структура таблицы `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `address_ru` varchar(255) DEFAULT NULL,
  `address_kz` varchar(255) DEFAULT NULL,
  `address_en` varchar(255) DEFAULT NULL,
  `map_code` varchar(255) DEFAULT NULL,
  `managers` longtext,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `branches`
--

INSERT INTO `branches` (`id`, `address_ru`, `address_kz`, `address_en`, `map_code`, `managers`, `city_id`) VALUES
(1, '    Нурсултан', '    Нурсултан', '    Нурсултан', NULL, '{\"manager\":{\"name\":\"\\u041c\\u0430\\u04402\",\"phone\":\"8777\",\"email\":\"test@mail.ru\"},\"manager1\":{\"name\":\"\\u0421\\u044b\\u043c\\u0431\\u0430\\u0442\",\"phone\":\"87752\",\"email\":\"test2@mail.ru\"},\"manager2\":{\"name\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\\u0439 3\",\"phone\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\\u0439 3\",\"email\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\\u0439 3\"},\"manager3\":{\"name\":\"\\u0439\\u0446\\u0443\\u0439\",\"phone\":\"\\u0446\\u0443\\u0439\\u0446\",\"email\":\"\\u0439\\u0446\\u0443\"},\"manager4\":{\"name\":\"\\u0439\\u0446\\u0443\\u0439\\u0446\\u0443\",\"phone\":\"\\u0439\\u0446\\u0443\",\"email\":\"\\u0439\\u0446\\u0443\\u0439\"}}', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `entrance` int(11) DEFAULT NULL,
  `initial` int(11) DEFAULT NULL,
  `remainder` int(11) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `order_num` int(11) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cars`
--

INSERT INTO `cars` (`id`, `date`, `entrance`, `initial`, `remainder`, `year`, `price`, `user_id`, `title`, `status`, `order_num`, `created`, `modified`) VALUES
(1, '2021-03-09', 12, 12, 12, '12', '12', 41, '12', '12', 1, '2021-03-10', '2021-03-10'),
(2, '2021-03-08', 12, 12, 12, '12', '12', 411, '12', '12', 2, '2021-03-08', '2021-03-10'),
(3, '2021-03-09', 12, 12, 12, '12', '122', 41, '12', '12', 3, '2021-03-09', '2021-03-16'),
(4, '2021-03-10', 1500000, 1500000, 1500000, '1212', '1212', 41, 'Toyota Camry 70', 'Новое', 4, '2021-03-10', '2021-03-10'),
(23, '2021-03-10', 12, 12, 12, '12', '12', 40, '12', '12', 5, '2021-02-09', '2021-03-10'),
(24, '2021-03-02', 12, 12, 12, '12', '12', 12, '12', '12', 6, '2021-02-08', '2021-03-10'),
(25, '2021-03-10', 12, 12, 12, '12', '12', 12, '12', '12', 7, '2021-03-16', '2021-03-24'),
(26, '2021-03-10', 12, 12, 12, '12', '12', 41, '12', '12', 8, '2021-03-09', '2021-03-19'),
(29, '2021-03-27', 12, 12, 12, '12', '12', 12, '12', '12', 9, '2021-03-13', '2021-03-17'),
(30, '2021-03-18', 12, 21, 12, '12', '12', 12, '12', '12', 10, '2021-03-20', '2021-03-26'),
(31, '2021-03-18', 12, 12, 12, '12', '12', 12, '112', '21', 11, '2021-03-05', '2021-03-06'),
(32, '2021-03-10', 21, 12121, 21, '21212', '21', 41, 'Toyota Camry 70', 'Новое', 12, '2021-03-16', '2021-03-16');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `title_kz` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title_ru`, `title_kz`, `created`, `modified`) VALUES
(1, 'Тестовый ', 'Тестовый кх', '2021-02-01 07:59:57', '2021-02-01 07:59:57'),
(2, 'Тестовый ', 'Тестовый кх', '2021-02-01 08:00:15', '2021-02-01 08:00:15'),
(8, 'Тестовый  312', 'Тестовый кх', '2021-02-01 08:07:49', '2021-02-01 08:12:21'),
(9, 'Тестовый  312', 'Тестовый кх', '2021-02-01 08:11:09', '2021-02-01 08:11:09'),
(10, 'Тестовый  3123', 'Тестовый кх', '2021-02-01 08:11:14', '2021-02-01 08:14:00');

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `title_kz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `title_en`, `title_ru`, `title_kz`) VALUES
(1, ' Nur Sultan#', 'Нурсултан', ' Нур Султан КЗ#'),
(2, NULL, 'Шымкент', NULL),
(3, NULL, 'Алматы', NULL),
(4, NULL, 'Тараз', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comps`
--

CREATE TABLE `comps` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `media` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comps`
--

INSERT INTO `comps` (`id`, `body`, `media`, `comments`, `created`, `modified`) VALUES
(13, 'Onter — сервис онлайн-консультаций с врачами. Сейчас мы рассматриваем новые клиники для подключения к нашей сети и, если вы управляете клиникой, готовой работать с телемедицинскими консультациями, заполните, пожалуйста, анкету - мы свяжемся с вами, если будем заинтересованы в сотрудничестве.\r\n\r\n \r\n\r\nЕсли вы - практикующий специалист вне клиники, то заполните, пожалуйста, анкету для участия в проекте. Свяжемся с вами, если нас заинтересует ваша кандидатура.', NULL, 'О сервисе текст', '2021-02-01 15:53:04', '2021-02-01 15:53:04'),
(14, '44Wjhelb-5I', NULL, 'О сервисе видео', '2021-02-01 15:53:30', '2021-02-01 15:53:30');

-- --------------------------------------------------------

--
-- Структура таблицы `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `body`, `created`, `modified`, `sort_order`) VALUES
(1, ' Кз \"әі', '\"әі', '2021-02-01 14:06:26', '2021-02-01 14:15:07', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `galleries`
--

INSERT INTO `galleries` (`id`, `album_id`, `img`, `video`) VALUES
(1, 1, '5dcaeee872e2e5e96418103f4d3b8a40.png', '#1212'),
(2, 1, '7bc2b0bba3295de0cb8a10ee8c59110d.png', ''),
(3, 1, '', '#');

-- --------------------------------------------------------

--
-- Структура таблицы `i18n`
--

CREATE TABLE `i18n` (
  `id` int(10) NOT NULL,
  `locale` varchar(6) NOT NULL,
  `model` varchar(255) NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) NOT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `i18n`
--

INSERT INTO `i18n` (`id`, `locale`, `model`, `foreign_key`, `field`, `content`) VALUES
(1, 'ru', 'News', 1, 'title', 'Начата работа по прокладке труб в столице'),
(2, 'ru', 'News', 1, 'body', '<p>Начата работа по прокладке труб в столице</p>\r\n'),
(3, 'ru', 'News', 1, 'keywords', 'asdasd'),
(4, 'ru', 'News', 1, 'description', 'asdasd'),
(5, 'ru', 'Recomendation', 1, 'title', '2017 Рекомендации ESC ПО ОИМ СПST англ язык'),
(6, 'ru', 'Leadership', 1, 'title', 'Нуралинов Омирбек Муздарович'),
(7, 'ru', 'Leadership', 1, 'category', 'Кардиолог высшей категории'),
(8, 'ru', 'Leadership', 2, 'title', 'Нуралинов Омирбек Муздарович'),
(9, 'ru', 'Leadership', 2, 'category', 'Кардиолог высшей категории'),
(10, 'ru', 'Leadership', 3, 'title', 'Нуралинов Омирбек Муздарович'),
(11, 'ru', 'Leadership', 3, 'category', 'Кардиолог высшей категории'),
(12, 'ru', 'Leadership', 4, 'title', 'Нуралинов Омирбек Муздарович2'),
(13, 'ru', 'Leadership', 4, 'category', 'Кардиолог высшей категории'),
(14, 'ru', 'Leadership', 5, 'title', 'Нуралинов Омирбек Муздарович5'),
(15, 'ru', 'Leadership', 5, 'category', 'Кардиолог высшей категории4'),
(16, 'ru', 'Comp', 1, 'body', '+7 (7172) 70-31-03'),
(17, 'ru', 'Comp', 2, 'body', 'Главная'),
(18, 'ru', 'Comp', 3, 'body', 'Главная'),
(19, 'ru', 'Comp', 4, 'body', 'Главная'),
(20, 'ru', 'Event', 1, 'title', 'V МЕЖДУНАРОДНАЯ ШКОЛА ПО КЛИНИЧЕСКОЙ ЭЛЕКТРОФИЗИОЛОГИИ И ИНТЕРВЕНЦИОННОЙ АРИТМОЛОГИИ'),
(21, 'ru', 'Event', 1, 'body', '<p>asdasd</p>\r\n'),
(22, 'ru', 'Event', 1, 'keywords', 'asd'),
(23, 'ru', 'Event', 1, 'info_events', 'asdasd'),
(24, 'ru', 'Event', 1, 'thesis_title', 'asdasd'),
(25, 'ru', 'Event', 1, 'thesis_body', '<p>dasdasd</p>\r\n'),
(26, 'ru', 'Event', 2, 'title', 'V МЕЖДУНАРОДНАЯ ШКОЛА ПО КЛИНИЧЕСКОЙ ЭЛЕКТРОФИЗИОЛОГИИ И ИНТЕРВЕНЦИОННОЙ АРИТМОЛОГИИ'),
(27, 'ru', 'Event', 2, 'body', '<p>asdasd</p>\r\n'),
(28, 'ru', 'Event', 2, 'keywords', 'asd'),
(29, 'ru', 'Event', 2, 'info_events', 'asdasd'),
(30, 'ru', 'Event', 2, 'thesis_title', 'asdasd'),
(31, 'ru', 'Event', 2, 'thesis_body', '<p>dasdasd</p>\r\n'),
(32, 'ru', 'Event', 3, 'title', 'V МЕЖДУНАРОДНАЯ ШКОЛА ПО КЛИНИЧЕСКОЙ ЭЛЕКТРОФИЗИОЛОГИИ И ИНТЕРВЕНЦИОННОЙ АРИТМОЛОГИИ'),
(33, 'ru', 'Event', 3, 'body', '<p>asdasd</p>\r\n'),
(34, 'ru', 'Event', 3, 'keywords', ''),
(35, 'ru', 'Event', 3, 'info_events', 'asd'),
(36, 'ru', 'Event', 3, 'thesis_title', 'dasd'),
(37, 'ru', 'Event', 3, 'thesis_body', '<p>asdasdasd</p>\r\n'),
(38, 'ru', 'Event', 4, 'title', 'V МЕЖДУНАРОДНАЯ ШКОЛА ПО КЛИНИЧЕСКОЙ ЭЛЕКТРОФИЗИОЛОГИИ И ИНТЕРВЕНЦИОННОЙ АРИТМОЛОГИИ'),
(39, 'ru', 'Event', 4, 'body', '<p>asdasd</p>\r\n'),
(40, 'ru', 'Event', 4, 'keywords', ''),
(41, 'ru', 'Event', 4, 'info_events', 'asd'),
(42, 'ru', 'Event', 4, 'thesis_title', 'dasd'),
(43, 'ru', 'Event', 4, 'thesis_body', '<p>asdasdasd</p>\r\n'),
(44, 'ru', 'Event', 5, 'title', 'asd'),
(45, 'ru', 'Event', 5, 'body', '<p>asdasdasdasd</p>\r\n'),
(46, 'ru', 'Event', 5, 'keywords', ''),
(47, 'ru', 'Event', 5, 'info_events', 'asdasdasd'),
(48, 'ru', 'Event', 5, 'thesis_title', 'asd'),
(49, 'ru', 'Event', 5, 'thesis_body', '<p>asdasdasd</p>\r\n'),
(50, 'ru', 'Gallery', 1, 'title', ''),
(54, 'ru', 'Gallery', 5, 'title', ''),
(55, 'ru', 'History', 1, 'title', ''),
(56, 'ru', 'History', 2, 'title', ''),
(62, 'ru', 'News', 2, 'title', 'Тестовый'),
(63, 'ru', 'News', 2, 'body', '<p>Тестовый</p>\r\n'),
(64, 'ru', 'News', 2, 'keywords', ''),
(65, 'ru', 'News', 2, 'description', ''),
(68, 'ru', 'History', 8, 'body', '<p>asdasd</p>\r\n'),
(69, 'ru', 'History', 9, 'body', '<p>sdasd</p>\r\n'),
(70, 'ru', 'Slide', 3, 'title', 'EHRA in Kazakhstan Course'),
(71, 'ru', 'Slide', 3, 'descripti', '<p>asdasd</p>\r\n'),
(72, 'ru', 'Slide', 3, 'slide_info', 'Nur-Sultan, Kazakhstan / 11-12 September, 2020'),
(73, 'ru', 'Slide', 4, 'title', 'EHRA in Kazakhstan Course'),
(74, 'ru', 'Slide', 4, 'descripti', '<p>asdasd</p>\r\n'),
(75, 'ru', 'Slide', 4, 'slide_info', 'Nur-Sultan, Kazakhstan / 11-12 September, 2020'),
(76, 'ru', 'Slide', 5, 'title', 'EHRA in Kazakhstan Course'),
(77, 'ru', 'Slide', 5, 'descripti', '<p>ddddddd</p>\r\n'),
(78, 'ru', 'Slide', 5, 'slide_info', 'Nur-Sultan, Kazakhstan / 11-12 September, 2020'),
(79, 'ru', 'Comp', 5, 'body', '<div class=\"main_img_name\">Абдрахманов Аян Сулейменович</div>\r\n						<div class=\"main_img_position\">Доктор медицинских наук</div>\r\n					'),
(80, 'ru', 'Partner', 1, 'title', ''),
(81, 'ru', 'Partner', 1, 'body', ''),
(82, 'ru', 'Partner', 1, 'keywords', ''),
(83, 'ru', 'Partner', 1, 'description', ''),
(84, 'ru', 'Partner', 2, 'title', ''),
(85, 'ru', 'Partner', 2, 'body', ''),
(86, 'ru', 'Partner', 2, 'keywords', ''),
(87, 'ru', 'Partner', 2, 'description', ''),
(88, 'ru', 'Comp', 6, 'body', '<div class=\"main_text__heading\">Добро пожаловать на официальный сайт </div>\r\n                <h4>Республиканского Общественного Объеденения \"Казахстанского общества аритмологов\"</h4>\r\n                <div class=\"text_block\">\r\n                    <p>С 2014 года в нашей стране активно работает РОО \"Казахстанское общество аритмологов\", основной целью которого является снижение заболеваемости и риска осложнений у больных с нарушениями сердечного ритма и повышение качества их жизни и трудоспособности.</p>\r\n                    <p>&nbsp;</p>\r\n                    <p>Глубокоуважаемые коллеги!</p>\r\n                    <p>За это время под эгидой нашего Общества было проведено множество конференций, мастер классов объединивших более 500 врачей, интересующихся проблемами лечения аритмии. Темы наших конференции самые разнообразные:</p>\r\n                    <ul>\r\n                        <li>Основы клинической электрокардиофизиологии </li>\r\n                        <li>Электрокардиостимуляция в лечении брадиаритмий </li>\r\n                        <li>Катетерные методы лечения тахиаритмий </li>\r\n                        <li>Имплантируемые кардиовертеры-дефибрилляторы </li>\r\n                        <li>Хирургические методы лечения аритмий сердца,  экстракция электродов, генетические аспекты и консервативная терапия, протезирование или пластика митрального клапана и РЧ изоляция легочных вен на открытом сердце и многие другие актуальные вопросы современной кардиологии и  аритмологии.</li>\r\n                    </ul>\r\n                    <p>Надеемся, что наше сотрудничество  будет успешным  и плодотворным!</p>\r\n                </div>'),
(89, 'ru', 'Comp', 7, 'body', '<iframe style=\"pointer-events: none;\" src=\"https://yandex.ru/map-widget/v1/?um=constructor%3A7c7b21b646047c249b7ff28c78420ab663fd5cbba1ca5688d5abf2076d37e575&amp;source=constructor\" width=\"500\" height=\"400\" frameborder=\"0\"></iframe>'),
(90, 'ru', 'Comp', 8, 'body', 'г. Нур-Султан, Туран 38'),
(91, 'ru', 'Comp', 9, 'body', 'info@aritmology.kz'),
(92, 'ru', 'Event', 6, 'title', 'Тест'),
(93, 'ru', 'Event', 6, 'body', '<p>Тест</p>\r\n'),
(94, 'ru', 'Event', 6, 'keywords', ''),
(95, 'ru', 'Event', 6, 'info_events', 'Тест'),
(96, 'ru', 'Event', 6, 'thesis_title', 'asd'),
(97, 'ru', 'Event', 6, 'thesis_body', '<p>ывфыв</p>\r\n'),
(98, 'ru', 'Event', 7, 'title', 'Тест'),
(99, 'ru', 'Event', 7, 'body', '<p>Тест</p>\r\n'),
(100, 'ru', 'Event', 7, 'keywords', ''),
(101, 'ru', 'Event', 7, 'info_events', 'Тест'),
(102, 'ru', 'Event', 7, 'thesis_title', 'asd'),
(103, 'ru', 'Event', 7, 'thesis_body', '<p>ывфыв</p>\r\n'),
(104, 'ru', 'Event', 8, 'title', 'test'),
(105, 'ru', 'Event', 8, 'body', '<p>test</p>\r\n'),
(106, 'ru', 'Event', 8, 'keywords', 'test'),
(107, 'ru', 'Event', 8, 'info_events', 'test'),
(108, 'ru', 'Event', 8, 'thesis_title', 'test'),
(109, 'ru', 'Event', 8, 'thesis_body', '<p>test</p>\r\n'),
(110, 'ru', 'Event', 9, 'title', 'test'),
(111, 'ru', 'Event', 9, 'body', '<p>test</p>\r\n'),
(112, 'ru', 'Event', 9, 'keywords', 'test'),
(113, 'ru', 'Event', 9, 'info_events', 'test'),
(114, 'ru', 'Event', 9, 'thesis_title', 'test'),
(115, 'ru', 'Event', 9, 'thesis_body', '<p>test</p>\r\n'),
(116, 'ru', 'Event', 10, 'title', 'dasd'),
(117, 'ru', 'Event', 10, 'body', '<p>dasd</p>\r\n'),
(118, 'ru', 'Event', 10, 'keywords', ''),
(119, 'ru', 'Event', 10, 'info_events', 'dddd'),
(120, 'ru', 'Event', 10, 'thesis_title', 'ddd'),
(121, 'ru', 'Event', 10, 'thesis_body', '<p>ddd</p>\r\n'),
(122, 'ru', 'Event', 11, 'title', 'dasd'),
(123, 'ru', 'Event', 11, 'body', '<p>dasd</p>\r\n'),
(124, 'ru', 'Event', 11, 'keywords', ''),
(125, 'ru', 'Event', 11, 'info_events', 'dddd'),
(126, 'ru', 'Event', 11, 'thesis_title', 'ddd'),
(127, 'ru', 'Event', 11, 'thesis_body', '<p>ddd</p>\r\n'),
(128, 'ru', 'Event', 12, 'title', 'dasd'),
(129, 'ru', 'Event', 12, 'body', '<p>dasd</p>\r\n'),
(130, 'ru', 'Event', 12, 'keywords', ''),
(131, 'ru', 'Event', 12, 'info_events', 'dasd'),
(132, 'ru', 'Event', 12, 'thesis_title', 'dasd'),
(133, 'ru', 'Event', 12, 'thesis_body', '<p>dasd</p>\r\n'),
(134, 'ru', 'Event', 13, 'title', 'dasd'),
(135, 'ru', 'Event', 13, 'body', '<p>dasd</p>\r\n'),
(136, 'ru', 'Event', 13, 'keywords', ''),
(137, 'ru', 'Event', 13, 'info_events', 'dasd'),
(138, 'ru', 'Event', 13, 'thesis_title', 'dasd'),
(139, 'ru', 'Event', 13, 'thesis_body', '<p>dasd</p>\r\n'),
(140, 'ru', 'Event', 14, 'title', 'Тестовая 5'),
(141, 'ru', 'Event', 14, 'body', '<p>Тестовая 5</p>\r\n'),
(142, 'ru', 'Event', 14, 'keywords', ''),
(143, 'ru', 'Event', 14, 'info_events', 'Тестовая 5'),
(144, 'ru', 'Event', 14, 'thesis_title', 'Тестовая 5'),
(145, 'ru', 'Event', 14, 'thesis_body', '<p>Тестовая 5</p>\r\n'),
(146, 'ru', 'Event', 15, 'title', 'Тестовая 5'),
(147, 'ru', 'Event', 15, 'body', '<p>Тестовая 5</p>\r\n'),
(148, 'ru', 'Event', 15, 'keywords', ''),
(149, 'ru', 'Event', 15, 'info_events', 'Тестовая 5'),
(150, 'ru', 'Event', 15, 'thesis_title', 'Тестовая 5'),
(151, 'ru', 'Event', 15, 'thesis_body', '<p>Тестовая 5</p>\r\n'),
(152, 'ru', 'News', 3, 'title', 'ВСТРЕЧА РОО «КАЗАХСКОЕ ОБЩЕСТВО АРИТМОЛОГОВ» С ПРЕЗИДЕНТОМ EHRA'),
(153, 'ru', 'News', 3, 'body', '<p style=\"box-sizing: border-box; margin: 0px; font-family: TTCommons, Arial, Helvetica, sans-serif; font-size: 18px;\">11 мая 2016 года на базе АО &laquo;Национальный научный кардиохирургический центр&raquo; при поддержке компаний &laquo;Biotronik&raquo; и &laquo;Med Co&raquo; прошла совместная встреча Республиканского общественного объединения &laquo;Казахское общество аритмологов&raquo; с президентом Европейской ассоциации сердечного ритма (EHRA) Герхардом Хиндриксом.</p>\r\n\r\n<p style=\"box-sizing: border-box; margin: 0px; font-family: TTCommons, Arial, Helvetica, sans-serif; font-size: 18px;\">Во встрече приняли участие вице-министр МЗС РК Биртанов Е.А., президент EHRA Герхард Хиндрикс, председатель правления АО &laquo;ННКЦ&raquo; Пя Ю.В., заведующий отделением интервенционной аритмологии, Президент Казахского общества аритмологов Абдрахманов А.С., заведующий отделом аритмологии НИИКиВБ (г.Алматы) Реквава Р.Р. В ходе встречи были обсуждены вопросы эффективной профилактики внезапной сердечной смертности, повышения уровня аритмологической службы в регионах и поддержки профессионального сообщества. Было достигнуто соглашение о вступлении РОО &laquo;Казахское общество аритмологов&raquo; в Европейскую ассоциацию сердечного ритма (EHRA).</p>\r\n'),
(154, 'ru', 'News', 3, 'keywords', ''),
(155, 'ru', 'News', 3, 'description', ''),
(156, 'ru', 'News', 4, 'title', 'ВСТРЕЧА РОО «КАЗАХСКОЕ ОБЩЕСТВО АРИТМОЛОГОВ» С ПРЕЗИДЕНТОМ EHRA'),
(157, 'ru', 'News', 4, 'body', '<p>&nbsp;</p>\r\n\r\n<p style=\"box-sizing: border-box; margin: 0px; font-family: TTCommons, Arial, Helvetica, sans-serif; font-size: 18px;\">11 мая 2016 года на базе АО &laquo;Национальный научный кардиохирургический центр&raquo; при поддержке компаний &laquo;Biotronik&raquo; и &laquo;Med Co&raquo; прошла совместная встреча Республиканского общественного объединения &laquo;Казахское общество аритмологов&raquo; с президентом Европейской ассоциации сердечного ритма (EHRA) Герхардом Хиндриксом.</p>\r\n\r\n<p style=\"box-sizing: border-box; margin: 0px; font-family: TTCommons, Arial, Helvetica, sans-serif; font-size: 18px;\">Во встрече приняли участие вице-министр МЗС РК Биртанов Е.А., президент EHRA Герхард Хиндрикс, председатель правления АО &laquo;ННКЦ&raquo; Пя Ю.В., заведующий отделением интервенционной аритмологии, Президент Казахского общества аритмологов Абдрахманов А.С., заведующий отделом аритмологии НИИКиВБ (г.Алматы) Реквава Р.Р. В ходе встречи были обсуждены вопросы эффективной профилактики внезапной сердечной смертности, повышения уровня аритмологической службы в регионах и поддержки профессионального сообщества. Было достигнуто соглашение о вступлении РОО &laquo;Казахское общество аритмологов&raquo; в Европейскую ассоциацию сердечного ритма (EHRA).</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(158, 'ru', 'News', 4, 'keywords', ''),
(159, 'ru', 'News', 4, 'description', ''),
(160, 'ru', 'News', 5, 'title', 'ВСТРЕЧА РОО «КАЗАХСКОЕ ОБЩЕСТВО АРИТМОЛОГОВ» С ПРЕЗИДЕНТОМ EHRA'),
(161, 'ru', 'News', 5, 'body', '<p style=\"box-sizing: border-box; margin: 0px; font-family: TTCommons, Arial, Helvetica, sans-serif; font-size: 18px;\">11 мая 2016 года на базе АО &laquo;Национальный научный кардиохирургический центр&raquo; при поддержке компаний &laquo;Biotronik&raquo; и &laquo;Med Co&raquo; прошла совместная встреча Республиканского общественного объединения &laquo;Казахское общество аритмологов&raquo; с президентом Европейской ассоциации сердечного ритма (EHRA) Герхардом Хиндриксом.</p>\r\n\r\n<p style=\"box-sizing: border-box; margin: 0px; font-family: TTCommons, Arial, Helvetica, sans-serif; font-size: 18px;\">Во встрече приняли участие вице-министр МЗС РК Биртанов Е.А., президент EHRA Герхард Хиндрикс, председатель правления АО &laquo;ННКЦ&raquo; Пя Ю.В., заведующий отделением интервенционной аритмологии, Президент Казахского общества аритмологов Абдрахманов А.С., заведующий отделом аритмологии НИИКиВБ (г.Алматы) Реквава Р.Р. В ходе встречи были обсуждены вопросы эффективной профилактики внезапной сердечной смертности, повышения уровня аритмологической службы в регионах и поддержки профессионального сообщества. Было достигнуто соглашение о вступлении РОО &laquo;Казахское общество аритмологов&raquo; в Европейскую ассоциацию сердечного ритма (EHRA).</p>\r\n'),
(162, 'ru', 'News', 5, 'keywords', ''),
(163, 'ru', 'News', 5, 'description', ''),
(164, 'ru', 'News', 6, 'title', 'ВСТРЕЧА РОО «КАЗАХСКОЕ ОБЩЕСТВО АРИТМОЛОГОВ» С ПРЕЗИДЕНТОМ EHRA'),
(165, 'ru', 'News', 6, 'body', '<p style=\"box-sizing: border-box; margin: 0px; font-family: TTCommons, Arial, Helvetica, sans-serif; font-size: 18px;\">11 мая 2016 года на базе АО &laquo;Национальный научный кардиохирургический центр&raquo; при поддержке компаний &laquo;Biotronik&raquo; и &laquo;Med Co&raquo; прошла совместная встреча Республиканского общественного объединения &laquo;Казахское общество аритмологов&raquo; с президентом Европейской ассоциации сердечного ритма (EHRA) Герхардом Хиндриксом.</p>\r\n\r\n<p style=\"box-sizing: border-box; margin: 0px; font-family: TTCommons, Arial, Helvetica, sans-serif; font-size: 18px;\">Во встрече приняли участие вице-министр МЗС РК Биртанов Е.А., президент EHRA Герхард Хиндрикс, председатель правления АО &laquo;ННКЦ&raquo; Пя Ю.В., заведующий отделением интервенционной аритмологии, Президент Казахского общества аритмологов Абдрахманов А.С., заведующий отделом аритмологии НИИКиВБ (г.Алматы) Реквава Р.Р. В ходе встречи были обсуждены вопросы эффективной профилактики внезапной сердечной смертности, повышения уровня аритмологической службы в регионах и поддержки профессионального сообщества. Было достигнуто соглашение о вступлении РОО &laquo;Казахское общество аритмологов&raquo; в Европейскую ассоциацию сердечного ритма (EHRA).</p>\r\n'),
(166, 'ru', 'News', 6, 'keywords', ''),
(167, 'ru', 'News', 6, 'description', ''),
(168, 'ru', 'News', 7, 'title', 'ВСТРЕЧА РОО «КАЗАХСКОЕ ОБЩЕСТВО АРИТМОЛОГОВ» С ПРЕЗИДЕНТОМ EHRA'),
(169, 'ru', 'News', 7, 'body', '<p style=\"box-sizing: border-box; margin: 0px; font-family: TTCommons, Arial, Helvetica, sans-serif; font-size: 18px;\">11 мая 2016 года на базе АО &laquo;Национальный научный кардиохирургический центр&raquo; при поддержке компаний &laquo;Biotronik&raquo; и &laquo;Med Co&raquo; прошла совместная встреча Республиканского общественного объединения &laquo;Казахское общество аритмологов&raquo; с президентом Европейской ассоциации сердечного ритма (EHRA) Герхардом Хиндриксом.</p>\r\n\r\n<p style=\"box-sizing: border-box; margin: 0px; font-family: TTCommons, Arial, Helvetica, sans-serif; font-size: 18px;\">Во встрече приняли участие вице-министр МЗС РК Биртанов Е.А., президент EHRA Герхард Хиндрикс, председатель правления АО &laquo;ННКЦ&raquo; Пя Ю.В., заведующий отделением интервенционной аритмологии, Президент Казахского общества аритмологов Абдрахманов А.С., заведующий отделом аритмологии НИИКиВБ (г.Алматы) Реквава Р.Р. В ходе встречи были обсуждены вопросы эффективной профилактики внезапной сердечной смертности, повышения уровня аритмологической службы в регионах и поддержки профессионального сообщества. Было достигнуто соглашение о вступлении РОО &laquo;Казахское общество аритмологов&raquo; в Европейскую ассоциацию сердечного ритма (EHRA).</p>\r\n'),
(170, 'ru', 'News', 7, 'keywords', ''),
(171, 'ru', 'News', 7, 'description', ''),
(172, 'ru', 'Slide', 6, 'title', 'EHRA in Kazakhstan Course 2'),
(173, 'ru', 'Slide', 6, 'descripti', 'Cardiac arrhythmia management and cardiac electrophysiology for cardiologists\r\n'),
(174, 'ru', 'Slide', 6, 'slide_info', 'Nur-Sultan, Kazakhstan / 11-12 September, 2020'),
(175, 'ru', 'Slide', 7, 'title', 'asdas'),
(176, 'ru', 'Slide', 7, 'descripti', '<p>sdasdasdasd</p>\r\n'),
(177, 'ru', 'Slide', 7, 'slide_info', 'dasda'),
(178, 'ru', 'Slide', 8, 'title', 'EHRA in Kazakhstan Course'),
(179, 'ru', 'Slide', 8, 'descripti', 'Cardiac arrhythmia management and cardiac electrophysiology for cardiologists\r\n'),
(180, 'ru', 'Slide', 8, 'slide_info', 'Nur-Sultan, Kazakhstan / 11-12 September, 2020'),
(181, 'ru', 'News', 1, 'short_desc', ''),
(182, 'ru', 'News', 2, 'short_desc', ''),
(183, 'ru', 'Faq', 1, 'title', 'Тестовый 222'),
(184, 'ru', 'Faq', 1, 'body', 'Тестовый Тестовый'),
(185, 'kz', 'Faq', 1, 'title', ' Кз \"әі'),
(186, 'kz', 'Faq', 1, 'body', '\"әі'),
(187, 'ru', 'Review', 1, 'title', ' Улина Марина Евгеньевна'),
(188, 'ru', 'Review', 1, 'body', 'Товарищи! рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании новых предложений. Повседневная практика показывает, что сложившаяся структура организации позволяет выполнять важные задания.'),
(189, 'ru', 'Review', 1, 'position', ' Врач терапевт'),
(193, 'ru', 'Comp', 13, 'body', 'Onter — сервис онлайн-консультаций с врачами. Сейчас мы рассматриваем новые клиники для подключения к нашей сети и, если вы управляете клиникой, готовой работать с телемедицинскими консультациями, заполните, пожалуйста, анкету - мы свяжемся с вами, если будем заинтересованы в сотрудничестве.\r\n\r\n \r\n\r\nЕсли вы - практикующий специалист вне клиники, то заполните, пожалуйста, анкету для участия в проекте. Свяжемся с вами, если нас заинтересует ваша кандидатура.'),
(194, 'ru', 'Comp', 14, 'body', '44Wjhelb-5I'),
(195, 'ru', 'Setting', 1, 'partner_title', '    О сервисе'),
(196, 'ru', 'Setting', 1, 'partner_text', '<p>Onter &mdash; сервис онлайн-консультаций с врачами. Сейчас мы рассматриваем новые клиники для подключения к нашей сети и, если вы управляете клиникой, готовой работать с телемедицинскими консультациями, заполните, пожалуйста, анкету - мы свяжемся с вами, если будем заинтересованы в сотрудничестве.</p>\r\n\r\n<p>Если вы - практикующий специалист вне клиники, то заполните, пожалуйста, анкету для участия в проекте. Свяжемся с вами, если нас заинтересует ваша кандидатура.</p>\r\n'),
(197, 'ru', 'Setting', 1, 'about_text', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non, neque turpis amet amet tristique lacus in sit. Sociis ridiculus molestie nulla amet laoreet in. Sed nibh tortor proin porttitor sagittis sit ut. Vestibulum, et morbi nibh nisl dolor neque scelerisque feugiat. Metus, lectus placerat mattis in curabitur donec euismod a fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non, neque turpis amet amet tristique lacus in sit. Sociis ridiculus molestie nulla amet laoreet in</p>\r\n'),
(198, 'ru', 'Advantage', 1, 'title', '  1 шаг '),
(199, 'ru', 'Advantage', 1, 'body', 'Заполнить форму'),
(200, 'ru', 'Advantage', 2, 'title', ' Высококвалифицированные врачи'),
(201, 'ru', 'Advantage', 2, 'body', 'Обеспечение нашим клиентам оказания высокоспециализированной медицинской помощи за счет профессионализма врачей'),
(202, 'ru', 'Advantage', 3, 'title', 'Опишите проблему'),
(203, 'ru', 'Advantage', 3, 'body', 'Расскажите что вас беспокоит, опишите свои симптомы\r\n'),
(204, 'ru', 'Album', 1, 'title', 'Альбом amanat drive 1');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `body` text,
  `short_text` text,
  `date` date DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `category_id`, `title`, `alias`, `body`, `short_text`, `date`, `img`, `keywords`, `description`, `created`, `modified`) VALUES
(1, 9, 'Начата работа по прокладке труб в столице', 'nachata_rabota_po_prokladke_trub_v_stolitse', '<p>Начата работа по прокладке труб в столице</p>\r\n', '123', '2021-02-24', NULL, NULL, NULL, '2021-02-01', '2021-02-01'),
(2, 1, 'Тестовый', 'testovyyi', '<p>Тестовый</p>\r\n', '<p>Тестовый</p>\r\n', NULL, 'f07aa84da7372f5a68387ab99f82ff6e.jpg', NULL, NULL, '2021-02-01', '2021-02-01');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `h1` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `alias` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `body`, `h1`, `keywords`, `description`, `created`, `modified`, `alias`) VALUES
(1, 'Главная', 'Название сервиса - popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'Сервис по прокату одежды №1', '1', '2', '2016-09-01 00:00:00', '2016-09-01 00:00:00', '/');

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `partners`
--

INSERT INTO `partners` (`id`, `link`, `img`, `created`, `modified`) VALUES
(1, '#', 'ad00b2560efc94834f683d31ad6169c8.png', '2021-03-11 11:43:58', '2021-03-11 11:43:58');

-- --------------------------------------------------------

--
-- Структура таблицы `questionnaires`
--

CREATE TABLE `questionnaires` (
  `id` int(11) NOT NULL,
  `title_ru` varchar(250) NOT NULL,
  `title_kz` varchar(250) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `questionnaires`
--

INSERT INTO `questionnaires` (`id`, `title_ru`, `title_kz`, `date`) VALUES
(1, ' Опросник', ' Опросник', '2021-03-20');

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `title_kz` varchar(255) DEFAULT NULL,
  `questionnaire_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `title_ru`, `title_kz`, `questionnaire_id`, `created`, `modified`) VALUES
(1, 'Тест12', 'Тест13', 1, '2021-03-17 15:06:51', '2021-03-17 15:30:32'),
(2, 'Тест12', 'Тест13', 1, '2021-03-17 15:31:28', '2021-03-17 15:31:28'),
(3, 'Тест3', 'Тест3', 1, '2021-03-19 15:58:15', '2021-03-19 15:58:15');

-- --------------------------------------------------------

--
-- Структура таблицы `responsibles`
--

CREATE TABLE `responsibles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `moderator_id` int(11) NOT NULL,
  `moderator_fio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `responsibles`
--

INSERT INTO `responsibles` (`id`, `user_id`, `moderator_id`, `moderator_fio`) VALUES
(1, 41, 43, 'МОдератор 2');

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `results` longtext,
  `user_id` int(11) NOT NULL,
  `moderator_id` int(11) DEFAULT NULL,
  `questionnaire_id` int(11) NOT NULL,
  `moderator_fio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `link`, `created`, `modified`) VALUES
(1, '#', '2021-02-01 14:45:20', '2021-03-11 11:25:06');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `partner_title` varchar(255) DEFAULT NULL,
  `partner_text` text,
  `partner_video` varchar(255) DEFAULT NULL,
  `about_text` text,
  `about_video` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `partner_title`, `partner_text`, `partner_video`, `about_text`, `about_video`, `created`, `modified`) VALUES
(1, '    О сервисе', '<p>Onter &mdash; сервис онлайн-консультаций с врачами. Сейчас мы рассматриваем новые клиники для подключения к нашей сети и, если вы управляете клиникой, готовой работать с телемедицинскими консультациями, заполните, пожалуйста, анкету - мы свяжемся с вами, если будем заинтересованы в сотрудничестве.</p>\r\n\r\n<p>Если вы - практикующий специалист вне клиники, то заполните, пожалуйста, анкету для участия в проекте. Свяжемся с вами, если нас заинтересует ваша кандидатура.</p>\r\n', ' 44Wjhelb-5I', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non, neque turpis amet amet tristique lacus in sit. Sociis ridiculus molestie nulla amet laoreet in. Sed nibh tortor proin porttitor sagittis sit ut. Vestibulum, et morbi nibh nisl dolor neque scelerisque feugiat. Metus, lectus placerat mattis in curabitur donec euismod a fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non, neque turpis amet amet tristique lacus in sit. Sociis ridiculus molestie nulla amet laoreet in</p>\r\n', '44Wjhelb-5I', '2021-02-05 09:27:22', '2021-02-05 11:35:48');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` enum('user','admin','moderator','') NOT NULL DEFAULT 'user',
  `username` varchar(50) DEFAULT NULL,
  `active` enum('deactivate','activate') DEFAULT 'deactivate',
  `password` varchar(255) DEFAULT NULL,
  `forgetpwd` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `fio` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `iin` bigint(12) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `active`, `password`, `forgetpwd`, `img`, `fio`, `phone`, `iin`, `address`, `city`, `created`, `modified`) VALUES
(1, 'admin', 'admin', '', '$2a$10$eujN90i9HDNEGiMmOnW75.FrHNecBYn/b8SfwJJluuPFX2Cq0J.n2', NULL, '', '', '', NULL, NULL, NULL, '2015-09-15 13:51:15', '2015-09-15 13:51:15'),
(41, 'user', 'test@mail.ru', 'deactivate', '$2a$10$KJ8wApy3D0YbVd4Vs58SyOdwkqHsFXCHA99VGVnFF5g1envi1ZNOq', '819247', NULL, 'ТЕстовый', '+7 (333) 333 33 33', 123, NULL, NULL, '2021-03-09 14:19:18', '2021-03-09 14:19:18'),
(42, 'moderator', 'moderator@mail.ru', 'deactivate', '$2a$10$0ipkXRO7/isvM1Ad2lA2ougd1ipm4vT0KSbxf8OOf0SG6rmvDu8YK', NULL, NULL, 'МОдератор 1', NULL, NULL, NULL, NULL, '2021-03-18 13:09:17', '2021-03-18 13:09:17'),
(43, 'moderator', 'moderator2@mail.ru', 'deactivate', '$2a$10$7iS2WyOoqUKriUNypD8pZub5PEh8TY173f/o.wnG6a5PtnmyvJ1rq', NULL, NULL, 'МОдератор 2', NULL, NULL, NULL, NULL, '2021-03-18 13:10:00', '2021-03-18 13:10:00'),
(44, 'user', 'client2@mail.ru', 'deactivate', '$2a$10$ICaam2NX8m3yfs7urrf1zuddp9mZDr14/xHvEwFLWoFQx/y8QB3A6', '889285', NULL, 'Клиент2 ', '+7 (777) 777 77 77', 940309350448, NULL, NULL, '2021-03-19 14:09:33', '2021-03-19 14:09:33');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `advantages`
--
ALTER TABLE `advantages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comps`
--
ALTER TABLE `comps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i18n`
--
ALTER TABLE `i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locale` (`locale`),
  ADD KEY `model` (`model`),
  ADD KEY `row_id` (`foreign_key`),
  ADD KEY `field` (`field`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `responsibles`
--
ALTER TABLE `responsibles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT для таблицы `advantages`
--
ALTER TABLE `advantages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `comps`
--
ALTER TABLE `comps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `i18n`
--
ALTER TABLE `i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `responsibles`
--
ALTER TABLE `responsibles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
