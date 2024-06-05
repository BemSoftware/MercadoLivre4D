unit Mercadolivre4D.Resources.Services;

interface

uses
  Mercadolivre4D.OAuth.Interfaces,
  Mercadolivre4D.OAuth.RestClient,
  Mercadolivre4D.Interfaces,
  Mercadolivre4D.Types,
  Mercadolivre4D.Cache,
  Data.DB,
  System.SysUtils,
  System.DateUtils,
  Rest.Json, Mercadolivre4D.DTO.Interfaces;

type
  TServices<T: IInterface> = class(TInterfacedObject, iServices<T>)
  private
    [weak]
    FParent: T;

    FRestClient: iHttpClient;
    FContent: String;
    FConf: iConfiguration;
    FCache: iMeliCache;

    procedure PersistenceAuthorization;
    procedure VerifyCacheAuthentication;
    function RefreshToken : String;
    function Authentication : String;
  public
    constructor Create(Parent: T; aConf: iConfiguration);
    destructor Destroy; override;
    class function New(Parent: T; aConf: iConfiguration): iServices<T>;
    function List: iServices<T>;
    function Post(Value: String): iServices<T>;
    function Put(Value: String): iServices<T>;
    function Delete: iServices<T>;
    function DataSet(Value: TDataSet): iServices<T>;
    function Content: String;
  end;

implementation

uses
  MercadoLivre4D.Model.OAuth2;

function TServices<T>.Authentication: String;
begin
//  FRestClient
//    .Params('client_id',FConf.ClientId)
//    .Params('client_secret', FConf.ClientSscret)
//    .Params('code', FConf.Code)
//    .Params('redirect_uri', FConf.RedirectUri)
//    .Authorization
//    .Post(TEndPointType.epOAUTH.GetValue + TEndPointType.epTOKEN.GetValue)
//    .Content(Result);
result:=
'{'+
'"access_token": "APP_USR-3224439460067054-092513-ceb4afe946cb02f56225480e10f5edf8-817396082",'+
'"token_type": "bearer",'+
'"expires_in": 21600,'+
'"scope": "offline_access read write",'+
'"user_id": 817396082,'+
'"refresh_token": "TG-614f1e5454896b00083a0eec-817396082"'+
'}';
end;

function TServices<T>.Content: String;
begin
  Result := FContent;
end;

constructor TServices<T>.Create(Parent: T; aConf: iConfiguration);
begin
  FParent := Parent;
  FConf := aConf;

  FRestClient := TRestClient.New;
  FRestClient.BaseURL(MELI);
  FCache := TMeliCache.New;
end;

function TServices<T>.DataSet(Value: TDataSet): iServices<T>;
begin
  Result := Self;
  FRestClient.DataSet(Value);
end;

function TServices<T>.Delete: iServices<T>;
begin
  Result := Self;

  FContent := '';

  VerifyCacheAuthentication;

  FRestClient
    .Delete(FConf.Uri)
    .Content(FContent);
end;

destructor TServices<T>.Destroy;
begin
  inherited;
end;

function TServices<T>.List: iServices<T>;
begin
  Result := Self;

  FContent := '';

  VerifyCacheAuthentication;

  FRestClient
    .GetAll(FConf.Uri)
    .Content(FContent);
end;

class function TServices<T>.New(Parent: T; aConf: iConfiguration): iServices<T>;
begin
  Result := Self.Create(Parent, aConf);
end;

procedure TServices<T>.PersistenceAuthorization;
var
  lOAuth2 : TOAuth2;
begin
//  if FCache.AccesToken.IsEmpty then
    lOAuth2 := TJSON.JsonToObject<TOAuth2>(Authentication);

//  if not (CompareDateTime(now,StrToDateTime(FCache.ExpiresIn))<0) then
//    lOAuth2 := TJSON.JsonToObject<TOAuth2>(RefreshToken);

  FCache
    .AccesToken(lOAuth2.AccessToken)
    .ExpiresIn(lOAuth2.ExpiresIn)
    .RefreshToken(lOAuth2.RefreshToken);
end;

function TServices<T>.Post(Value: String): iServices<T>;
begin
  Result := Self;

  FContent := '';

  VerifyCacheAuthentication;

  FRestClient
    .Body(Value)
    .Post(FConf.Uri)
    .Content(FContent);
end;

function TServices<T>.Put(Value: String): iServices<T>;
begin
  Result := Self;

  FContent := '';

  VerifyCacheAuthentication;

  FRestClient
    .Put(FConf.Uri)
    .Body(VAlue)
    .Content(FContent);
end;

function TServices<T>.RefreshToken: String;
begin
  FRestClient
    .Params('grant_type','refresh_token')
    .Params('client_id',FConf.ClientId)
    .Params('client_secret', FConf.ClientSscret)
    .Params('refresh_token', FCache.RefreshToken)
    .Post(TEndPointType.epOAUTH.GetValue + TEndPointType.epTOKEN.GetValue)
    .Content(Result);

  FCache.RemoveCache;
end;

procedure TServices<T>.VerifyCacheAuthentication;
var
  lDate : TDateTime;
begin
  lDate := Now;

  try
    if (not FCache.AccesToken.isEmpty) and
      (CompareDateTime(lDate,StrToDateTime(FCache.ExpiresIn))<0) then
    begin
      FRestClient.Token(FCache.AccesToken);
      Exit;
    end;

    PersistenceAuthorization;
  except
    PersistenceAuthorization;
  end;
end;

end.
