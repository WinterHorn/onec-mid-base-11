Процедура ДополнитьФорму(Форма) Экспорт
	
	ИмяФормы = Форма.ИмяФормы;
	
	Если ИмяФормы = "Документ.ЗаказПокупателя.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтакноеЛицоВГруппуШапкаПраво(Форма);
		//ДобавитьКнопкуПересчитатьСкидку(Форма);
		ДобавитьПолеСогласованнаяСкидкаВГруппуШапкаЛево(Форма);
	ИначеЕсли ИмяФормы = "Документ.ПоступлениеТоваровУслуг.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтакноеЛицоВГруппуШапкаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтакноеЛицоВГруппуШапкаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.ОплатаОтПокупателя.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтакноеЛицоНаФормуПередСуммаДокумента(Форма);
	ИначеЕсли ИмяФормы = "Документ.ОплатаПоставщику.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтакноеЛицоНаФормуПередСуммаДокумента(Форма);
	КонецЕсли;
	
КонецПроцедуры

Процедура ДобавитьПолеКонтакноеЛицоВГруппуШапкаПраво(Форма)
	
	ПолеВвода = Форма.Элементы.Добавить("КонтактноеЛицо", Тип("ПолеФормы"), Форма.Элементы.ГруппаШапкаПраво);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.Д_КонтактноеЛицо";    
	
КонецПроцедуры 

Процедура ДобавитьПолеКонтакноеЛицоНаФормуПередСуммаДокумента(Форма)
	
	ПолеВвода = Форма.Элементы.Вставить("КонтактноеЛицо", Тип("ПолеФормы"),, Форма.Элементы.СуммаДокумента);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.Д_КонтактноеЛицо";	
	
КонецПроцедуры

//Процедура ДобавитьКнопкуПересчитатьСкидку(Форма)
//	
//	НоваяКоманда = Команды.Добавить("ПересчитатьСкидку");
//	НоваяКоманда.Действие = "РасчетСуммыСтроки";
//	НоваяКоманда.Заголовок = "Пересчитать скидку";   
//	
//	НоваяКоманда = Форма.Элементы.Добавить("ПересчитатьСкидку", Тип("КнопкаФормы"), Форма.Элементы.ГруппаШапкаЛево);
//	НоваяКоманда.ИмяКоманды = "ПересчитатьСкидку";
//	
//КонецПроцедуры

Процедура ДобавитьПолеСогласованнаяСкидкаВГруппуШапкаЛево(Форма)
	
	ПолеВвода = Форма.Элементы.Добавить("СогласованнаяСкидка", Тип("ПолеФормы"), Форма.Элементы.ГруппаШапкаЛево);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.Д_СогласованнаяСкидка";
	ПолеВвода.УстановитьДействие("ПриИзменении", "СогласованнаяСкидкаПриИзменении");
	
КонецПроцедуры