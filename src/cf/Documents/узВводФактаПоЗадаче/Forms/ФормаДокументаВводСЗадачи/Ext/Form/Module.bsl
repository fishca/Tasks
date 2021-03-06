﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Объект.Дата = ТекущаяДата();
	//Павлюков
	ДатаОкончания = Объект.Дата;
	
	Если Параметры.Свойство("Задача") Тогда 
		Объект.Задача = Параметры.Задача;
	КонецЕсли;
	
	Если Параметры.Свойство("Исполнитель") Тогда 
		Объект.Исполнитель = Параметры.Исполнитель;
	КонецЕсли;
	
	Если Параметры.Свойство("Примечание") Тогда 
		Примечание = Параметры.Примечание;
	КонецЕсли;	
	
	Если НЕ ЗначениеЗаполнено(Объект.Исполнитель) Тогда
		Объект.Исполнитель = Пользователи.ТекущийПользователь();
	Конецесли;
	
	Спринт = Справочники.узСпринты.ПолучитьТекущийСпринтДляЗадачи(КонецДня(Объект.Дата), Объект.Задача);
	
КонецПроцедуры

&НаКлиенте
Процедура ПередЗаписью(Отказ, ПараметрыЗаписи)
	
	ЗаполнитьРеквизитыЗадачиНаСервере();
	
КонецПроцедуры

&НаСервере
Процедура ЗаполнитьРеквизитыЗадачиНаСервере()
	
	СтрокаДанных = Объект.Данные.Добавить();
	СтрокаДанных.Спринт = Спринт;
	СтрокаДанных.ДатаНачала = ДатаНачала;
	СтрокаДанных.ДатаОкончания = ДатаОкончания;
	СтрокаДанных.Факт = Факт;
	СтрокаДанных.Примечание = Примечание;
	
КонецПроцедуры

&НаКлиенте
Процедура ФактПриИзменении(Элемент)
	
	ДатаНачала = ДатаОкончания - Факт * 3600;
	
КонецПроцедуры

&НаКлиенте
Процедура ПослеЗаписи(ПараметрыЗаписи)
	Оповестить("узВводФактаПоЗадачеЗаписан");
КонецПроцедуры

// +++ 79Vlad  25.10.2018
&НаКлиенте
Процедура ДатаНачалаОткрытие(Элемент, СтандартнаяОбработка)
	СтандартнаяОбработка = Ложь;
	ДатаНачала = НачалоМинуты(ТекущаяДата());  
	Если НЕ ЗначениеЗаполнено(ДатаОкончания)
		ИЛИ ДатаНачала > ДатаОкончания Тогда
		ДатаОкончания = ПолучитьДатаОкончания(ДатаНачала);
	Конецесли;
	ИзменитьЧасыФактДляСтроки();

КонецПроцедуры
// --- 79Vlad  25.10.2018

// +++ 79Vlad  25.10.2018
&НаКлиенте
Функция ПолучитьДатаОкончания(ОтДаты) 
	пДатаОкончания = НачалоМинуты(КонецМинуты(ОтДаты)+1);		
	Возврат пДатаОкончания;
КонецФункции
// --- 79Vlad  25.10.2018

// +++ 79Vlad  25.10.2018
&НаКлиенте
Функция ПолучитьКоличествоЧасовПоРазностиДат(ДатаНач, ДатаКон)
	Часов = 0;
	
	Если ДатаКон > ДатаНач Тогда
		Часов = (ДатаКон - ДатаНач) / 3600;
	КонецЕсли; 
	
	Возврат Часов;
КонецФункции
// --- 79Vlad  25.10.2018

// +++ 79Vlad  25.10.2018
&НаКлиенте
Процедура ИзменитьЧасыФактДляСтроки()
	Факт = ПолучитьКоличествоЧасовПоРазностиДат(ДатаНачала, ДатаОкончания);	
КонецПроцедуры
// --- 79Vlad  25.10.2018

// +++ 79Vlad  25.10.2018
&НаКлиенте
Процедура ДатаОкончанияОткрытие(Элемент, СтандартнаяОбработка)
	СтандартнаяОбработка = Ложь;
	
	ДатаОкончания = ПолучитьДатаОкончания(ТекущаяДата());  
	ИзменитьЧасыФактДляСтроки();
КонецПроцедуры
// --- 79Vlad  25.10.2018

&НаКлиенте
Процедура Команда15Минут(Команда)
	УказатьФактВМинутах(15);
КонецПроцедуры

&НаКлиенте
Процедура УказатьФактВМинутах(КоличествоМинут) 
	Факт = КоличествоМинут / 60;
	
	ФактПриИзменении(Неопределено);
КонецПроцедуры 

&НаКлиенте
Процедура Команда30Минут(Команда)
	УказатьФактВМинутах(30);
КонецПроцедуры

&НаКлиенте
Процедура Команда45Минут(Команда)
	УказатьФактВМинутах(45);
КонецПроцедуры

&НаКлиенте
Процедура Команда1Час(Команда)
	УказатьФактВМинутах(60);
КонецПроцедуры

&НаКлиенте
Процедура Команда2Часа(Команда)
	УказатьФактВМинутах(120);
КонецПроцедуры

&НаКлиенте
Процедура Команда3Часа(Команда)
	УказатьФактВМинутах(180);
КонецПроцедуры

&НаКлиенте
Процедура Команда4Часа(Команда)
	УказатьФактВМинутах(240);
КонецПроцедуры

&НаКлиенте
Процедура Команда5Часов(Команда)
	УказатьФактВМинутах(300);
КонецПроцедуры
