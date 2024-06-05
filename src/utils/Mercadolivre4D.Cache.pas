unit Mercadolivre4D.Cache;

interface

uses
  LocalCache4D,
  System.SysUtils;

type
  iMeliCache = interface
    function ExpiresIn(Value : Integer) : iMeliCache; overload;
    function ExpiresIn : String; overload;
    function RefreshToken(Value : String) : iMeliCache; overload;
    function RefreshToken : String; overload;
    function AccesToken(Value : String) : iMeliCache; overload;
    function AccesToken : String; overload;
    function RemoveCache : iMeliCache;
  end;

  TMeliCache = class(TInterfacedObject, iMeliCache)
    private
      function ComeToTime(Value : Integer) : String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iMeliCache;
      function ExpiresIn(Value : Integer) : iMeliCache; overload;
      function ExpiresIn : String; overload;
      function RefreshToken(Value : String) : iMeliCache; overload;
      function RefreshToken : String; overload;
      function AccesToken(Value : String) : iMeliCache; overload;
      function AccesToken : String; overload;
      function RemoveCache : iMeliCache;
  end;

implementation

function TMeliCache.AccesToken(Value: String): iMeliCache;
begin
  Result := Self;
  LocalCache.Instance('authorization').SetItem('access_token', Value);
end;

function TMeliCache.AccesToken: String;
begin
  Result := LocalCache.Instance('authorization').GetItem('access_token');
end;

function TMeliCache.ComeToTime(Value: Integer): String;
var
  lHours : Cardinal;
  lDate : TDateTime;
begin
  lDate := now;
  lHours := Value div 3600;
  Result := FormatDateTime('dd/mm/yyyy hh:MM:ss', lDate +
    StrToDateTime(FormatFloat(',00',lHours)+':00'));
end;

constructor TMeliCache.Create;
begin
  LocalCache.LoadDatabase('MELI4D.lc4');
end;

destructor TMeliCache.Destroy;
begin
  LocalCache.SaveToStorage('MELI4D.lc4');
  inherited;
end;

function TMeliCache.ExpiresIn(Value: Integer): iMeliCache;
begin
  Result := Self;
  LocalCache.Instance('authorization').SetItem('expires_in',ComeToTime(Value));
end;

function TMeliCache.ExpiresIn: String;
begin
  Result := LocalCache.Instance('authorization').GetItem('expires_in');
end;

class function TMeliCache.New : iMeliCache;
begin
  Result := Self.Create;
end;

function TMeliCache.RefreshToken: String;
begin
  Result := LocalCache.Instance('authorization').GetItem('refresh_token');
end;

function TMeliCache.RemoveCache: iMeliCache;
begin
  Result := Self;
  LocalCache.RemoveInstance('authorization');
end;

function TMeliCache.RefreshToken(Value: String): iMeliCache;
begin
  Result := Self;
  LocalCache.Instance('authorization').SetItem('refresh_token',Value);
end;

end.
