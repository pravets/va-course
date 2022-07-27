﻿#language: ru

@tree

Функционал: проверка заказа для багрепорта

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка заказа для багрепорта

* Создание заказа
	И Я открываю навигационную ссылку "e1cib/list/Документ.Заказ"
	И я нажимаю на кнопку "Создать"
	Когда открылось окно 'Заказ (создание)'

* Заполнение шапки
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'

* Заполнение ТЧ		
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'Доставка'
	Попытка
		И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '4'
	Исключение
		И я регистрирую ошибку "Не удалось ввести количество для услуги" по данным исключения
			
	И в таблице "Товары" я завершаю редактирование строки	

* Проверка
	Тогда таблица "Товары" стала равной:
		| 'Товар'    | 'Цена'   | 'Количество' | 'Сумма'   |
		| 'Доставка' | '250,00' | '4'          | '1000,00' |
	
		

		
		
