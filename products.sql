-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 11 2022 г., 12:31
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vedita`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `ID` int NOT NULL COMMENT 'Идентификатор',
  `PRODUCT_ID` int NOT NULL COMMENT 'Идентификатор товара',
  `PRODUCT_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Название',
  `PRODUCT_PRICE` int NOT NULL COMMENT 'Стоимость',
  `PRODUCT_ARTICLE` int NOT NULL COMMENT 'Артикул',
  `PRODUCT_QUANTITY` int NOT NULL COMMENT 'Количество',
  `DATE_CREATE` date NOT NULL COMMENT 'Дата',
  `Hidden` tinyint(1) NOT NULL COMMENT 'Скрытый'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`ID`, `PRODUCT_ID`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `PRODUCT_ARTICLE`, `PRODUCT_QUANTITY`, `DATE_CREATE`, `Hidden`) VALUES
(1, 331, 'Смартфон DEXP G450 One 16 ГБ красный', 3666, 4144, 3, '2022-04-09', 0),
(2, 332, 'Смартфон DEXP G450 One 16 ГБ синий', 3800, 4145, 6, '2022-04-07', 0),
(3, 113, '5.45\" Смартфон Itel A27 32 ГБ серый', 7800, 377, 6, '2022-04-21', 0),
(4, 222, '6.26\" Смартфон Black Fox B9 Fox 32 ГБ бирюзовый', 8000, 1313, 15, '2022-04-20', 0),
(5, 225, '6.43\" Смартфон Xiaomi Redmi Note 11 128 ГБ голубой', 22000, 1553, 13, '2022-04-09', 1),
(6, 227, '6.4\" Смартфон realme 9 Pro+ 128 ГБ зеленый', 31000, 1412, 6, '2022-04-05', 1),
(8, 106, '6.44\" Смартфон Vivo V23 5G 128 ГБ черный', 51000, 5712, 4, '2022-04-07', 0),
(9, 199, '6.9\" Смартфон Huawei P50 Pocket 512 ГБ золотистый', 150000, 1112, 4, '2022-04-08', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор', AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
