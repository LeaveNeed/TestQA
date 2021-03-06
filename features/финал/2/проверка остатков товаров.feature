#language: ru

@tree

Функционал: проверка остатков товаров

Как оператор я хочу
правильно формировать отчет
чтобы корректно вести бизнес-процесс

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка остатков товара
		Когда экспорт данных для отчета
	*открытие отчета
		Когда Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах?vrn=Основной"	 
		Тогда открылось окно 'Остатки товаров'
		И Пауза 20
	*отбор по товару и складу	
		И я нажимаю кнопку выбора у поля с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Значение"
		Тогда открылось окно 'Товары'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование'   |
			| '000000999' | 'Товар для отчета' |
		И в таблице "Список" я выбираю текущую строку'
		И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение" я выбираю точное значение 'Склад для отчета'
		И я нажимаю на кнопку с именем 'ФормаСформировать'
		И я жду когда в табличном документе "Результат" заполнится ячейка "R6C2" в течение 10 секунд
		Тогда табличный документ "Результат" содержит строки:
			| 'Товар'            | 'Склад для отчета'   | 'Итого'              |
			| ''                 | 'Количество Остаток' | 'Количество Остаток' |
			| 'Товар для отчета' | '2,00'               | '2,00'               |
			| 'Итого'            | '2,00'               | '2,00'               |
		
