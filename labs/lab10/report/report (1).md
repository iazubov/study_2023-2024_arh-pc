---
## Front matter
title: "Отчёта по лабораторной работе №10"
subtitle: "Работа с файлами средствами Nasm."
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
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
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
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобрести навыки написания программ для работы с файлам, научиться управлять доступом к файлам.

# Выполнение лабораторной работы

Создаем каталог для программ ЛБ10, и в нем создаем файлы (рис. @fig:001).

![Создаем каталог с помощью команды mkdir и файлы с помощью команды touch](image/1.png){#fig:001 width=70%}

Открываем файл в Midnight Commander и заполняем его в соответствии с листингом 10.1 (рис. @fig:002).

![Заполняем файл](image/2.png){#fig:002 width=70%}

Создаем исполняемый файл и запускаем его (рис. @fig:003).

![Запускаем файл и проверяем его работу](image/3.png){#fig:003 width=70%}

Изменяем права доступа к файлу, запретив его выполнение. Пробуем запустить файл (рис. @fig:004).

![Используем команду chmod для установки нужных прав, после этого пытаемся запустить файл](image/4.png){#fig:004 width=70%}

Выдало: отказано в доступе. Значит мы поставили правильный запрет на выполнение.

Изменяем права доступа к файлу с исходным текстом программы, добавив права на исполнение. Пробуем запустить файл (рис. @fig:005).

![Используем команду chmod для установки нужных прав, после этого пытаемся запустить файл](image/5.png){#fig:005 width=70%}

lab10-1.asm является файлом с исходным кодом программы на языке ассемблера, искусственно добавление права на исполнение не даст ожидаемого результата. Такие файлы нужно компилировать или ассемблировать в машинный код, а затем выполнять.

ВАРИАНТ 20

Предоставляем права доступа к 2ум файлам, согласно варианту 20 в символьном и двоичном виде, затем проверяем работу команд. (рис. @fig:006).

![Используем команду chmod для установки нужных прав, после этого проверяем правильность выполнения командой ls -l](image/6.png){#fig:006 width=70%}

## Задание для самостоятельной работы

Создаем новый файл (рис. @fig:007).

![Создаем файл командой touch](image/7.png){#fig:007 width=70%}

Пишем программу, которая выполнит представленный список действий (рис. @fig:008).

![Пишем программу в midnight commander](image/8.png){#fig:008 width=70%}

Создаем исполняевый файл и запускаем его, после этого проверяем создался ли новый файл, затем смотрим, как он заполнен (рис. @fig:009).

![Проверяем работу программы](image/9.png){#fig:009 width=70%}

# Выводы

Мы научились писать программы для работы с файлам и научились предоставлять права доступа к файлам.
