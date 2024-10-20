//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit8.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm8 *Form8;
//---------------------------------------------------------------------------
__fastcall TForm8::TForm8(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------
void __fastcall TForm8::SetData(TADOTable *Table)
{

	// Устанавливаем текущую таблицу
    ADOTable3 = Table;
    if (!ADOTable3->Active) {
        ADOTable3->Open();
    }
    ADOTable3->Edit();

    // Убедитесь, что таблицы для сотрудников и клиентов открыты
    ADOTable1->Active = true; // Сотрудники
    ADOTable2->Active = true; // Клиенты

    // Заполняем поля формы значениями из текущей записи таблицы
    EditName->Text = Table->FieldByName("Наименование_услуги")->AsString;
    EditDate->Text = Table->FieldByName("Дата")->AsString;
    EditTime->Text = Table->FieldByName("Время")->AsString;

    // Настройка DBLookupComboBox1 для выбора сотрудников
    DBLookupComboBox1->ListSource = DataSource2; // Список сотрудников
    DBLookupComboBox1->ListField = "ФИО"; // Поле, отображающее ФИО
    DBLookupComboBox1->KeyField = "ID_сотрудника"; // Поле, содержащее ID сотрудника
    DBLookupComboBox1->KeyValue = Table->FieldByName("ID_сотрудника")->AsInteger; // Установите текущее значение

    // Настройка DBLookupComboBox2 для выбора клиентов
    DBLookupComboBox2->ListSource = DataSource1; // Список клиентов
    DBLookupComboBox2->ListField = "ФИО"; // Поле, отображающее ФИО
    DBLookupComboBox2->KeyField = "ID_клиента"; // Поле, содержащее ID клиента
    DBLookupComboBox2->KeyValue = Table->FieldByName("ID_клиента")->AsInteger; // Установите текущее значение
}

//---------------------------------------------------------------------------
void __fastcall TForm8::Button1Click(TObject *Sender)
{
 try
	{
		if (!ADOTable3->Active)
		{
			ADOTable3->Open();
		}

		// Переходим в режим редактирования
		ADOTable3->Edit();
		ADOTable3->FieldByName("Наименование_услуги")->AsString = EditName->Text;
		ADOTable3->FieldByName("Дата")->AsString = EditDate->Text;
		ADOTable3->FieldByName("Время")->AsString = EditTime->Text;

		int selectedID = DBLookupComboBox1->KeyValue;
		ADOTable3->FieldByName("ID_сотрудника")->AsInteger = selectedID;
		int selectedID2 = DBLookupComboBox2->KeyValue;
		ADOTable3->FieldByName("ID_клиента")->AsInteger = selectedID2;

		// Сохраняем изменения
		ADOTable3->Post();

		ShowMessage("Запись успешно изменена.");
		ModalResult = mrOk;
		Form8->Close();
	}
	catch (const Exception &e)
	{
		ShowMessage("Ошибка при редактировании записи: " + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm8::Button2Click(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------
