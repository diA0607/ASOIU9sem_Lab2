//---------------------------------------------------------------------------

#ifndef Unit7H
#define Unit7H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.CheckLst.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.ComCtrls.hpp>
//---------------------------------------------------------------------------
class TForm7 : public TForm
{
__published:	// IDE-managed Components
	TADOConnection *ADOConnection3;
	TADOTable *ADOTable3;
	TDataSource *DataSource3;
	TLabel *Èìÿ;
	TLabel *Label1;
	TLabel *Label6;
	TEdit *EditName;
	TEdit *EditDate;
	TEdit *EditTime;
	TButton *Button1;
	TButton *Button2;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TADOConnection *ADOConnection1;
	TADOTable *ADOTable1;
	TDataSource *DataSource1;
	TADOConnection *ADOConnection2;
	TADOTable *ADOTable2;
	TDataSource *DataSource2;
	TDBLookupComboBox *DBLookupComboBox1;
	TDBLookupComboBox *DBLookupComboBox2;

	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm7(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm7 *Form7;
//---------------------------------------------------------------------------
#endif
