-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 15 2020 г., 14:39
-- Версия сервера: 5.6.43
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `my_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `NumCode` int(11) NOT NULL,
  `CharCode` varchar(255) NOT NULL,
  `Nominal` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` decimal(10,4) NOT NULL,
  `Date` date DEFAULT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `NumCode`, `CharCode`, `Nominal`, `Name`, `Value`, `Date`, `TIMESTAMP`) VALUES
(421, 36, 'AUD', 1, 'Австралийский доллар', '47.7773', '2020-03-13', '2020-03-14 19:23:44'),
(422, 944, 'AZN', 1, 'Азербайджанский манат', '43.6354', '2020-03-13', '2020-03-14 19:23:44'),
(423, 826, 'GBP', 1, 'Фунт стерлингов Соединенного королевства', '94.7329', '2020-03-13', '2020-03-14 19:23:44'),
(424, 51, 'AMD', 100, 'Армянских драмов', '15.2870', '2020-03-13', '2020-03-14 19:23:44'),
(425, 933, 'BYN', 1, 'Белорусский рубль', '31.5359', '2020-03-13', '2020-03-14 19:23:44'),
(426, 975, 'BGN', 1, 'Болгарский лев', '42.6523', '2020-03-13', '2020-03-14 19:23:44'),
(427, 986, 'BRL', 1, 'Бразильский реал', '15.3737', '2020-03-13', '2020-03-14 19:23:44'),
(428, 348, 'HUF', 100, 'Венгерских форинтов', '24.6989', '2020-03-13', '2020-03-14 19:23:44'),
(429, 344, 'HKD', 10, 'Гонконгских долларов', '95.2452', '2020-03-13', '2020-03-14 19:23:44'),
(430, 208, 'DKK', 1, 'Датская крона', '11.1640', '2020-03-13', '2020-03-14 19:23:44'),
(431, 840, 'USD', 1, 'Доллар США', '74.0274', '2020-03-13', '2020-03-14 19:23:44'),
(432, 978, 'EUR', 1, 'Евро', '83.6584', '2020-03-13', '2020-03-14 19:23:44'),
(433, 356, 'INR', 100, 'Индийских рупий', '99.8010', '2020-03-13', '2020-03-14 19:23:44'),
(434, 398, 'KZT', 100, 'Казахстанских тенге', '18.5031', '2020-03-13', '2020-03-14 19:23:44'),
(435, 124, 'CAD', 1, 'Канадский доллар', '53.7755', '2020-03-13', '2020-03-14 19:23:44'),
(436, 417, 'KGS', 10, 'Киргизских сомов', '10.1652', '2020-03-13', '2020-03-14 19:23:44'),
(437, 156, 'CNY', 1, 'Китайский юань', '10.5985', '2020-03-13', '2020-03-14 19:23:45'),
(438, 498, 'MDL', 10, 'Молдавских леев', '42.1809', '2020-03-13', '2020-03-14 19:23:45'),
(439, 578, 'NOK', 10, 'Норвежских крон', '75.3974', '2020-03-13', '2020-03-14 19:23:45'),
(440, 985, 'PLN', 1, 'Польский злотый', '19.2424', '2020-03-13', '2020-03-14 19:23:45'),
(441, 946, 'RON', 1, 'Румынский лей', '17.3111', '2020-03-13', '2020-03-14 19:23:45'),
(442, 960, 'XDR', 1, 'СДР (специальные права заимствования)', '103.0173', '2020-03-13', '2020-03-14 19:23:45'),
(443, 702, 'SGD', 1, 'Сингапурский доллар', '52.8767', '2020-03-13', '2020-03-14 19:23:45'),
(444, 972, 'TJS', 10, 'Таджикских сомони', '76.3090', '2020-03-13', '2020-03-14 19:23:45'),
(445, 949, 'TRY', 1, 'Турецкая лира', '11.8712', '2020-03-13', '2020-03-14 19:23:45'),
(446, 934, 'TMT', 1, 'Новый туркменский манат', '21.1809', '2020-03-13', '2020-03-14 19:23:45'),
(447, 860, 'UZS', 10000, 'Узбекских сумов', '77.9193', '2020-03-13', '2020-03-14 19:23:45'),
(448, 980, 'UAH', 10, 'Украинских гривен', '28.6567', '2020-03-13', '2020-03-14 19:23:45'),
(449, 203, 'CZK', 10, 'Чешских крон', '32.1132', '2020-03-13', '2020-03-14 19:23:45'),
(450, 752, 'SEK', 10, 'Шведских крон', '77.4694', '2020-03-13', '2020-03-14 19:23:45'),
(451, 756, 'CHF', 1, 'Швейцарский франк', '79.0638', '2020-03-13', '2020-03-14 19:23:45'),
(452, 710, 'ZAR', 10, 'Южноафриканских рэндов', '45.1013', '2020-03-13', '2020-03-14 19:23:45'),
(453, 410, 'KRW', 1000, 'Вон Республики Корея', '61.4289', '2020-03-13', '2020-03-14 19:23:45'),
(454, 392, 'JPY', 100, 'Японских иен', '71.4240', '2020-03-13', '2020-03-14 19:23:45'),
(455, 36, 'AUD', 1, 'Австралийский доллар', '46.5926', '2020-03-12', '2020-03-14 19:28:48'),
(456, 944, 'AZN', 1, 'Азербайджанский манат', '42.1291', '2020-03-12', '2020-03-14 19:28:48'),
(457, 826, 'GBP', 1, 'Фунт стерлингов Соединенного королевства', '92.5277', '2020-03-12', '2020-03-14 19:28:48'),
(458, 51, 'AMD', 100, 'Армянских драмов', '14.7975', '2020-03-12', '2020-03-14 19:28:48'),
(459, 933, 'BYN', 1, 'Белорусский рубль', '30.8588', '2020-03-12', '2020-03-14 19:28:48'),
(460, 975, 'BGN', 1, 'Болгарский лев', '41.3731', '2020-03-12', '2020-03-14 19:28:48'),
(461, 986, 'BRL', 1, 'Бразильский реал', '15.3905', '2020-03-12', '2020-03-14 19:28:48'),
(462, 348, 'HUF', 100, 'Венгерских форинтов', '24.1533', '2020-03-12', '2020-03-14 19:28:48'),
(463, 344, 'HKD', 10, 'Гонконгских долларов', '92.0189', '2020-03-12', '2020-03-14 19:28:48'),
(464, 208, 'DKK', 1, 'Датская крона', '10.8312', '2020-03-12', '2020-03-14 19:28:48'),
(465, 840, 'USD', 1, 'Доллар США', '71.4720', '2020-03-12', '2020-03-14 19:28:48'),
(466, 978, 'EUR', 1, 'Евро', '81.0207', '2020-03-12', '2020-03-14 19:28:48'),
(467, 356, 'INR', 100, 'Индийских рупий', '97.0164', '2020-03-12', '2020-03-14 19:28:48'),
(468, 398, 'KZT', 100, 'Казахстанских тенге', '18.0448', '2020-03-12', '2020-03-14 19:28:48'),
(469, 124, 'CAD', 1, 'Канадский доллар', '52.1389', '2020-03-12', '2020-03-14 19:28:49'),
(470, 417, 'KGS', 10, 'Киргизских сомов', '10.2282', '2020-03-12', '2020-03-14 19:28:49'),
(471, 156, 'CNY', 1, 'Китайский юань', '10.2829', '2020-03-12', '2020-03-14 19:28:49'),
(472, 498, 'MDL', 10, 'Молдавских леев', '41.0169', '2020-03-12', '2020-03-14 19:28:49'),
(473, 578, 'NOK', 10, 'Норвежских крон', '74.4826', '2020-03-12', '2020-03-14 19:28:49'),
(474, 985, 'PLN', 1, 'Польский злотый', '18.7576', '2020-03-12', '2020-03-14 19:28:49'),
(475, 946, 'RON', 1, 'Румынский лей', '16.7952', '2020-03-12', '2020-03-14 19:28:49'),
(476, 960, 'XDR', 1, 'СДР (специальные права заимствования)', '99.6112', '2020-03-12', '2020-03-14 19:28:49'),
(477, 702, 'SGD', 1, 'Сингапурский доллар', '51.3965', '2020-03-12', '2020-03-14 19:28:49'),
(478, 972, 'TJS', 10, 'Таджикских сомони', '73.8271', '2020-03-12', '2020-03-14 19:28:49'),
(479, 949, 'TRY', 1, 'Турецкая лира', '11.6366', '2020-03-12', '2020-03-14 19:28:49'),
(480, 934, 'TMT', 1, 'Новый туркменский манат', '20.4498', '2020-03-12', '2020-03-14 19:28:49'),
(481, 860, 'UZS', 10000, 'Узбекских сумов', '75.0914', '2020-03-12', '2020-03-14 19:28:49'),
(482, 980, 'UAH', 10, 'Украинских гривен', '27.9528', '2020-03-12', '2020-03-14 19:28:49'),
(483, 203, 'CZK', 10, 'Чешских крон', '31.5759', '2020-03-12', '2020-03-14 19:28:49'),
(484, 752, 'SEK', 10, 'Шведских крон', '75.3320', '2020-03-12', '2020-03-14 19:28:49'),
(485, 756, 'CHF', 1, 'Швейцарский франк', '76.4570', '2020-03-12', '2020-03-14 19:28:49'),
(486, 710, 'ZAR', 10, 'Южноафриканских рэндов', '44.4632', '2020-03-12', '2020-03-14 19:28:49'),
(487, 410, 'KRW', 1000, 'Вон Республики Корея', '59.9935', '2020-03-12', '2020-03-14 19:28:50'),
(488, 392, 'JPY', 100, 'Японских иен', '68.1042', '2020-03-12', '2020-03-14 19:28:50'),
(489, 36, 'AUD', 1, 'Австралийский доллар', '47.7773', '2020-03-13', '2020-03-14 21:11:38'),
(490, 944, 'AZN', 1, 'Азербайджанский манат', '43.6354', '2020-03-13', '2020-03-14 21:11:38'),
(491, 826, 'GBP', 1, 'Фунт стерлингов Соединенного королевства', '94.7329', '2020-03-13', '2020-03-14 21:11:38'),
(492, 51, 'AMD', 100, 'Армянских драмов', '15.2870', '2020-03-13', '2020-03-14 21:11:38'),
(493, 933, 'BYN', 1, 'Белорусский рубль', '31.5359', '2020-03-13', '2020-03-14 21:11:38'),
(494, 975, 'BGN', 1, 'Болгарский лев', '42.6523', '2020-03-13', '2020-03-14 21:11:38'),
(495, 986, 'BRL', 1, 'Бразильский реал', '15.3737', '2020-03-13', '2020-03-14 21:11:38'),
(496, 348, 'HUF', 100, 'Венгерских форинтов', '24.6989', '2020-03-13', '2020-03-14 21:11:38'),
(497, 344, 'HKD', 10, 'Гонконгских долларов', '95.2452', '2020-03-13', '2020-03-14 21:11:38'),
(498, 208, 'DKK', 1, 'Датская крона', '11.1640', '2020-03-13', '2020-03-14 21:11:38'),
(499, 840, 'USD', 1, 'Доллар США', '74.0274', '2020-03-13', '2020-03-14 21:11:38'),
(500, 978, 'EUR', 1, 'Евро', '83.6584', '2020-03-13', '2020-03-14 21:11:39'),
(501, 356, 'INR', 100, 'Индийских рупий', '99.8010', '2020-03-13', '2020-03-14 21:11:39'),
(502, 398, 'KZT', 100, 'Казахстанских тенге', '18.5031', '2020-03-13', '2020-03-14 21:11:39'),
(503, 124, 'CAD', 1, 'Канадский доллар', '53.7755', '2020-03-13', '2020-03-14 21:11:39'),
(504, 417, 'KGS', 10, 'Киргизских сомов', '10.1652', '2020-03-13', '2020-03-14 21:11:39'),
(505, 156, 'CNY', 1, 'Китайский юань', '10.5985', '2020-03-13', '2020-03-14 21:11:39'),
(506, 498, 'MDL', 10, 'Молдавских леев', '42.1809', '2020-03-13', '2020-03-14 21:11:39'),
(507, 578, 'NOK', 10, 'Норвежских крон', '75.3974', '2020-03-13', '2020-03-14 21:11:39'),
(508, 985, 'PLN', 1, 'Польский злотый', '19.2424', '2020-03-13', '2020-03-14 21:11:39'),
(509, 946, 'RON', 1, 'Румынский лей', '17.3111', '2020-03-13', '2020-03-14 21:11:39'),
(510, 960, 'XDR', 1, 'СДР (специальные права заимствования)', '103.0173', '2020-03-13', '2020-03-14 21:11:39'),
(511, 702, 'SGD', 1, 'Сингапурский доллар', '52.8767', '2020-03-13', '2020-03-14 21:11:39'),
(512, 972, 'TJS', 10, 'Таджикских сомони', '76.3090', '2020-03-13', '2020-03-14 21:11:39'),
(513, 949, 'TRY', 1, 'Турецкая лира', '11.8712', '2020-03-13', '2020-03-14 21:11:39'),
(514, 934, 'TMT', 1, 'Новый туркменский манат', '21.1809', '2020-03-13', '2020-03-14 21:11:39'),
(515, 860, 'UZS', 10000, 'Узбекских сумов', '77.9193', '2020-03-13', '2020-03-14 21:11:39'),
(516, 980, 'UAH', 10, 'Украинских гривен', '28.6567', '2020-03-13', '2020-03-14 21:11:39'),
(517, 203, 'CZK', 10, 'Чешских крон', '32.1132', '2020-03-13', '2020-03-14 21:11:40'),
(518, 752, 'SEK', 10, 'Шведских крон', '77.4694', '2020-03-13', '2020-03-14 21:11:40'),
(519, 756, 'CHF', 1, 'Швейцарский франк', '79.0638', '2020-03-13', '2020-03-14 21:11:40'),
(520, 710, 'ZAR', 10, 'Южноафриканских рэндов', '45.1013', '2020-03-13', '2020-03-14 21:11:40'),
(521, 410, 'KRW', 1000, 'Вон Республики Корея', '61.4289', '2020-03-13', '2020-03-14 21:11:40'),
(522, 392, 'JPY', 100, 'Японских иен', '71.4240', '2020-03-13', '2020-03-14 21:11:40');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
