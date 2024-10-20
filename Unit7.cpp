//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit7.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm7 *Form7;
//---------------------------------------------------------------------------
__fastcall TForm7::TForm7(TComponent* Owner)
	: TForm(Owner)
{
	ADOTable2->Active = true;
	DataSource2->DataSet = ADOTable2;

	DBLookupComboBox1->ListSource = DataSource2;
	DBLookupComboBox1->ListField = "���";
	DBLookupComboBox1->KeyField = "ID_����������";
	DBLookupComboBox1->DataSource = nullptr;

	ADOTable1->Active = true;
	DataSource1->DataSet = ADOTable1;

	DBLookupComboBox2->ListSource = DataSource1;
	DBLookupComboBox2->ListField = "���";
	DBLookupComboBox2->KeyField = "ID_�������";
	DBLookupComboBox2->DataSource = nullptr;


}
//---------------------------------------------------------------------------

void __fastcall TForm7::Button1Click(TObject *Sender)
{
     try
  {
		if (!ADOTable3->Active)
		{
			ADOTable3->Open();
		}
		ADOTable3->Append();
		ADOTable3->FieldByName("������������_������")->AsString = EditName->Text;
		ADOTable3->FieldByName("����")->AsString = EditDate->Text;
		ADOTable3->FieldByName("�����")->AsString = EditTime->Text;

		int selectedID = DBLookupComboBox1->KeyValue;
		ADOTable3->FieldByName("ID_����������")->AsInteger = selectedID;
		int selectedID2 = DBLookupComboBox2->KeyValue;
		ADOTable3->FieldByName("ID_�������")->AsInteger = selectedID2;
		ADOTable3->Edit();
		ADOTable3->Post();

		ShowMessage("������ ������� ���������.");
		EditName->Text = "";
		EditDate->Text = "";
		EditTime->Text = "";

		ModalResult = mrOk;
		Form7->Close();

  }
  catch (const Exception &e)
  {
	ShowMessage("������ ��� ���������� ����� ������: " + e.Message);
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm7::Button2Click(TObject *Sender)
{
  Form1->Show();
  Close();
}
//---------------------------------------------------------------------------

