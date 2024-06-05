unit Mercadolivre4D.Configuration;

interface

uses
  System.SysUtils,
  Mercadolivre4D.Interfaces, Mercadolivre4D.Types;

type
  TConfiguration = class(TInterfacedObject, iConfiguration)
  private
    FClientId : String;
    FClientSecret : String;
    FCode : String;
    FRedirectUri : String;
    FAPP_ID : String;
    FURI : String;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iConfiguration;
    function ClientId(Value: String): iConfiguration; overload;
    function ClientId: String; overload;
    function ClientSecret(Value: String): iConfiguration; overload;
    function ClientSscret: String; overload;
    function Code(Value: String): iConfiguration; overload;
    function Code: String; overload;
    function RedirectUri(Value: String): iConfiguration; overload;
    function RedirectUri: String; overload;
    function APP_ID(Value : String) : iConfiguration; overload;
    function APP_ID : String; overload;
    function GrantType : String;
    function Uri(Value : TEndPointType) : iConfiguration; overload;
    function Uri(Value : String) : iConfiguration; overload;
    function Uri : String; overload;
    function UriClear : iConfiguration;
    function Autenticacao(var AuthMeli : String) : iConfiguration;
  end;

implementation

function TConfiguration.ClientId(Value: String): iConfiguration;
begin
  Result := Self;
  FClientId := Value;
end;

function TConfiguration.APP_ID: String;
begin
  Result := FAPP_ID;
end;

function TConfiguration.Autenticacao(var AuthMeli: String): iConfiguration;
begin
  Result := Self;
  AuthMeli := Format('https://auth.mercadolivre.com.br/authorization?response_type=code&client_id=%S&redirect_uri=%S',
    [FAPP_ID,FRedirectUri]);
end;

function TConfiguration.APP_ID(Value: String): iConfiguration;
begin
  Result := Self;
  FAPP_ID := Value;
end;

function TConfiguration.ClientId: String;
begin
  Result := FClientId;
end;

function TConfiguration.ClientSecret(Value: String): iConfiguration;
begin
  Result := Self;
  FClientSecret := Value;
end;

function TConfiguration.ClientSscret: String;
begin
  Result := FClientSecret;
end;

function TConfiguration.Code(Value: String): iConfiguration;
begin
  Result := Self;
  FCode := Value;
end;

function TConfiguration.Code: String;
begin
  Result := FCode;
end;

constructor TConfiguration.Create;
begin

end;

destructor TConfiguration.Destroy;
begin

  inherited;
end;

function TConfiguration.GrantType: String;
begin
  Result := 'authorization_code';
end;

class function TConfiguration.New: iConfiguration;
begin
  Result := Self.Create;
end;

function TConfiguration.RedirectUri(Value: String): iConfiguration;
begin
  Result := Self;
  FRedirectUri := Value;
end;

function TConfiguration.RedirectUri: String;
begin
  Result := FRedirectUri;
end;

function TConfiguration.Uri(Value: String): iConfiguration;
begin
  Result := Self;
  FURI := FURI + Value;
end;

function TConfiguration.Uri: String;
begin
  Result := FURI;
end;

function TConfiguration.UriClear: iConfiguration;
begin
  Result := Self;
  FURI := '';
end;

function TConfiguration.Uri(Value: TEndPointType): iConfiguration;
begin
  Result := Self;
  FURI := FURI + Value.GetValue;
end;

end.
