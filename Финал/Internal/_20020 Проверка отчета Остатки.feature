﻿#language: ru

@tree

Функционал: проверка отчета Остатки

Как тестировщик я хочу
проверить работу отчета Остатки
чтобы в отчете были корректные данные

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: проверка отчета Остатки
* Демо данные
	И загрузка данных для теста отчета Остатки
	И Пауза 10
* Открытие отчета
	И Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах?vrn=Основной"
	И я нажимаю на кнопку с именем 'ФормаСформировать'

* Проверка отчета
	Дано Табличный документ "Результат" равен макету "Отчет Остатки"
	
		
