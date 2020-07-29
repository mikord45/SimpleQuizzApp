-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Gru 2019, 01:30
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `uzytkownicy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `ID` int(11) NOT NULL,
  `tekst` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `a` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `b` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `c` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `d` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `poprawna` int(11) NOT NULL,
  `poprawne` int(11) NOT NULL,
  `bledne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `pytania`
--

INSERT INTO `pytania` (`ID`, `tekst`, `a`, `b`, `c`, `d`, `poprawna`, `poprawne`, `bledne`) VALUES
(16, 'Różańcową tajemnicą chwalebną nie jest? (http://www.tvn24.pl)', 'wniebowzięcie Matki Bożej (http://www.tvn24.pl)', 'zmartwychwstanie Jezusa (http://www.tvn24.pl)', 'śmierć Jezusa na krzyżu (http://www.tvn24.pl)', 'zesłanie Ducha Świętego. (http://www.tvn24.pl)', 3, 3, 3),
(17, 'Z gry na jakim instrumencie słynie Czesław Mozil? (http://www.tvn24.pl)', 'na kornecie (http://www.tvn24.pl)', 'na akordeonie (http://www.tvn24.pl)', 'na djembe (http://www.tvn24.pl)', 'na ksylofonie (http://www.tvn24.pl)', 2, 3, 4),
(18, 'Ile to jest 1111 razy 1111, jeśli 1 razy 1 to 1, a 11 razy 11 to 121? (http://www.tvn24.pl)', '12 321 (http://www.tvn24.pl)', '1 234 321 (http://www.tvn24.pl)', '111 111 111 (http://www.tvn24.pl)', '123 454 321 (http://www.tvn24.pl)', 2, 0, 1),
(19, 'Skąd pochodzi Conan Barbarzyńca? (http://www.tvn24.pl)', 'z Rivii (http://www.tvn24.pl)', 'z Oz (http://www.tvn24.pl)', 'z Mordoru (http://www.tvn24.pl)', 'z Cimmerii (http://www.tvn24.pl)', 4, 1, 3),
(20, 'Odrażający drab z Kabaretu Starszych Panów dubeltówkę weźmie, wyjdzie i...: (http://www.tvn24.pl)', 'rach-ciach! (http://www.tvn24.pl)', 'buch, buch! (http://www.tvn24.pl)', 'z rur dwóch (http://www.tvn24.pl)', 'bum w brzuch (http://www.tvn24.pl)', 2, 1, 1),
(21, 'Komiksowym „dzieckiem” rysownika Boba Kane’a jest: (http://www.tvn24.pl)', 'Superman (http://www.tvn24.pl)', 'Batman (http://www.tvn24.pl)', 'Spider-Man (http://www.tvn24.pl)', 'Captain America (http://www.tvn24.pl)', 2, 1, 3),
(22, 'Rybą nie jest: (http://www.tvn24.pl)', 'świnka (http://www.tvn24.pl)', 'rozpiór (http://www.tvn24.pl)', 'krasnopiórka (http://www.tvn24.pl)', 'kraska (http://www.tvn24.pl)', 4, 1, 2),
(23, 'Kto jest mistrzem tego samego oręża, w jakim specjalizowała się mitologiczna Artemida? (http://www.tvn24.pl)', 'Zorro (http://www.tvn24.pl)', 'Legolas (http://www.tvn24.pl)', 'Don Kichot (http://www.tvn24.pl)', 'Longinus Podbipięta (http://www.tvn24.pl)', 2, 0, 4),
(24, 'Który aktor urodził się w roku opatentowania kinematografu braci Lumière? (http://www.tvn24.pl)', 'Rudolph Valentino (http://www.tvn24.pl)', 'Humphrey Bogart (http://www.tvn24.pl)', 'Charlie Chaplin (http://www.tvn24.pl)', 'Fred Astaire (http://www.tvn24.pl)', 1, 2, 0),
(25, 'Mowa w obronie poety Archiasza przeszła do historii jako jeden z najświetniejszych popisów retorycznych: (http://www.tvn24.pl)', 'Izokratesa (http://www.tvn24.pl)', 'Cycerona (http://www.tvn24.pl)', 'Demostenesa (http://www.tvn24.pl)', 'Kwintyliana (http://www.tvn24.pl)', 2, 0, 3),
(26, 'Kto był nadwornym malarzem króla Filipa IV Habsburga? (http://www.tvn24.pl)', 'Marcello Bacciarelli (http://www.tvn24.pl)', 'Jan van Eyck (http://www.tvn24.pl)', 'Diego Velázquez (http://www.tvn24.pl)', 'Jacques-Louis David (http://www.tvn24.pl)', 3, 0, 2),
(27, 'Likier maraskino produkuje się z maraski, czyli odmiany: (http://www.tvn24.pl)', 'wiśni (http://www.tvn24.pl)', 'jabłoni (http://www.tvn24.pl)', 'figi (http://www.tvn24.pl)', 'gruszy (http://www.tvn24.pl)', 1, 6, 0),
(28, 'Który utwór Juliusza Słowackiego napisany jest prozą? (http://www.tvn24.pl)', '\"Godzina myśli\" (http://www.tvn24.pl)', '\"W Szwajcarii\" (http://www.tvn24.pl)', '\"Anhelli\" (http://www.tvn24.pl)', '\"Arab\" (http://www.tvn24.pl)', 3, 0, 6),
(29, 'Płetwą grzbietową nie pruje wody: (http://www.tvn24.pl)', 'długoszpar (http://www.tvn24.pl)', 'kosogon (http://www.tvn24.pl)', 'orka (http://www.tvn24.pl)', 'wal grenlandzki (http://www.tvn24.pl)', 4, 0, 5),
(30, '\"Wątróbka z cebulką (...) jest zakąską doskonałą. Aby ją przyrządzić, należy kupić samochód i pędzić nim póty, aż się kogoś przejedzie\". To Lem i... (http://www.tvn24.pl)', '\"Solaris\" (http://www.tvn24.pl)', '\"Opowieści o pilocie Pirxie\" (http://www.tvn24.pl)', '\"Dyktanda czyli…\" (http://www.tvn24.pl)', '\"Szpital Przemienienia\" (http://www.tvn24.pl)', 3, 0, 2),
(31, 'Ryś polski, łabędź rostowski, saksoński bocian i wywrotek smoleński to: (http://www.tvn24.pl)', 'rasy gołębi (http://www.tvn24.pl)', 'rasy kur (http://www.tvn24.pl)', 'chrząszcze (http://www.tvn24.pl)', 'akrobacje na deskorolce (http://www.tvn24.pl)', 1, 1, 0),
(32, 'Co według Leszka Kołakowskiego jest sklepieniem domu, w którym duch ludzki mieszka? (http://www.tvn24.pl)', 'Rozum (http://www.tvn24.pl)', 'Bóg (http://www.tvn24.pl)', 'Miłość (http://www.tvn24.pl)', 'Czas (http://www.tvn24.pl)', 4, 1, 6),
(33, 'Ikoną czerwcowych wyborów z 1989 r. było zdjęcie z Wałęsą podpisane \"Głosuj na…\". Kto z tzw. drużyny Lecha go nie miał? (http://www.tvn24.pl)', 'Jacek Kuroń (http://www.tvn24.pl)', 'Hanna Suchocka (http://www.tvn24.pl)', 'Jarosław Kaczyński (http://www.tvn24.pl)', 'Lech Kaczyński (http://www.tvn24.pl)', 4, 1, 3),
(34, 'Który instrument stroi muzyk? (http://www.tvn24.pl)', 'Tamburyn (http://www.tvn24.pl)', 'Kocioł (http://www.tvn24.pl)', 'Okarynę (http://www.tvn24.pl)', 'Czynele (http://www.tvn24.pl)', 2, 0, 2),
(35, 'Który ssak się nie poci? (http://www.tvn24.pl)', 'owca (http://www.tvn24.pl)', 'koń (http://www.tvn24.pl)', 'człowiek (http://www.tvn24.pl)', 'królik (http://www.tvn24.pl)', 4, 1, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `user` text COLLATE utf8_polish_ci NOT NULL,
  `pass` text COLLATE utf8_polish_ci NOT NULL,
  `poprawne` int(11) NOT NULL,
  `bledne` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `user`, `pass`, `poprawne`, `bledne`) VALUES
(13, 'elowitam', '$2y$10$xhoEaycNLqt4Gdgu4XqJWOOqZxXjovBQ7EeyndDqwIhaKVHqxZIW6', 0, 0),
(14, 'uzytkownik1', '$2y$10$Nkn82gMrX6ZHwQVYDIepKOdXkbncTL0U8RUPHVUM1APrqCqQ.xtrS', 10, 0),
(24, 'wlowitam', '$2y$10$Tojskox822pVSxER9FTLleTX8m4KES9iqqoku4ZDLvHq.ItER7iCK', 0, 0),
(25, 'a', '$2y$10$qJTweSCruPAgvcwOYIPifOVdgy62DVYvqej8UM.DOASqhVkS3lpRy', 3, 7),
(23, 'administratorw', '$2y$10$Zq3MUEienakyYx8YzcsrV.SI.JG1zrdQNFDvUlDIx6olDsw6hTQP.', 0, 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `pytania`
--
ALTER TABLE `pytania`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
