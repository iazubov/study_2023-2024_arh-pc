---
## Front matter
title: "Лабораторная работа №5"
subtitle: "Отчет"
author: "Зубов Иван Александрович"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение практических навыков работы в Midnight Commander. Освоение инструкций
языка ассемблера mov и int.

# Выполнение лабораторной работы

Открываем Midnight Commander c помощью команды mc

![Вводим в консоль команду mc](image/1.png){#fig:001 width=70%}

Переходим в каталог, созданный при выполнении 4 ЛБ и создаем каталог lab05
![создаем каталог lab05](image/2.png){#fig:002 width=70%}

Создаем файл lab5-1.asm

![Воспользуемся командой touch](image/3.png){#fig:003 width=70%}

Открываем файл для редактирования и заполняем его по листингу

![Открываем файл функциональной клавишей, заполняем и сохраняем](image/4.png){#fig:004 width=70%}

Открывем файл для просмотра

![Открываем файл и убеждаемся, что файл содержит текст программы](image/5.png){#fig:005 width=70%}

Транслируем текст программы и запускаем исполняемый файл 

![Проверяем, как работает данная программа](image/6.png){#fig:006 width=70%}

Скачиваем файл со страницы курса

![Скачиваем файл](image/7.png){#fig:007 width=70%}

Копируем файл в нужную директорию

![Копируем скаченный файл](image/8.png){#fig:008 width=70%}

Создаем копию файла lab5-1.asm клавишей F6 и проверяем созданный файл

![Создаем копию файла](image/9.png){#fig:009 width=70%}

Открываем новый файл и заполняем его в соответствии с листингом

![Открываем и заполняем файл](image/10.png){#fig:010 width=70%}

Транслируем и запускаем новый файл

![Смотрим, как сработала программа](image/11.png){#fig:011 width=70%}

Снова открываем файл для редактирования и меняем sprintLF на
sprint

![Редактируем файл](image/12.png){#fig:012 width=70%}

Транслируем и запускаем файл

![Смотрим, как сработал программа и сравниваем с прошлой](image/13.png){#fig:013 width=70%}

Таким образом можем понять, что команда sprint выводит текст в той же
строке, а sprintLF переносит на новую строку.

# Задание для самостоятельной работы

Создаем копию файла lab5-1.asm и называем lab5-11

![Создаем копию файла lab5-1.asm](image/14.png){#fig:014 width=70%}

Редактируем файл, чтобы введеный текст с клавиатуры выводился в
консоль

![Редактируем файл](image/15.png){#fig:015 width=70%}

Транслируем файл и запускаем программу

![Проверяем правильность написания программы](image/16.png){#fig:016 width=70%}

Создаем копию файла lab5-2.asm и называем его lab5-22

![Создаем копию файла lab5-2.asm](image/17.png){#fig:017 width=70%}

Редактируем файл, чтобы введенный текст с клавиатуры выводился в
консоль

![Редактируем файл](image/18.png){#fig:018 width=70%}

Транслируем файл и запускаем программу

![Проверяем правильность написания программы](image/19.png){#fig:019 width=70%}

# Выводы

Мы приобрели навыки работы с Midnight Commander и освоили инструкцию
mov.


