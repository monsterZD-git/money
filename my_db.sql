-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 16 2020 г., 18:13
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
(522, 392, 'JPY', 100, 'Японских иен', '71.4240', '2020-03-13', '2020-03-14 21:11:40'),
(523, 36, 'AUD', 1, 'Австралийский доллар', '16.0102', '2002-03-02', '2020-03-15 12:07:11'),
(524, 826, 'GBP', 1, 'Фунт стерлингов Соединенного королевства', '43.8254', '2002-03-02', '2020-03-15 12:07:11'),
(525, 974, 'BYR', 1000, 'Белорусских рублей', '18.4290', '2002-03-02', '2020-03-15 12:07:11'),
(526, 208, 'DKK', 10, 'Датских крон', '36.1010', '2002-03-02', '2020-03-15 12:07:11'),
(527, 840, 'USD', 1, 'Доллар США', '30.9436', '2002-03-02', '2020-03-15 12:07:11'),
(528, 978, 'EUR', 1, 'Евро', '26.8343', '2002-03-02', '2020-03-15 12:07:11'),
(529, 352, 'ISK', 100, 'Исландских крон', '30.7958', '2002-03-02', '2020-03-15 12:07:12'),
(530, 398, 'KZT', 100, 'Казахстанских тенге', '20.3393', '2002-03-02', '2020-03-15 12:07:12'),
(531, 124, 'CAD', 1, 'Канадский доллар', '19.3240', '2002-03-02', '2020-03-15 12:07:12'),
(532, 578, 'NOK', 10, 'Норвежских крон', '34.7853', '2002-03-02', '2020-03-15 12:07:12'),
(533, 960, 'XDR', 1, 'СДР (специальные права заимствования)', '38.4205', '2002-03-02', '2020-03-15 12:07:12'),
(534, 702, 'SGD', 1, 'Сингапурский доллар', '16.8878', '2002-03-02', '2020-03-15 12:07:12'),
(535, 792, 'TRL', 1000000, 'Турецких лир', '22.2616', '2002-03-02', '2020-03-15 12:07:12'),
(536, 980, 'UAH', 10, 'Украинских гривен', '58.1090', '2002-03-02', '2020-03-15 12:07:12'),
(537, 752, 'SEK', 10, 'Шведских крон', '29.5924', '2002-03-02', '2020-03-15 12:07:12'),
(538, 756, 'CHF', 1, 'Швейцарский франк', '18.1861', '2002-03-02', '2020-03-15 12:07:12'),
(539, 392, 'JPY', 100, 'Японских иен', '23.1527', '2002-03-02', '2020-03-15 12:07:13'),
(540, 36, 'AUD', 1, 'Австралийский доллар', '16.0102', '2002-03-02', '2020-03-15 13:12:44'),
(541, 826, 'GBP', 1, 'Фунт стерлингов Соединенного королевства', '43.8254', '2002-03-02', '2020-03-15 13:12:44'),
(542, 974, 'BYR', 1000, 'Белорусских рублей', '18.4290', '2002-03-02', '2020-03-15 13:12:44'),
(543, 208, 'DKK', 10, 'Датских крон', '36.1010', '2002-03-02', '2020-03-15 13:12:44'),
(544, 840, 'USD', 1, 'Доллар США', '30.9436', '2002-03-02', '2020-03-15 13:12:44'),
(545, 978, 'EUR', 1, 'Евро', '26.8343', '2002-03-02', '2020-03-15 13:12:45'),
(546, 352, 'ISK', 100, 'Исландских крон', '30.7958', '2002-03-02', '2020-03-15 13:12:45'),
(547, 398, 'KZT', 100, 'Казахстанских тенге', '20.3393', '2002-03-02', '2020-03-15 13:12:45'),
(548, 124, 'CAD', 1, 'Канадский доллар', '19.3240', '2002-03-02', '2020-03-15 13:12:45'),
(549, 578, 'NOK', 10, 'Норвежских крон', '34.7853', '2002-03-02', '2020-03-15 13:12:45'),
(550, 960, 'XDR', 1, 'СДР (специальные права заимствования)', '38.4205', '2002-03-02', '2020-03-15 13:12:45'),
(551, 702, 'SGD', 1, 'Сингапурский доллар', '16.8878', '2002-03-02', '2020-03-15 13:12:45'),
(552, 792, 'TRL', 1000000, 'Турецких лир', '22.2616', '2002-03-02', '2020-03-15 13:12:45'),
(553, 980, 'UAH', 10, 'Украинских гривен', '58.1090', '2002-03-02', '2020-03-15 13:12:45'),
(554, 752, 'SEK', 10, 'Шведских крон', '29.5924', '2002-03-02', '2020-03-15 13:12:45'),
(555, 756, 'CHF', 1, 'Швейцарский франк', '18.1861', '2002-03-02', '2020-03-15 13:12:45'),
(556, 392, 'JPY', 100, 'Японских иен', '23.1527', '2002-03-02', '2020-03-15 13:12:45'),
(557, 36, 'AUD', 1, 'Австралийский доллар', '16.0102', '2002-03-02', '2020-03-15 22:19:51'),
(558, 826, 'GBP', 1, 'Фунт стерлингов Соединенного королевства', '43.8254', '2002-03-02', '2020-03-15 22:19:51'),
(559, 974, 'BYR', 1000, 'Белорусских рублей', '18.4290', '2002-03-02', '2020-03-15 22:19:51'),
(560, 208, 'DKK', 10, 'Датских крон', '36.1010', '2002-03-02', '2020-03-15 22:19:51'),
(561, 840, 'USD', 1, 'Доллар США', '30.9436', '2002-03-02', '2020-03-15 22:19:51'),
(562, 978, 'EUR', 1, 'Евро', '26.8343', '2002-03-02', '2020-03-15 22:19:51'),
(563, 352, 'ISK', 100, 'Исландских крон', '30.7958', '2002-03-02', '2020-03-15 22:19:51'),
(564, 398, 'KZT', 100, 'Казахстанских тенге', '20.3393', '2002-03-02', '2020-03-15 22:19:51'),
(565, 124, 'CAD', 1, 'Канадский доллар', '19.3240', '2002-03-02', '2020-03-15 22:19:52'),
(566, 578, 'NOK', 10, 'Норвежских крон', '34.7853', '2002-03-02', '2020-03-15 22:19:52'),
(567, 960, 'XDR', 1, 'СДР (специальные права заимствования)', '38.4205', '2002-03-02', '2020-03-15 22:19:52'),
(568, 702, 'SGD', 1, 'Сингапурский доллар', '16.8878', '2002-03-02', '2020-03-15 22:19:52'),
(569, 792, 'TRL', 1000000, 'Турецких лир', '22.2616', '2002-03-02', '2020-03-15 22:19:52'),
(570, 980, 'UAH', 10, 'Украинских гривен', '58.1090', '2002-03-02', '2020-03-15 22:19:52'),
(571, 752, 'SEK', 10, 'Шведских крон', '29.5924', '2002-03-02', '2020-03-15 22:19:52'),
(572, 756, 'CHF', 1, 'Швейцарский франк', '18.1861', '2002-03-02', '2020-03-15 22:19:52'),
(573, 392, 'JPY', 100, 'Японских иен', '23.1527', '2002-03-02', '2020-03-15 22:19:52'),
(574, 36, 'AUD', 1, 'Австралийский доллар', '16.0102', '2002-03-02', '2020-03-16 09:09:32'),
(575, 826, 'GBP', 1, 'Фунт стерлингов Соединенного королевства', '43.8254', '2002-03-02', '2020-03-16 09:09:32'),
(576, 974, 'BYR', 1000, 'Белорусских рублей', '18.4290', '2002-03-02', '2020-03-16 09:09:32'),
(577, 208, 'DKK', 10, 'Датских крон', '36.1010', '2002-03-02', '2020-03-16 09:09:32'),
(578, 840, 'USD', 1, 'Доллар США', '30.9436', '2002-03-02', '2020-03-16 09:09:33'),
(579, 978, 'EUR', 1, 'Евро', '26.8343', '2002-03-02', '2020-03-16 09:09:33'),
(580, 352, 'ISK', 100, 'Исландских крон', '30.7958', '2002-03-02', '2020-03-16 09:09:33'),
(581, 398, 'KZT', 100, 'Казахстанских тенге', '20.3393', '2002-03-02', '2020-03-16 09:09:33'),
(582, 124, 'CAD', 1, 'Канадский доллар', '19.3240', '2002-03-02', '2020-03-16 09:09:33'),
(583, 578, 'NOK', 10, 'Норвежских крон', '34.7853', '2002-03-02', '2020-03-16 09:09:33'),
(584, 960, 'XDR', 1, 'СДР (специальные права заимствования)', '38.4205', '2002-03-02', '2020-03-16 09:09:33'),
(585, 702, 'SGD', 1, 'Сингапурский доллар', '16.8878', '2002-03-02', '2020-03-16 09:09:33'),
(586, 792, 'TRL', 1000000, 'Турецких лир', '22.2616', '2002-03-02', '2020-03-16 09:09:33'),
(587, 980, 'UAH', 10, 'Украинских гривен', '58.1090', '2002-03-02', '2020-03-16 09:09:33'),
(588, 752, 'SEK', 10, 'Шведских крон', '29.5924', '2002-03-02', '2020-03-16 09:09:33'),
(589, 756, 'CHF', 1, 'Швейцарский франк', '18.1861', '2002-03-02', '2020-03-16 09:09:33'),
(590, 392, 'JPY', 100, 'Японских иен', '23.1527', '2002-03-02', '2020-03-16 09:09:33');

-- --------------------------------------------------------

--
-- Структура таблицы `currency_code`
--

CREATE TABLE `currency_code` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `EngName` varchar(255) NOT NULL,
  `Nominal` int(11) NOT NULL,
  `ParentCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `currency_code`
--

INSERT INTO `currency_code` (`id`, `Name`, `EngName`, `Nominal`, `ParentCode`) VALUES
(3, 'Австралийский доллар', 'Australian Dollar', 1, 'R01010'),
(4, 'Австрийский шиллинг', 'Austrian Shilling', 1000, 'R01015'),
(5, 'Азербайджанский манат', 'Azerbaijan Manat', 1, 'R01020'),
(6, 'Фунт стерлингов Соединенного королевства', 'British Pound Sterling', 1, 'R01035'),
(7, 'Ангольская новая кванза', 'Angolan new Kwanza', 100000, 'R01040'),
(8, 'Армянский драм', 'Armenia Dram', 1000, 'R01060'),
(9, 'Белорусский рубль', 'Belarussian Ruble', 1, 'R01090'),
(10, 'Бельгийский франк', 'Belgium Franc', 1000, 'R01095'),
(11, 'Болгарский лев', 'Bulgarian lev', 1, 'R01100'),
(12, 'Бразильский реал', 'Brazil Real', 1, 'R01115'),
(13, 'Венгерский форинт', 'Hungarian Forint', 100, 'R01135'),
(14, 'Гонконгский доллар', 'Hong Kong Dollar', 10, 'R01200'),
(15, 'Греческая драхма', 'Greek Drachma', 10000, 'R01205'),
(16, 'Датская крона', 'Danish Krone', 10, 'R01215'),
(17, 'Доллар США', 'US Dollar', 1, 'R01235'),
(18, 'Евро', 'Euro', 1, 'R01239'),
(19, 'Индийская рупия', 'Indian Rupee', 100, 'R01270'),
(20, 'Ирландский фунт', 'Irish Pound', 100, 'R01305'),
(21, 'Исландская крона', 'Iceland Krona', 10000, 'R01310'),
(22, 'Испанская песета', 'Spanish Peseta', 10000, 'R01315'),
(23, 'Итальянская лира', 'Italian Lira', 100000, 'R01325'),
(24, 'Казахстанский тенге', 'Kazakhstan Tenge', 100, 'R01335'),
(25, 'Канадский доллар', 'Canadian Dollar', 1, 'R01350'),
(26, 'Киргизский сом', 'Kyrgyzstan Som', 100, 'R01370'),
(27, 'Китайский юань', 'China Yuan', 10, 'R01375'),
(28, 'Кувейтский динар', 'Kuwaiti Dinar', 10, 'R01390'),
(29, 'Латвийский лат', 'Latvian Lat', 1, 'R01405'),
(30, 'Ливанский фунт', 'Lebanese Pound', 100000, 'R01420'),
(31, 'Литовский лит', 'Lithuanian Lita', 1, 'R01435'),
(32, 'Литовский талон', 'Lithuanian talon', 1, 'R01435'),
(33, 'Молдавский лей', 'Moldova Lei', 10, 'R01500'),
(34, 'Немецкая марка', 'Deutsche Mark', 1, 'R01510'),
(35, 'Немецкая марка', 'Deutsche Mark', 100, 'R01510'),
(36, 'Нидерландский гульден', 'Netherlands Gulden', 100, 'R01523'),
(37, 'Норвежская крона', 'Norwegian Krone', 10, 'R01535'),
(38, 'Польский злотый', 'Polish Zloty', 1, 'R01565'),
(39, 'Португальский эскудо', 'Portuguese Escudo', 10000, 'R01570'),
(40, 'Румынский лей', 'Romanian Leu', 10000, 'R01585'),
(41, 'Румынский лей', 'Romanian Leu', 10, 'R01585'),
(42, 'СДР (специальные права заимствования)', 'SDR', 1, 'R01589'),
(43, 'Сингапурский доллар', 'Singapore Dollar', 1, 'R01625'),
(44, 'Суринамский доллар', 'Surinam Dollar', 1, 'R01665'),
(45, 'Таджикский сомони', 'Tajikistan Ruble', 10, 'R01670'),
(46, 'Таджикский рубл', 'Tajikistan Ruble', 10, 'R01670'),
(47, 'Турецкая лира', 'Turkish Lira', 1, 'R01700'),
(48, 'Туркменский манат', 'Turkmenistan Manat', 10000, 'R01710'),
(49, 'Новый туркменский манат', 'New Turkmenistan Manat', 1, 'R01710'),
(50, 'Узбекский сум', 'Uzbekistan Sum', 1000, 'R01717'),
(51, 'Украинская гривна', 'Ukrainian Hryvnia', 10, 'R01720'),
(52, 'Украинский карбованец', 'Ukrainian Hryvnia', 1, 'R01720'),
(53, 'Финляндская марка', 'Finnish Marka', 100, 'R01740'),
(54, 'Французский франк', 'French Franc', 1000, 'R01750'),
(55, 'Чешская крона', 'Czech Koruna', 10, 'R01760'),
(56, 'Шведская крона', 'Swedish Krona', 10, 'R01770'),
(57, 'Швейцарский франк', 'Swiss Franc', 1, 'R01775'),
(58, 'ЭКЮ', 'ECU', 1, 'R01790'),
(59, 'Эстонская крона', 'Estonian Kroon', 10, 'R01795'),
(60, 'Югославский новый динар', 'Yugoslavian Dinar', 1, 'R01804'),
(61, 'Южноафриканский рэнд', 'S.African Rand', 10, 'R01810'),
(62, 'Вон Республики Корея', 'South Korean Won', 1000, 'R01815'),
(63, 'Японская иена', 'Japanese Yen', 100, 'R01820');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `currency_code`
--
ALTER TABLE `currency_code`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT для таблицы `currency_code`
--
ALTER TABLE `currency_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
