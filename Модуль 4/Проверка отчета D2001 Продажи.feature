﻿#language: ru

@tree

Функционал: Проверка отчета D2001 Продажи

Как тестировщик я хочу
проверить отображение возвратов в отчете D2001 Продажи
чтобы отчет корректно отображал возвраты 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: проверка наличия оптового и розничного возвратов в отчете D2001 Продажи

* Проведение розничного и оптового возвратов
	И я выполняю код встроенного языка на сервере
		|'Документы.SalesReturn.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.RetailReturnReceipt.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
* Открытие отчета
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales?vrn=Default"
	Тогда открылось окно 'D2001 Продажи'
* Формирование отчета
	И я нажимаю на кнопку с именем 'FormGenerate'
* Проверка отчета
	Дано Табличный документ "Result" равен макету "Продажи с возвратами"
	
Сценарий: проверка отсутствия оптового и розничного возвратов в отчете D2001 Продажи

* Проведение оптового возвратов
	И я выполняю код встроенного языка на сервере
		|'Документы.SalesReturn.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.ОтменаПроведения);'|
		|'Документы.RetailReturnReceipt.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.ОтменаПроведения);'|
* Открытие отчета
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales?vrn=Default"
	Тогда открылось окно 'D2001 Продажи'
* Формирование отчета
	И я нажимаю на кнопку с именем 'FormGenerate'
* Проверка отчета
	Дано Табличный документ "Result" равен макету "Продажи без возвратов"
	