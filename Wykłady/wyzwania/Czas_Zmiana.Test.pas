unit Czas_Zmiana.Test;

interface

uses
  System.Classes, System.SysUtils, System.DateUtils,
  Czas_Zmiana;

type
  TCzas_Zmiana_Test_1 = class
  public
    procedure Test( const wyniki_f : TStrings );
  end;

implementation

//Funkcja Test().
procedure TCzas_Zmiana_Test_1.Test( const wyniki_f : TStrings );
var
  rok : word;
  zts,
  miejsce
    : string;
  zt_czas_zmiana : TCzas_Zmiana;
const
  wynik_b³êdny_c_l : string = 'b³¹d';
  wynik_prawid³owy_c_l : string = 'dobrze';
  wynik_separator_c_l : string = ' - ';
begin

  zt_czas_zmiana := Czas_Zmiana.TCzas_Zmiana.Create();
  zt_czas_zmiana.Inicjuj();


  zts := '';
  miejsce := 'poland/warsaw';
  rok := 1995;
  if zt_czas_zmiana.IsDaylightSaving( miejsce, rok ) = true then
    wyniki_f.Add(  wynik_prawid³owy_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  )
  else
    wyniki_f.Add(  wynik_b³êdny_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  );


  zt_czas_zmiana.IsDaylightSaving( miejsce, rok );
  if zt_czas_zmiana.Zapytania_Iloœæ_Odczytaj() = 1 then
    wyniki_f.Add( wynik_prawid³owy_c_l + wynik_separator_c_l + 'zapytania iloœæ 01' )
  else
    wyniki_f.Add( wynik_b³êdny_c_l + wynik_separator_c_l + 'zapytania iloœæ 01' );

  zts := ' pocz¹tek';
  if zt_czas_zmiana.GetDaylightStart( miejsce, rok ) = EncodeDateTime( 1995, 3, 26, 2, 0, 0, 0 ) then
    wyniki_f.Add(  wynik_prawid³owy_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  )
  else
    wyniki_f.Add(  wynik_b³êdny_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  );

  zts := ' koniec';
  if zt_czas_zmiana.GetDaylightEnd( miejsce, rok ) = EncodeDateTime( 1995, 09, 24, 3, 0, 0, 0 ) then
    wyniki_f.Add(  wynik_prawid³owy_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  )
  else
    wyniki_f.Add(  wynik_b³êdny_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  );


  zt_czas_zmiana.IsDaylightSaving( miejsce, rok );
  if zt_czas_zmiana.Zapytania_Iloœæ_Odczytaj() = 1 then
    wyniki_f.Add( wynik_prawid³owy_c_l + wynik_separator_c_l + 'zapytania iloœæ 02' )
  else
    wyniki_f.Add( wynik_b³êdny_c_l + wynik_separator_c_l + 'zapytania iloœæ 02' );


  miejsce := 'japan/tokyo';
  rok := 1984;
  if zt_czas_zmiana.IsDaylightSaving( miejsce, rok ) = false then
    wyniki_f.Add(  wynik_prawid³owy_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok )  )
  else
    wyniki_f.Add(  wynik_b³êdny_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok )  );


  zt_czas_zmiana.IsDaylightSaving( miejsce, rok );
  if zt_czas_zmiana.Zapytania_Iloœæ_Odczytaj() = 2 then
    wyniki_f.Add( wynik_prawid³owy_c_l + wynik_separator_c_l + 'zapytania iloœæ 03' )
  else
    wyniki_f.Add( wynik_b³êdny_c_l + wynik_separator_c_l + 'zapytania iloœæ 03' );




  zts := ' USA Atlanta - 2021';
  miejsce := 'usa/atlanta';
  rok := 2021;
  if zt_czas_zmiana.IsDaylightSaving( miejsce, rok ) = true then
    wyniki_f.Add(  wynik_prawid³owy_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  )
  else
    wyniki_f.Add(  wynik_b³êdny_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  );

  zts := ' India Bangalore - 1998';
  miejsce := 'india/bangalore';
  rok := 1998;
  if zt_czas_zmiana.IsDaylightSaving( miejsce, rok ) = false then
    wyniki_f.Add(  wynik_prawid³owy_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  )
  else
    wyniki_f.Add(  wynik_b³êdny_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  );



  zts := ' USA Atlanta - 1999 pocz¹tek';
  miejsce := 'usa/atlanta';
  rok := 1999;
  if zt_czas_zmiana.GetDaylightStart( miejsce, rok ) = EncodeDateTime( 1999, 4, 4, 2, 0, 0, 0 ) then
    wyniki_f.Add(  wynik_prawid³owy_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  )
  else
    wyniki_f.Add(  wynik_b³êdny_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  );

  zts := ' Poland Warsaw - 2015 pocz¹tek';
  miejsce := 'poland/warsaw';
  rok := 2015;
  if zt_czas_zmiana.GetDaylightStart( miejsce, rok ) = EncodeDateTime( 2015, 3, 29, 2, 0, 0, 0 ) then
    wyniki_f.Add(  wynik_prawid³owy_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  )
  else
    wyniki_f.Add(  wynik_b³êdny_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  );

  zts := ' USA Atlanta - 2021 pocz¹tek';
  miejsce := 'usa/atlanta';
  rok := 2021;
  if zt_czas_zmiana.GetDaylightStart( miejsce, rok ) = EncodeDateTime( 2021, 3, 14, 2, 0, 0, 0 ) then
    wyniki_f.Add(  wynik_prawid³owy_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  )
  else
    wyniki_f.Add(  wynik_b³êdny_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  );



  zts := ' USA Atlanta - 1999 koniec';
  miejsce := 'usa/atlanta';
  rok := 1999;
  if zt_czas_zmiana.GetDaylightEnd( miejsce, rok ) = EncodeDateTime( 1999, 10, 31, 2, 0, 0, 0 ) then
    wyniki_f.Add(  wynik_prawid³owy_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  )
  else
    wyniki_f.Add(  wynik_b³êdny_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  );

  zts := ' Poland Warsaw - 2015 koniec';
  miejsce := 'poland/warsaw';
  rok := 2015;
  if zt_czas_zmiana.GetDaylightEnd( miejsce, rok ) = EncodeDateTime( 2015, 10, 25, 3, 0, 0, 0 ) then
    wyniki_f.Add(  wynik_prawid³owy_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  )
  else
    wyniki_f.Add(  wynik_b³êdny_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  );

  zts := ' USA Atlanta - 2021 koniec';
  miejsce := 'usa/atlanta';
  rok := 2021;
  if zt_czas_zmiana.GetDaylightEnd( miejsce, rok ) = EncodeDateTime( 2021, 11, 7, 2, 0, 0, 0 ) then
    wyniki_f.Add(  wynik_prawid³owy_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  )
  else
    wyniki_f.Add(  wynik_b³êdny_c_l + wynik_separator_c_l + miejsce + ' ' + IntToStr( rok ) + zts  );



  zt_czas_zmiana.IsDaylightSaving( miejsce, rok );
  if zt_czas_zmiana.Zapytania_Iloœæ_Odczytaj() = 6 then
    wyniki_f.Add( wynik_prawid³owy_c_l + wynik_separator_c_l + 'zapytania iloœæ 04' )
  else
    wyniki_f.Add( wynik_b³êdny_c_l + wynik_separator_c_l + 'zapytania iloœæ 04' );


  zt_czas_zmiana.Zakoñcz();
  FreeAndNil( zt_czas_zmiana );

end;//---//Funkcja Test().

end.
