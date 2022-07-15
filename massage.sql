-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 20 2021 г., 19:25
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `massage`
--

-- --------------------------------------------------------

--
-- Структура таблицы `anketa`
--

CREATE TABLE `anketa` (
  `anketa_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `social_network` varchar(50) DEFAULT NULL,
  `source_of_knowledge` enum('Facebook/Instagram','Рекомендация знакомых','Сайт') NOT NULL,
  `present` enum('Телефонный звонок','Смс сообщение','Viber') NOT NULL,
  `heart` varchar(50) DEFAULT NULL,
  `respiratory_system` varchar(200) DEFAULT NULL,
  `genitourinary_system` varchar(200) DEFAULT NULL,
  `digestive_system` varchar(200) DEFAULT NULL,
  `musculoskeletal_system` varchar(200) DEFAULT NULL,
  `allergy` varchar(200) DEFAULT NULL,
  `blood_diseases` varchar(200) DEFAULT NULL,
  `hormonal_disorders` varchar(200) DEFAULT NULL,
  `epilepsy` varchar(200) DEFAULT NULL,
  `vascular_disease` varchar(200) DEFAULT NULL,
  `skin_diseases` varchar(200) DEFAULT NULL,
  `any_intervention` varchar(200) DEFAULT NULL,
  `cure` varchar(200) NOT NULL,
  `gestational_age` int(11) DEFAULT NULL,
  `lactation` enum('Да','Нет') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `anketa`
--

INSERT INTO `anketa` (`anketa_id`, `name`, `date_of_birth`, `social_network`, `source_of_knowledge`, `present`, `heart`, `respiratory_system`, `genitourinary_system`, `digestive_system`, `musculoskeletal_system`, `allergy`, `blood_diseases`, `hormonal_disorders`, `epilepsy`, `vascular_disease`, `skin_diseases`, `any_intervention`, `cure`, `gestational_age`, `lactation`) VALUES
(1, 'Дейнеко Єгор Русланович', '2021-06-02', '@yegordeyneko', 'Рекомендация знакомых', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL),
(2, 'Дударенко Божена Андріївна', '2021-06-14', '@kitsa', 'Рекомендация знакомых', 'Телефонный звонок', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `review`
--

CREATE TABLE `review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `text` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `anketa`
--
ALTER TABLE `anketa`
  ADD UNIQUE KEY `anketa_id` (`anketa_id`);

--
-- Индексы таблицы `review`
--
ALTER TABLE `review`
  ADD UNIQUE KEY `client_id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `anketa`
--
ALTER TABLE `anketa`
  MODIFY `anketa_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
