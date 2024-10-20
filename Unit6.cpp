//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit6.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm6 *Form6;
//---------------------------------------------------------------------------
__fastcall TForm6::TForm6(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm6::SetData(TADOTable *Table)
{
    // ������������� ������� �������
	 ADOTable2 = Table;  // ����� ������������� ��������� �� ������� �������
	 if (!ADOTable2->Active)
		{
			ADOTable2->Open();  // ���������, ��� ������� �������
	 }
	ADOTable2->Edit();
	// ��������� ���� ����� ���������� �� ������� ������ �������
	EditFIO->Text = Table->FieldByName("���")->AsString;
	EditPhone->Text = Table->FieldByName("�����_��������")->AsString;
}

void __fastcall TForm6::Button1Click(TObject *Sender)
{
try
	{
		if (!ADOTable2->Active)
		{
			ADOTable2->Open();
		}

		// ��������� � ����� ��������������
		ADOTable2->Edit();
		ADOTable2->FieldByName("���")->AsString = EditFIO->Text;
		ADOTable2->FieldByName("�����_��������")->AsString = EditPhone->Text;

		// ��������� ���������
		ADOTable2->Post();

		ShowMessage("������ ������� ��������.");
		ModalResult = mrOk;
		Form6->Close();
	}
	catch (const Exception &e)
	{
		ShowMessage("������ ��� �������������� ������: " + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm6::Button2Click(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------
