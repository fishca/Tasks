[![Stars](https://img.shields.io/github/stars/BlizD/Tasks.svg?label=Github%20%E2%98%85&a)](https://github.com/BlizD/Tasks/stargazers)
[![Release](https://img.shields.io/github/tag/BlizD/Tasks.svg?label=Last%20release&a)](https://github.com/BlizD/Tasks/releases)
[![Открытый чат проекта https://gitter.im/Tasks_/Lobby](https://badges.gitter.im/Tasks_/Lobby.svg)](https://gitter.im/Tasks_/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

# Управление задачами: Канбан доска #

Конфигурация "Управление задачами" с использованием библиотеки стандартных подсистем. Канбан доска

Полное описание смотрим на инфостарт: (http://infostart.ru/public/552480/)
Служба поддержки (ServiceDesk): https://infostart.ru/public/788003/
Почта проекта:  **sdesk1c@bk.ru**

## Скачать последний релиз ## 

* https://github.com/BlizD/Tasks/releases/download/1.0.4.002/Tasks_1.0.4.002.zip - скачать последний релиз;
* https://github.com/BlizD/Tasks/releases - все релизы.

## Статистика использование программы за 8 месяцев ## 

* https://youtu.be/PMvp0UqKybk - Статистика использования в период с Ноября 16 по Июнь 17;

Обновил картинку, статистика за год использования:

![tasksfortheyear1](https://user-images.githubusercontent.com/10989306/32988224-b89f859c-cd10-11e7-8a52-1a9480720824.png)

## Видео инструкции (очень короткие самое длинное это 8 мин) ##

* https://youtu.be/r6tNabne97s - Общая схема работы службы поддержки (ServiceDesk);
* https://youtu.be/tqTCGAFS4LQ - Настройка службы поддержки (ServiceDesk);
* https://youtu.be/kwgkH9lPBVo - канбан доска, перетаскивание карточек, произвольные отборы, видимость колонок;
* https://youtu.be/XzWCFyrIPcI - как работать с документом "Выпуск релиза";
* https://youtu.be/mBQWm7G9U18 - как указать WIP лимит; 
* https://youtu.be/PMvp0UqKybk - Статистика использования в период с Ноября 16 по Июнь 17;
* https://youtu.be/eoKuUn8w1r8 - активность пользователя;
* https://youtu.be/gS1Gi6Acjt4 - как добавить задачу, что такое основная задача, иерархия задач; 
* https://youtu.be/eYvjlt5P0P4 - как следить за чужой задачей, чеклист/комментарии в задаче;
* https://youtu.be/uRX_iuWirtI - как добавить свой реквизит в задачу без программирования; 
* https://youtu.be/uRX_iuWirtI - как указать заметку для задачи, которая будет видна только Вам; 
* https://youtu.be/jgNKw-6sCeQ - как быстро получить все открытые вопросы по задачам;
* https://youtu.be/2VGnRisLa4Y - как вести свои текущие дела; 
* https://youtu.be/khAwpz3eMMI - как ввести описания задачи с помощью Markdown;
* https://youtu.be/vbdx8JhhDac - связь изменений в метаданных и задач, настройка загрузки изменений из хранилища 1с;
* https://youtu.be/ILI_-HaBxM8 - как установить конфигурацию и как настроить отправку уведомлений; 
* (пока нет видео, но это уже есть в конфигурации) - как добавить свои статусы задач;
* (пока нет видео, но это уже есть в конфигурации) - как указывать произвольные цвета для задач;
* (пока нет видео, но это уже есть в конфигурации) - как указывать фактические, плановые, часы к оплате в задаче;
* (пока нет видео, но это уже есть в конфигурации) - как включить версионирование для задач;
* (пока нет видео, но это уже есть в конфигурации) - как добавить напоминание о задаче;
* (пока нет видео, но это уже есть в конфигурации) - как прикрепить файл к задаче;

##  Если вы хотите доработать Tasks, добро пожаловать :)

##  Пошаговая инструкцию как доработать конфигурацию

* https://infostart.ru/public/691382/ - Github и 1С. Пошаговая инструкция на конкретном примере
* Tasks\docs\Как дорабатывать конфигурацию выложенную на Github_261017.docx

##  Краткая инструкция

Нужно соблюсти очень простые правила:

1. Поискать задачу в списке задач (issues) проекта https://github.com/BlizD/Tasks/issues
1. Если нет уже существующей задачи, создайте новую, в которой опишите новые требования. В этой задаче можно будет обсудить как само требование, так и реализацию.
    1. Возможно, Ваше требование уже реализовано или может быть реализован другим способом, отличным от придуманного Вами.
1. Использовать платформу 8.3.9.1850
1. Сделайте fork проекта с ветки "develope";
    1. Если Вы уже делали fork ранее и хотите получить обновление в свой fork из ветки "develope", тогда необходимо сделать следующее (если используется SourceTree):
    * Меню - Репозитарий - Добавить внешний репозитарий;
    * После этого жмем Получить выбираем внешний репозитарий;
1. Получите свою локальную копию;
1. Выполняете задачу на своей локальной копии;
1. Далее сделайте pull-request в проект. https://github.com/BlizD/Tasks/pulls;
    1. ВАЖНО: **выбирайте ветку `features`, а не `master` или `develope`**;
    1. ВАЖНО: **убедитесь, что Ваш fork синхронизирован с оригинальным репозиторием** `develope`

##  Wiki
* Как, когда и кому отправляются уведомленияи - https://github.com/BlizD/Tasks/wiki/Уведомления