unit Okno;{13.Maj.2020}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TOkno_Form = class( TForm )
    Góra_Panel: TPanel;
    Log_Memo: TMemo;
    Kotek_Button: TButton;
    Czas_Zmiana_Button: TButton;
    procedure Kotek_ButtonClick( Sender: TObject );
    procedure Czas_Zmiana_ButtonClick( Sender: TObject );
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Okno_Form: TOkno_Form;

implementation

uses
  Kotek,
  Kotek.Test,

  Czas_Zmiana,
  Czas_Zmiana.Test;

{$R *.dfm}

//Kotek_ButtonClick().
procedure TOkno_Form.Kotek_ButtonClick( Sender: TObject );
var
  zt_kotek : Kotek.TKotek;
  zt_kotek_test : Kotek.Test.TKotek_Test_1;
begin

  //Log_Memo.Lines.Add(  zt_kotek.Challenge01( 'ooabooocoo', 'o' )  );
  Log_Memo.Lines.Add(  zt_kotek.Challenge01( 'Wlaz³ koooootek na p³oooooootek i mruga', 'o' )  );


  zt_kotek_test.Test( Log_Memo.Lines );

end;//---//Kotek_ButtonClick().

//Czas_Zmiana_ButtonClick().
procedure TOkno_Form.Czas_Zmiana_ButtonClick( Sender: TObject );
var
  rok : word;
  miejsce : string;
  zt_czas_zmiana : Czas_Zmiana.TCzas_Zmiana;
  zt_czas_zmiana_test : Czas_Zmiana.Test.TCzas_Zmiana_Test_1;
begin

//  zt_czas_zmiana := Czas_Zmiana.TCzas_Zmiana.Create();
//  zt_czas_zmiana.Inicjuj();
//
//
//  miejsce := 'abc/esd';
//  rok := 2020;
//
//
//  Log_Memo.Lines.Add(  miejsce + ' ' + IntToStr( rok )  );
//
//  if zt_czas_zmiana.IsDaylightSaving( miejsce, rok ) then
//    Log_Memo.Lines.Add( ' zmiana czasu' )
//  else
//    Log_Memo.Lines.Add( '  brak zmiany czasu' );
//
//  if zt_czas_zmiana.IsDaylightSaving( miejsce, rok ) then
//    Log_Memo.Lines.Add( ' zmiana czasu' )
//  else
//    Log_Memo.Lines.Add( '  brak zmiany czasu' );
//
//  Log_Memo.Lines.Add(   '  pocz¹tek - ' + DateTimeToStr(  zt_czas_zmiana.GetDaylightStart( miejsce, rok )  )  );
//  Log_Memo.Lines.Add(   '  pocz¹tek - ' + DateTimeToStr(  zt_czas_zmiana.GetDaylightStart( miejsce, rok )  )  );
//
//  Log_Memo.Lines.Add(   '  koniec - ' + DateTimeToStr(  zt_czas_zmiana.GetDaylightEnd( miejsce, rok )  )  );
//  Log_Memo.Lines.Add(   '  koniec - ' + DateTimeToStr(  zt_czas_zmiana.GetDaylightEnd( miejsce, rok )  )  );
//
//
//  zt_czas_zmiana.Zakoñcz();
//  FreeAndNil( zt_czas_zmiana );



  zt_czas_zmiana_test.Test( Log_Memo.Lines );

end;//---//Czas_Zmiana_ButtonClick().

end.

