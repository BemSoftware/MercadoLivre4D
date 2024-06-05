unit Mercadolivre4D.DTO.AttributesDTO;

interface

uses
  Mercadolivre4D.DTO.Interfaces,
  MercadoLivre4D.Model.Attributes, MercadoLivre4D.Model.Item;

type
  TAttributesDTO<T : IInterface> = class(TInterfacedObject, iAttributesDTO<T>)
    private
      [weak]
      FParent : T;

      FEntity : TItem;
      FId : String;
      FValueName : String;

      procedure SetList;
    public
      constructor Create(Parent : T; aEntity : TItem);
      destructor Destroy; override;
      class function New(Parent : T; aEntity : TItem) : iAttributesDTO<T>;
      function Id(Value : String) : iAttributesDTO<T>;
      function ValueName(Value : String) : iAttributesDTO<T>;
      function &End : T;
  end;

implementation

function TAttributesDTO<T>.&End: T;
begin
  Result := FParent;
  SetList;
end;

constructor TAttributesDTO<T>.Create(Parent : T; aEntity : TItem);
begin
  FParent := Parent;
  FEntity := aEntity;
end;

destructor TAttributesDTO<T>.Destroy;
begin

  inherited;
end;

function TAttributesDTO<T>.Id(Value: String): iAttributesDTO<T>;
begin
  Result := Self;
  FId := Value;
end;

class function TAttributesDTO<T>.New(Parent : T; aEntity : TItem) : iAttributesDTO<T>;
begin
  Result := Self.Create(Parent,aEntity);
end;

procedure TAttributesDTO<T>.SetList;
var
  I : Integer;
begin
  FEntity.Attributes.Add(TAttributes.Create);
  I := FEntity.Attributes.Count -1;
  FEntity.Attributes[I].Id := FId;
  FEntity.Attributes[I].ValueName := FValueName;
end;

function TAttributesDTO<T>.ValueName(Value: String): iAttributesDTO<T>;
begin
  Result := Self;
  FValueName := Value;
end;

end.
