unit Mercadolivre4D.DTO.InlineObjectDTO;

interface

uses
  Mercadolivre4D.DTO.Interfaces;

type
  TInlineObjectDTO<T : IInterface> = class(TInterfacedObject, iInlineObject<T>)
    private
      [weak]
      FParent : T;

      FRefreshToken : String;
      FGrantType : String;
      FCode : String;
      FClientId : String;
      FRedirectUri : String;
      FClientScret : String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iInlineObject<T>;
      function RefreshToken(Value : String) : iInlineObject<T>; overload;
      function RefreshToken : String; overload;
      function GrantType(Value : String) : iInlineObject<T>; overload;
      function GrantType : String; overload;
      function Code(Value : String) : iInlineObject<T>; overload;
      function Code : String; overload;
      function ClientId(Value : String) : iInlineObject<T>; overload;
      function ClientId : String; overload;
      function RedirectUri(Value : String) : iInlineObject<T>; overload;
      function RedirectUri : String; overload;
      function ClientScret(Value : String) : iInlineObject<T>; overload;
      function ClientScret : String; overload;
      function &End : T;
  end;

implementation

function TInlineObjectDTO<T>.ClientId(Value: String): iInlineObject<T>;
begin
  Result := Self;
  FClientId := Value;
end;

function TInlineObjectDTO<T>.ClientId: String;
begin
  Result := FClientId;
end;

function TInlineObjectDTO<T>.ClientScret: String;
begin
  Result := FClientScret;
end;

function TInlineObjectDTO<T>.ClientScret(Value: String): iInlineObject<T>;
begin
  Result := Self;
  FClientScret := Value;
end;

function TInlineObjectDTO<T>.Code(Value: String): iInlineObject<T>;
begin
  Result := Self;
  FCode := Value;
end;

function TInlineObjectDTO<T>.Code: String;
begin
  Result := FCode;
end;

function TInlineObjectDTO<T>.&End: T;
begin
  Result := FParent;
end;

constructor TInlineObjectDTO<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TInlineObjectDTO<T>.Destroy;
begin

  inherited;
end;

function TInlineObjectDTO<T>.GrantType: String;
begin
  Result := FGrantType;
end;

function TInlineObjectDTO<T>.GrantType(Value: String): iInlineObject<T>;
begin
  Result := Self;
  FGrantType := Value;
end;

class function TInlineObjectDTO<T>.New(Parent : T) : iInlineObject<T>;
begin
  Result := Self.Create(Parent);
end;

function TInlineObjectDTO<T>.RedirectUri(Value: String): iInlineObject<T>;
begin
  Result := Self;
  FRedirectUri := Value;
end;

function TInlineObjectDTO<T>.RedirectUri: String;
begin
  Result := FRedirectUri;
end;

function TInlineObjectDTO<T>.RefreshToken: String;
begin
  Result := FRefreshToken;
end;

function TInlineObjectDTO<T>.RefreshToken(Value: String): iInlineObject<T>;
begin
  Result := Self;
  FRefreshToken := Value;
end;

end.
