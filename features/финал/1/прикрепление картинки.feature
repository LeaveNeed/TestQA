#language: ru

@tree

Функционал: прикрепление картинки к номенклатуре

Как оператор я хочу
прикрепить картинку к элементу справочника Товар
чтобы представлять как выглядит товар

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий	

Сценарий: прикрепление картинки к Товару
		И я закрываю все окна клиентского приложения		
	* Открытие формы подготовленного элемента справочника Товары
		Когда экспорт номенклатуры
		Дано Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d"
		Когда открылось окно 'Торт (Товар)'
	* Добавление картинки
		И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		И в поле с именем 'Наименование' я ввожу текст 'фото торта'
		И я выбираю файл "$КаталогПроекта$\Features\финал\фото торта.jpg"
		И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
	* Проверка
		Тогда открылось окно 'Торт (Товар)'
		И элемент формы с именем "ФайлКартинки" стал равен 'фото торта'