unit Mercadolivre4D.DTO.OAuth2DTO;

interface

uses
  Mercadolivre4D.DTO.Interfaces;

type
  TOAuth2DTO<T : IInterface> = class(TInterfacedObject, iOAuth2<T>)
    private
      [weak]
      FParent : T;

      FRefreshToken : String;
      FTokenType : string;
      FUserId : Integer;
      FAccessToken : String;
      FScope : String;
      FExpiresIn : Integer;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iOAuth2<T>;
      function RefreshToken(Value : String) : iOAuth2<T>; overload;
      function RefreshToken : String; overload;
      function TokenType(Value : string) : iOAuth2<T>; overload;
      function TokenType : string; overload;
      function UserId(Value : Integer) : iOAuth2<T>; overload;
      function UserId : Integer; overload;
      function AccessToken(Value : String) : iOAuth2<T>; overload;
      function AccessToken : String; overload;
      function Scope(Value : String) : iOAuth2<T>; overload;
      function Scope : String; overload;
      function ExpiresIn(Value : Integer) : iOAuth2<T>; overload;
      function ExpiresIn : Integer; overload;
      function &End : T;
  end;

implementation

function TOAuth2DTO<T>.AccessToken(Value: String): iOAuth2<T>;
begin
  Result := Self;
  FAccessToken := Value;
end;

function TOAuth2DTO<T>.AccessToken: String;
begin
  Result := FAccessToken;
end;

function TOAuth2DTO<T>.&End: T;
begin
  Result := FParent;
end;

constructor TOAuth2DTO<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TOAuth2DTO<T>.Destroy;
begin

  inherited;
end;

function TOAuth2DTO<T>.ExpiresIn: Integer;
begin
  Result := FExpiresIn;
end;

function TOAuth2DTO<T>.ExpiresIn(Value: Integer): iOAuth2<T>;
begin
  Result := Self;
  FExpiresIn := Value;
end;

class function TOAuth2DTO<T>.New(Parent : T) : iOAuth2<T>;
begin
  Result := Self.Create(Parent);
end;

function TOAuth2DTO<T>.RefreshToken: String;
begin
  Result := RefreshToken;
end;

function TOAuth2DTO<T>.RefreshToken(Value: String): iOAuth2<T>;
begin
  Result := Self;
  FRefreshToken := Value;
end;

function TOAuth2DTO<T>.Scope(Value: String): iOAuth2<T>;
begin
  Result := Self;
  FScope := Value;
end;

function TOAuth2DTO<T>.Scope: String;
begin
  Result := FScope;
end;

function TOAuth2DTO<T>.TokenType: string;
begin
  Result := FTokenType;
end;

function TOAuth2DTO<T>.TokenType(Value: string): iOAuth2<T>;
begin
  Result := Self;
  FTokenType := Value;
end;

function TOAuth2DTO<T>.UserId(Value: Integer): iOAuth2<T>;
begin
  Result := Self;
  FUserId := Value;
end;

function TOAuth2DTO<T>.UserId: Integer;
begin
  Result := FUserId;
end;

end.
