Перем _КомандыПоКлючу;
Перем _КомандаПоУмолчанию;

Процедура ПриЗапускеПриложения() Экспорт
	
	СтрокаВвода = "";
	Пока ВвестиСтроку(СтрокаВвода, "Введите команду" + Символы.ПС) Цикл
		
		МассивПараметров = СтрРазделить(СтрокаВвода, " ");
		КлючКоманды = МассивПараметров[0];
		
		Команда = _КомандыПоКлючу[ВРег(КлючКоманды)];
		Если Команда = Неопределено Тогда
			Команда = _КомандаПоУмолчанию;
		КонецЕсли;
		
		Результат = Команда.ВыполнитьКоманду(МассивПараметров);
		
		Если НЕ Результат Тогда
			_КомандаПоУмолчанию.ВыполнитьКоманду(МассивПараметров);
		КонецЕсли;
		
	КонецЦикла;
	
КонецПроцедуры

&Рогатка
Процедура ПриСозданииОбъекта(&Пластилин КомандыПоКлючу, &Пластилин КомандаПоУмолчанию)
	
	_КомандыПоКлючу = КомандыПоКлючу;
	_КомандаПоУмолчанию = КомандаПоУмолчанию;
	
КонецПроцедуры