-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Мар 03 2021 г., 00:47
-- Версия сервера: 10.3.25-MariaDB-cll-lve
-- Версия PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `p-317273_eshop_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(2, 'Второстепенное', 1),
(3, 'Кровля', NULL),
(4, 'Фасад', NULL),
(9, 'Металлочерепица', 3),
(10, 'Гибкая черепица', 3),
(11, 'Профнастил', 3),
(12, 'Водосточные системы', NULL),
(13, 'Композитная черепица', 3),
(14, 'Сопутствующие товары', NULL),
(15, 'СуперМонтеррей', 9),
(16, 'Фортуна', 9),
(17, 'Андалузия', 9),
(18, 'Каскад', 9),
(19, 'Монтана', 9),
(20, 'Венеция', 9),
(22, 'Доборные элементы к металлочерепице', 9),
(23, 'Финская СОНАТА', 10),
(24, 'Финская АККОРД', 10),
(25, 'Классик МОДЕРН', 10),
(26, 'Классик ТАНГО', 10),
(27, 'Классик ФЛАМЕНКО', 10),
(28, 'Классик КАДРИЛЬ', 10),
(29, 'Классик РУМБА', 10),
(30, 'Комфорт БОЛЕРО', 10),
(31, 'Комфорт САЛЬСА', 10),
(32, 'Ультра ФОКСТРОТ', 10),
(33, 'Ультра САМБА', 10),
(34, 'РАНЧО', 10),
(35, 'КАНТРИ', 10),
(36, 'ДЖАЗ', 10),
(37, 'ВЕСТЕРН', 10),
(38, 'КОНТИНЕНТ', 10),
(39, 'АТЛАНТИКА', 10),
(40, 'Доборные элементы к гибкой черепице', 10),
(41, 'С-8', 11),
(43, 'МП-16', 11),
(44, 'МП-20', 11),
(45, 'С-44', 11),
(46, 'Н-60', 11),
(47, 'Н-75', 11),
(48, 'Luxard', 13),
(49, 'Металлический сайдинг', 4),
(50, 'Виниловый сайдинг', 4),
(51, 'Фасадные панели', 4),
(52, 'Корабельная доска', 49),
(53, 'Европанель', 49),
(54, 'Вагонка', 49),
(55, 'Блок-Хаус', 49),
(56, 'Доборные элементы металлосайдинга', 49),
(57, 'Корабельная доска', 50),
(58, 'Блок-Хаус', 50),
(59, 'Софит', 50),
(60, 'Доборные элементы винилового сайдинга', 50),
(61, 'Фибробетонные панели', 51),
(62, 'Полимерные панели', 51),
(63, 'Hauberk', 51),
(64, 'AMK панели', 51),
(65, 'Тепло-панели', 51),
(66, 'ЯФасад', 62),
(67, 'U-plast', 62),
(68, 'GrandLine', 62),
(69, 'Fineber', 62),
(70, 'Docke', 62),
(71, 'Виниловые водосточные системы', 12),
(72, 'Металлические водосточные системы', 12),
(73, 'Системы поверхностного водоотвода', 12),
(74, 'Обогреватели желобов и труб', 12),
(75, 'Вентиляционные выходы', 14),
(76, 'Мансардные окна и чердачные лестницы', 14),
(77, 'Паро-гидроизоляционные материалы', 14),
(78, 'Глянцевый', 15),
(79, 'Матовый', 15),
(81, 'Agneta - имитация натуральной меди', 15),
(82, 'Cloudy - имитация натуральной керамики', 15),
(83, 'Оцинкованный', 41),
(84, 'Глянцевый', 41),
(85, 'Матовый', 41),
(86, 'Ecosteel - имитация натурального дерева', 41),
(87, 'Оцинкованный', 43),
(88, 'Глянцевый', 43),
(89, 'Матовый', 43),
(90, 'Ecosteel - имитация натурального дерева', 43),
(91, 'Оцинкованный', 44),
(92, 'Глянцевый', 44),
(93, 'Матовый', 44),
(94, 'Ecosteel - имитация натурального дерева', 44),
(95, 'Оцинкованный', 45),
(96, 'Глянцевый', 45),
(97, 'Матовый', 45),
(98, 'Оцинкованный', 46),
(99, 'Оцинкованный', 47),
(100, 'Глянцевый', 52),
(101, 'Матовый', 52),
(102, 'Ecosteel - имитация натурального дерева', 52),
(103, 'Глянцевый', 53),
(104, 'Матовый', 53),
(105, 'Ecosteel - имитация натурального дерева', 53),
(106, 'Глянцевый', 54),
(107, 'Матовый', 54),
(108, 'Ecosteel - имитация натурального дерева', 54),
(109, 'Глянцевый', 55),
(110, 'Матовый', 55),
(111, 'Ecosteel - имитация натурального дерева', 55),
(112, 'Крымский сланец', 66),
(113, 'Екатеринский камень', 66),
(114, 'Демидовский кирпич', 66),
(115, 'Сибирская дранка', 66),
(116, 'Состаренный кирпич', 68),
(117, 'Стандарт', 116),
(118, 'Премиум', 116),
(119, 'Клинкерный кирпич', 68),
(120, 'Стандарт', 119),
(121, 'Премиум', 119),
(122, 'Крупный камень', 68),
(123, 'Сланец', 68),
(124, 'Стоун Хаус Камень', 67),
(125, 'Стоун Хаус Кирпич', 67),
(126, 'Тимберблок', 67),
(127, 'Дуб', 126),
(128, 'Ель', 126),
(129, 'Кирпич облицовочный', 69),
(130, 'Кирпич', 69),
(131, 'Камень', 69),
(132, 'Камень крупный', 69),
(133, 'Камень дикий', 69),
(134, 'Камень природный', 69),
(135, 'Скала', 69),
(136, 'Коллекция STEIN', 70),
(137, 'Коллекция BURG', 70),
(138, 'Коллекция FLEMISH', 70),
(139, 'Коллекция BERG', 70),
(140, 'Коллекция FELS', 70),
(141, 'Коллекция STERN', 70),
(142, 'Коллекция SLATE', 70),
(143, 'Коллекция KLINKER', 70),
(144, 'Коллекция EDEL', 70),
(145, 'Кирпич', 63),
(146, 'Камень', 63),
(147, 'Кирпич', 64),
(148, 'Блок', 64),
(149, 'Fineber', 71),
(150, 'GrandLine', 71),
(151, 'Giza', 71),
(152, 'Docke Standart', 71),
(153, 'Docke Lux', 71),
(154, 'Прямоугольный', 72),
(155, 'Круглый', 72);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_01_14_064027_create_users_table', 1),
(2, '2021_02_05_230906_create_categories_table', 1),
(3, '2021_02_05_230906_create_products_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`) VALUES
(1, 'asd', 0),
(2, 'asd', 22),
(3, 'Сайдинг виниловый 3 метр ', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `email`, `password`, `token`) VALUES
(1, '2021-02-13 22:30:45', '2021-02-17 21:04:08', 'admin@admin.kz', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', '1kCMf9Skr7QFfQsyIq3kVzzQDsGUTcV4rd7o1beRd80XSpB6sQA8G0Dcado7XHnVfvt3w1g1PXw68xJgGPsBs3ORwTF7rLR1KHJE');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
