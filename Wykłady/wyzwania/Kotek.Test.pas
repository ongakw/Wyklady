unit Kotek.Test;

interface

uses
  System.Classes,
  Kotek;

type
  TKotek_Test_1 = class
  public
    procedure Test( const wyniki_f : TStrings );
  end;

implementation

//Funkcja Test().
procedure TKotek_Test_1.Test( const wyniki_f : TStrings );
var
  zts : string;
  zt_kotek : TKotek;
const
  wynik_b³êdny_c_l : string = 'b³¹d';
  wynik_prawid³owy_c_l : string = 'dobrze';
  wynik_separator_c_l : string = ' - ';
begin

  zts := 'Wlaz³ koooootek na p³oooooootek i mruga';
  if zt_kotek.Challenge01( zts, 'o' ) = 'Wlaz³ kotek na p³otek i mruga' then
    wyniki_f.Add( wynik_prawid³owy_c_l + wynik_separator_c_l + zts )
  else
    wyniki_f.Add( wynik_b³êdny_c_l + wynik_separator_c_l + zts );


  zts := 'ooaooboo';
  if zt_kotek.Challenge01( zts, 'o' ) = 'oaobo' then
    wyniki_f.Add( wynik_prawid³owy_c_l + wynik_separator_c_l + zts )
  else
    wyniki_f.Add( wynik_b³êdny_c_l + wynik_separator_c_l + zts );



  zts := 'ooo';
  if zt_kotek.Challenge01( zts, 'o' ) = 'o' then
    wyniki_f.Add( wynik_prawid³owy_c_l + wynik_separator_c_l + zts )
  else
    wyniki_f.Add( wynik_b³êdny_c_l + wynik_separator_c_l + zts );


  zts := 'ooabc';
  if zt_kotek.Challenge01( zts, 'o' ) = 'oabc' then
    wyniki_f.Add( wynik_prawid³owy_c_l + wynik_separator_c_l + zts )
  else
    wyniki_f.Add( wynik_b³êdny_c_l + wynik_separator_c_l + zts );


  zts := 'abcooo';
  if zt_kotek.Challenge01( zts, 'o' ) = 'abco' then
    wyniki_f.Add( wynik_prawid³owy_c_l + wynik_separator_c_l + zts )
  else
    wyniki_f.Add( wynik_b³êdny_c_l + wynik_separator_c_l + zts );


  zts := 'aooooob';
  if zt_kotek.Challenge01( zts, 'o' ) = 'aob' then
    wyniki_f.Add( wynik_prawid³owy_c_l + wynik_separator_c_l + zts )
  else
    wyniki_f.Add( wynik_b³êdny_c_l + wynik_separator_c_l + zts );



  zts := '';
  if zt_kotek.Challenge01( zts, 'o' ) = '' then
    wyniki_f.Add( wynik_prawid³owy_c_l + wynik_separator_c_l + zts )
  else
    wyniki_f.Add( wynik_b³êdny_c_l + wynik_separator_c_l + zts );

end;//---//Funkcja Test().

end.
