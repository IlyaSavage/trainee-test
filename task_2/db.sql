SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `Library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Authors`
--

CREATE TABLE `Authors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Authors`
--

INSERT INTO `Authors` (`id`, `name`, `surname`) VALUES
(1, 'Энтони', 'Берджесс'),
(2, 'Фридрих', 'Ницше'),
(3, 'Антон', 'Чехов');

-- --------------------------------------------------------

--
-- Структура таблицы `Books`
--

CREATE TABLE `Books` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Books`
--

INSERT INTO `Books` (`id`, `name`) VALUES
(1, 'Заводной апельсин'),
(2, '1985'),
(3, 'Семя желания'),
(4, 'Так говорил Заратустра'),
(5, 'Человеческое, слишком человеческое'),
(6, 'Ванька'),
(7, 'Дома'),
(8, 'Хамелеон'),
(9, 'Драма'),
(10, 'Смерть чиновника'),
(11, 'Тоска'),
(12, 'Каштанка');

-- --------------------------------------------------------

--
-- Структура таблицы `Books_Authors`
--

CREATE TABLE `Books_Authors` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Books_Authors`
--

INSERT INTO `Books_Authors` (`id`, `book_id`, `author_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 2),
(6, 6, 3),
(7, 7, 3),
(8, 8, 3),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Authors`
--
ALTER TABLE `Authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Books`
--
ALTER TABLE `Books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Books_Authors`
--
ALTER TABLE `Books_Authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `author_id` (`author_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Authors`
--
ALTER TABLE `Authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `Books`
--
ALTER TABLE `Books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `Books_Authors`
--
ALTER TABLE `Books_Authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Books_Authors`
--
ALTER TABLE `Books_Authors`
  ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `Books` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `books_authors_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `Authors` (`id`) ON UPDATE CASCADE;