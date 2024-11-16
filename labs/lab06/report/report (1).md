---
## Front matter
title: "Лабораторная работа №6"
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

Освоить арифметических инструкций языка ассемблера NASM и написать
программы для вычисления арифметических выражений с неизвестной.


# Выполнение лабораторной работы

Создаем каталог для программ ЛБ6,в нем создаем файл и с помощью команды touch создаем файл

![Создаем каталог с помощью командыmkdir и файл с помощью команды touch](image/1.png){#fig:001 width=70%}

Открываем файл в Midnight Commander и заполняем его в соответствии с
листингом 6.1
![Заполняем файл](image/2.png){#fig:002 width=70%}

Создаем исполняемый файл и запускаем его

![Запускаем файл и смотрим на его работу](image/3.png){#fig:003 width=70%}

Снова открываем файл для редактирования и убираем кавычки с числовых
значений

![Изменяем файл](image/4.png){#fig:004 width=70%}

Создаем исполняемый файл и запускаем его

![Запускаем файл и смотрим на его работу](image/5.png){#fig:005 width=70%}

Создаем новый файл в каталоге  и заполняем файл в соответствии с листингом 6.2

![Заполняем файл](image/6.png){#fig:006 width=70%}

Создаем исполняемый файл и запускаем его

![Смотрим на работу программы](image/7.png){#fig:007 width=70%}

Снова открываем файл для редактирования и убираем кавычки с числовых
значений

![Изменяем файл](image/8.png){#fig:008 width=70%}

Создаем исполняемый файл и запускаем его

![Смотрим на работу программы](image/9.png){#fig:009 width=70%}

Снова открываем файл для редактирования и меняем iprintLF на iprint

![Изменяем файл](image/10.png){#fig:010 width=70%}

Создаем исполняемый файл и запускаем его

![Смотрим, как сработала программа](image/11.png){#fig:011 width=70%}

Вывод функций iprintLF и iprint отличаются только тем, что LF переносит на
новую строку.

Создаем новый файл в каталоге, открываем файл и редактируем в соответствии с листингом 6.3

![Заполняем файл](image/12.png){#fig:012 width=70%}

Создаем исполняемый файл и запускаем его

![Смотрим на результат работы программы](image/13.png){#fig:013 width=70%}

Открываем файл и редактируем его для вычисления выражения f(�) = (4 � 6 +
2)/5

![Редактируем файл](image/14.png){#fig:014 width=70%}

Компилируем файл и запускаем программу

![Заполняем файл](image/15.png){#fig:015 width=70%}

Создаем новый файл в каталоге, открываем и  редактируем в соответствии с листингом 6.4

![Проверяем правильность написания программы](image/16.png){#fig:016 width=70%}

Компилируем файл и запускаем его

![Проверяем результат работы программы](image/17.png){#fig:017 width=70%}

#Ответы на вопросы
1 Строка “mov eax,rem” и строка “call sprint” отвечают за вывод на экран
сообщения ‘Ваш вариант:’.

2 Эти инструкции используются для чтения строки с вводом данных от поль-
зователя. Начальный адрес строки сохраняется в регистре ecx, а количество
символов в строке (максимальное количество символов, которое может быть считано) сохраняется в регистре edx. Затем вызывается процедура sread, которая выполняет чтение строки.

3 Инструкция “call atoi” используется для преобразования строки в целое
число.Она принимает адрес строки в регистре eax и возвращает полученное
число в регистре eax.

4 Строка “xor edx,edx” обнуляет регистр edx перед выполнением деления.
Строка “mov ebx,20” загружает значение 20 в регистр ebx. Строка “div ebx”
выполняет деление регистра eax на значение регистра ebx с сохранением
частного в регистре eax и остатка в регистре edx.

5 Остаток от деления записывается в регистр edx.

6 Инструкция “inc edx” используется для увеличения значения в регистре edx
на 1 В данном случае, она увеличивает остаток от деления на 1

7 Строка “mov eax,edx” передает значение остатка от деления в регистр eax.
Строка “call iprintLF” вызывает процедуру iprintLF для вывода значения на
экран вместе с переводом строки.

#Самостоятельная работа  

Создаем новый файл в каталоге,открываем файл и редактируем в соответствии с листингом 6.3

![Заполняем этот файл, чтобы решалось уравнение (8х-6)/2](image/18.png){#fig:018 width=70%}

Проверяем программу для х=1

![Смотрим как работает программа](image/19.png){#fig:019 width=70%}

# Выводы

Мы приобрели навыки создания исполнительных файлов для решения выражений и освоили арифметические инструкции в NASM.

