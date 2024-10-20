//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit3.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void TForm3::SetData(TADOTable *table)
{
    ADOTable1 = table; // ��������� ������ �� �������
    LoadData(); // ��������� ������ � ����
}

void TForm3::LoadData()
{
    if (ADOTable1->Active && !ADOTable1->IsEmpty())
    {
        EditFIO->Text = ADOTable1->FieldByName("���")->AsString;
        EditPhone->Text = ADOTable1->FieldByName("�����_��������")->AsString;
        EditDate->Text = ADOTable1->FieldByName("����_��������")->AsString;
        EditPol->Text = ADOTable1->FieldByName("���")->AsString;
        EditLog->Text = ADOTable1->FieldByName("�����")->AsString;
        EditPassw->Text = IntToStr(ADOTable1->FieldByName("������")->AsInteger);
    }
}

void __fastcall TForm3::Button1Click(TObject *Sender)
{
    try
	{
		if (!ADOTable1->Active)
		{
			ADOTable1->Open();
		}

		// ����������� ������� ������
		ADOTable1->Edit();

		// ����������
        ADOTable1->FieldByName("���")->AsString = EditFIO->Text;
        ADOTable1->FieldByName("�����_��������")->AsString = EditPhone->Text;
        ADOTable1->FieldByName("����_��������")->AsString = EditDate->Text;
        ADOTable1->FieldByName("���")->AsString = EditPol->Text;
        ADOTable1->FieldByName("�����")->AsString = EditLog->Text;
        ADOTable1->FieldByName("������")->AsInteger = StrToInt(EditPassw->Text);

        ADOTable1->Post(); // ��������� ���������

        ShowMessage("������ ������� ������� ���������.");
        ModalResult = mrOk; // ��������� ����� � �����������
        Close();
    }
    catch (const Exception &e)
	{
		ShowMessage("������ ��� ���������� ������: " + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm3::Button2Click(TObject *Sender)
{
	Close(); // ��������� ����� ��� ����������
}
//---------------------------------------------------------------------------
