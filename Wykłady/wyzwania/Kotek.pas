unit Kotek;

interface

uses
  System.SysUtils;

type
  TKotek = class
  public
    function Challenge01( const aText : string; const aChar : char ) : string;
  end;

implementation


//Funkcja Challenge01().
function TKotek.Challenge01( const aText : string; const aChar : char ) : string;
var
  znak_numer : integer;
begin

  Result := aText;

  if Trim( Result ) = '' then
    Exit;


  znak_numer := 1;

  while znak_numer <= Length( Result ) - 1 do
    begin

      if Result[ znak_numer ] = aChar then
        while Result[ znak_numer ] = Result[ znak_numer + 1 ] do
          Delete( Result, znak_numer + 1, 1 );

      inc( znak_numer );

    end;
  //---//while znak_numer <= Length( Result ) - 1 do

end;//---//Funkcja Challenge01().

end.
