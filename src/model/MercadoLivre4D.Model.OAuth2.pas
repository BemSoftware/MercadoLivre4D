unit MercadoLivre4D.Model.OAuth2;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TOAuth2 = class(TJsonDTO)
  private
    [JSONName('access_token')]
    FAccessToken: string;
    [JSONName('expires_in')]
    FExpiresIn: Integer;
    [JSONName('refresh_token')]
    FRefreshToken: string;
    FScope: string;
    [JSONName('token_type')]
    FTokenType: string;
    [JSONName('user_id')]
    FUserId: Integer;
  published
    property AccessToken: string read FAccessToken write FAccessToken;
    property ExpiresIn: Integer read FExpiresIn write FExpiresIn;
    property RefreshToken: string read FRefreshToken write FRefreshToken;
    property Scope: string read FScope write FScope;
    property TokenType: string read FTokenType write FTokenType;
    property UserId: Integer read FUserId write FUserId;
  end;
  
implementation

end.
