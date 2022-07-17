#language: ru

@tree

Функционал: Проверка возвратов в отчете D2001 Продажи

Как Тестировщик я хочу
проверить данные по Возвратам товаров от покутеля в отчете
чтобы иметь актуальную информацию 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: возвраты в отчете D2001 Продажи
	* Подготовка данных для отчета
		Дано данные для возврата
	* Открытие отчета
		Когда Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales?vrn=Default"	 
		Тогда открылось окно 'D2001 Продажи'
	* Настройка отчета
		* Установка настроек по умолчанию
			И я нажимаю на кнопку с именем 'FormChangeVariant'
			И в таблице "SettingsComposerSettings" я нажимаю на кнопку с именем 'SettingsComposerSettingsStandardSettings'
			Когда открылось окно '1С:Предприятие'
			И я нажимаю на кнопку с именем 'Button0'				
			И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
				| 'Параметр' |
				| 'Период'   |
			И в таблице "SettingsComposerSettingsDataParameters" я снимаю флаг с именем 'SettingsComposerSettingsDataParametersUse'
			И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки
			И я перехожу к закладке с именем "FilterPage"
			И в таблице "SettingsComposerSettingsFilter" я нажимаю на кнопку с именем 'SettingsComposerSettingsFilterAddFilterItem'
			И в таблице "SettingsComposerSettingsFilter" из выпадающего списка с именем "SettingsComposerSettingsFilterLeftValue" я выбираю точное значение 'Регистратор'
			И я перехожу к следующему реквизиту
			И в таблице "SettingsComposerSettingsFilter" из выпадающего списка с именем "SettingsComposerSettingsFilterComparisonType" я выбираю точное значение 'Равно'
			И я перехожу к следующему реквизиту
			И в таблице "SettingsComposerSettingsFilter" я нажимаю кнопку выбора у реквизита с именем "SettingsComposerSettingsFilterRightValue"
			Тогда открылось окно 'Выбор типа данных'
			И в таблице "" я перехожу к строке:
				| ''                              |
				| 'Возврат товаров от покупателя' |
			И в таблице "" я выбираю текущую строку
			Тогда открылось окно 'Возвраты товаров от покупателей'
			И в таблице "List" я перехожу к строке:
				| 'Номер' |
				| '1'     |
			И я нажимаю на кнопку с именем 'FormChoose'	
			И в таблице "SettingsComposerSettingsFilter" я завершаю редактирование строки
			И я нажимаю на кнопку с именем 'FormEndEdit'
	* Формирование отчета
		Тогда открылось окно 'D2001 Продажи'
		И я нажимаю на кнопку с именем 'FormGenerate'
	* Проверка данных отчета
		И я жду когда в табличном документе "Result" заполнится ячейка "R2C1" в течение 10 секунд
		Тогда табличный документ "Result" содержит строки по шаблону:
			| 'Товар для возврата' | '-999 999,000' | '*' | '*' | '*' |