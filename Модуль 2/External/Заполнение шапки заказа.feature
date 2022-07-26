﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Заполнение шапки заказа

Как тестировщик я хочу
создать документ заказ и заполнить шапку документа
чтобы переиспользовать этот сценарий в других тестах

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание заказа и заполнение шапки
* Создание документа
	Когда В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	Тогда открылось окно 'Заказ (создание)'
* Заполненение шапки
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И я перехожу к следующему реквизиту

* Проверка заполнения
	Тогда элемент формы "Организация" стал равен 'ООО "Все для дома"'
	И элемент формы "Покупатель" стал равен 'Магазин "Бытовая техника"'
	И элемент формы "Склад" стал равен 'Малый'
	И элемент формы с именем "Валюта" стал равен 'Рубли'