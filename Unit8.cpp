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

	// ������������� ������� �������
    ADOTable3 = Table;
    if (!ADOTable3->Active) {
        ADOTable3->Open();
    }
    ADOTable3->Edit();

    // ���������, ��� ������� ��� ����������� � �������� �������
    ADOTable1->Active = true; // ����������
    ADOTable2->Active = true; // �������

    // ��������� ���� ����� ���������� �� ������� ������ �������
    EditName->Text = Table->FieldByName("������������_������")->AsString;
    EditDate->Text = Table->FieldByName("����")->AsString;
    EditTime->Text = Table->FieldByName("�����")->AsString;

    // ��������� DBLookupComboBox1 ��� ������ �����������
    DBLookupComboBox1->ListSource = DataSource2; // ������ �����������
    DBLookupComboBox1->ListField = "���"; // ����, ������������ ���
    DBLookupComboBox1->KeyField = "ID_����������"; // ����, ���������� ID ����������
    DBLookupComboBox1->KeyValue = Table->FieldByName("ID_����������")->AsInteger; // ���������� ������� ��������

    // ��������� DBLookupComboBox2 ��� ������ ��������
    DBLookupComboBox2->ListSource = DataSource1; // ������ ��������
    DBLookupComboBox2->ListField = "���"; // ����, ������������ ���
    DBLookupComboBox2->KeyField = "ID_�������"; // ����, ���������� ID �������
    DBLookupComboBox2->KeyValue = Table->FieldByName("ID_�������")->AsInteger; // ���������� ������� ��������
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

		// ��������� � ����� ��������������
		ADOTable3->Edit();
		ADOTable3->FieldByName("������������_������")->AsString = EditName->Text;
		ADOTable3->FieldByName("����")->AsString = EditDate->Text;
		ADOTable3->FieldByName("�����")->AsString = EditTime->Text;

		int selectedID = DBLookupComboBox1->KeyValue;
		ADOTable3->FieldByName("ID_����������")->AsInteger = selectedID;
		int selectedID2 = DBLookupComboBox2->KeyValue;
		ADOTable3->FieldByName("ID_�������")->AsInteger = selectedID2;

		// ��������� ���������
		ADOTable3->Post();

		ShowMessage("������ ������� ��������.");
		ModalResult = mrOk;
		Form8->Close();
	}
	catch (const Exception &e)
	{
		ShowMessage("������ ��� �������������� ������: " + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm8::Button2Click(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------
