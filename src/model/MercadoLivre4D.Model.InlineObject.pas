unit MercadoLivre4D.Model.InlineObject;

interface

type
  TInlineObject = class
  private
    FRefreshToken: String;
    FGrantType: String;
    FCode: String;
    FClientId: String;
    FRedirectUri: String;
    FClientScret: String;
    procedure SetClientId(const Value: String);
    procedure SetClientScret(const Value: String);
    procedure SetCode(const Value: String);
    procedure SetGrantType(const Value: String);
    procedure SetRedirectUri(const Value: String);
    procedure SetRefreshToken(const Value: String);
  public
    property GrantType : String read FGrantType write SetGrantType;
    property ClientId : String read FClientId write SetClientId;
    property ClientScret : String read FClientScret write SetClientScret;
    property RedirectUri : String read FRedirectUri write SetRedirectUri;
    property Code : String read FCode write SetCode;
    property RefreshToken : String read FRefreshToken write SetRefreshToken;
  end;

implementation

{ TInlineObject }

procedure TInlineObject.SetClientId(const Value: String);
begin
  FClientId := Value;
end;

procedure TInlineObject.SetClientScret(const Value: String);
begin
  FClientScret := Value;
end;

procedure TInlineObject.SetCode(const Value: String);
begin
  FCode := Value;
end;

procedure TInlineObject.SetGrantType(const Value: String);
begin
  FGrantType := Value;
end;

procedure TInlineObject.SetRedirectUri(const Value: String);
begin
  FRedirectUri := Value;
end;

procedure TInlineObject.SetRefreshToken(const Value: String);
begin
  FRefreshToken := Value;
end;

end.
