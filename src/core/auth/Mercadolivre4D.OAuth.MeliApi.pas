unit Mercadolivre4D.OAuth.MeliApi;

interface

uses
  Mercadolivre4D.OAuth.Interfaces,
  Mercadolivre4D.Interfaces,
  Mercadolivre4D.Types,
  Mercadolivre4D.Cache,
  Data.DB,
  System.SysUtils,
  System.JSON,
  Rest.Json,
  Mercadolivre4D.OAuth.RestClient,
  Mercadolivre4D.Model.OAuth2;

type
  TMeliApi = class(TInterfacedObject, iMeliApi)
  private
    [weak]
    FParent: iConfiguration;
    FToken: String;
    FCache: iMeliCache;
    FOAuth2: TOAuth2;

    FHttpClient: iHttpClient;
    procedure PersistenceAuthorization;
  public
    constructor Create(Parent: iConfiguration);
    destructor Destroy; override;
    class function New(Parent: iConfiguration): iMeliApi;
    function List(Resource: String): iMeliApi;
    function ToCreate(Resource: String): iMeliApi;
    function Update(Resource: String): iMeliApi;
    function Delete(Resource: String): iMeliApi;
    function Params(aKey: String; aValue: String): iMeliApi;
    function Body(Value: String): iMeliApi;
    function DataSet(aDataSet: TDataSet): iMeliApi;
    function Authentication: iMeliApi;
    function Content(var Value: String): iMeliApi;
  end;

implementation

function TMeliApi.Authentication: iMeliApi;
begin
  Result := Self;
  if not FCache.AccesToken.isEmpty then
  begin
    FHttpClient.Token(FCache.AccesToken);
    exit;
  end;
  PersistenceAuthorization;
end;

function TMeliApi.Body(Value: String): iMeliApi;
begin
  Result := Self;
  FHttpClient.Body(Value);
end;

function TMeliApi.Content(var Value: String): iMeliApi;
begin
  Result := Self;
  FHttpClient.Content(Value);
end;

procedure TMeliApi.PersistenceAuthorization;
var
  Json: String;
begin
  FHttpClient
    .BaseURL(MELI_AUTH)
    .Authorization
    .Params('client_id', FParent.ClientId)
    .Params('client_secret',FParent.ClientSscret)
    .Params('code', FParent.Code)
    .Params('redirect_uri',FParent.RedirectUri)
    .Post(TEndPointType.epOAUTH.GetValue +
      TEndPointType.epTOKEN.GetValue).Content(Json);

  FOAuth2 := TJson.JsonToObject<TOAuth2>(Json);

  FCache
    .AccesToken(FOAuth2.AccessToken)
    .ExpiresIn(FOAuth2.ExpiresIn)
    .RefreshToken(FOAuth2.RefreshToken);
end;

constructor TMeliApi.Create(Parent: iConfiguration);
begin
  FParent := Parent;
  FCache := TMeliCache.New;
  FOAuth2 := TOAuth2.Create;

  FHttpClient := TRestClient.New;

  FHttpClient.BaseURL(MELI);
  FHttpClient.Token(FParent.Code);
end;

function TMeliApi.DataSet(aDataSet: TDataSet): iMeliApi;
begin
  Result := Self;
  FHttpClient.DataSet(aDataSet);
end;

function TMeliApi.Delete(Resource: String): iMeliApi;
begin
  Result := Self;
  FHttpClient.Delete(Resource)
end;

destructor TMeliApi.Destroy;
begin

  inherited;
end;

function TMeliApi.List(Resource: String): iMeliApi;
begin
  Result := Self;
  FHttpClient.Get(Resource);
end;

class function TMeliApi.New(Parent: iConfiguration): iMeliApi;
begin
  Result := Self.Create(Parent);
end;

function TMeliApi.Params(aKey, aValue: String): iMeliApi;
begin
  Result := Self;
  FHttpClient.Params(aKey, aValue);
end;

function TMeliApi.ToCreate(Resource: String): iMeliApi;
begin
  Result := Self;
  FHttpClient.Post(Resource);
end;

function TMeliApi.Update(Resource: String): iMeliApi;
begin
  FHttpClient.Put(Resource);
end;

end.
