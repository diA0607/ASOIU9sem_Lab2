//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TADOConnection *ADOConnection1;
	TADOTable *ADOTable1;
	TDataSource *DataSource1;
	TDBGrid *DBGrid1;
	TButton *Button1;
	TButton *Button2;
	TButton *Button3;
	TButton *Выход;
	TADOConnection *ADOConnection2;
	TADOTable *ADOTable2;
	TDataSource *DataSource2;
	TDBGrid *DBGrid2;
	TButton *Button4;
	TButton *Button5;
	TButton *Button6;
	TDBGrid *DBGrid3;
	TADOConnection *ADOConnection3;
	TADOTable *ADOTable3;
	TDataSource *DataSource3;
	TButton *Button7;
	TButton *Button8;
	TButton *Button9;
	TStringField *ADOTable3ФИО_клиента;
	TAutoIncField *ADOTable3ID_записи;
	TWideStringField *ADOTable3Дата;
	TWideStringField *ADOTable3Время;
	TWideStringField *ADOTable3Наименование_услуги;
	TIntegerField *ADOTable3ID_сотрудника;
	TIntegerField *ADOTable3ID_клиента;
	TStringField *ADOTable3ФИО_Сотрудника;
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall ВыходClick(TObject *Sender);
	void __fastcall Button3Click(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall Button6Click(TObject *Sender);
	void __fastcall Button4Click(TObject *Sender);
	void __fastcall Button5Click(TObject *Sender);
	void __fastcall Button9Click(TObject *Sender);
	void __fastcall Button7Click(TObject *Sender);
	void __fastcall Button8Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
