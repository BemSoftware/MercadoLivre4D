unit Mercadolivre4D.DTO.AttributesValuesDTO;

interface

uses
  Mercadolivre4D.DTO.Interfaces, MercadoLivre4D.Model.Attributes;

type
  TAttributesValuesDTO<T : IInterface> = class(TInterfacedObject, iAttributesValues<T>)
    private
      [weak]
      FParent : T;
      FEntity : TAttributes;
    public
      constructor Create(Parent : T; aEntity : TAttributes);
      destructor Destroy; override;
      class function New(Parent : T; aEntity : TAttributes) : iAttributesValues<T>;
      function Id(Value : String) : iAttributesValues<T>;
      function Name(Value : String) : iAttributesValues<T>;
      function Struct : iAttributeValueStruct<iAttributesValues<T>>;
      function &End : T;
  end;

implementation

function TAttributesValuesDTO<T>.&End: T;
begin
  Result := FParent;
end;

constructor TAttributesValuesDTO<T>.Create(Parent : T; aEntity : TAttributes);
begin
  FParent := Parent;
  FEntity := aEntity;
end;

destructor TAttributesValuesDTO<T>.Destroy;
begin

  inherited;
end;

function TAttributesValuesDTO<T>.Id(Value: String): iAttributesValues<T>;
begin
  Result := Self;
end;

function TAttributesValuesDTO<T>.Name(Value: String): iAttributesValues<T>;
begin
  Result := self;
end;

class function TAttributesValuesDTO<T>.New(Parent : T; aEntity : TAttributes) : iAttributesValues<T>;
begin
  Result := Self.Create(Parent, aEntity);
end;

function TAttributesValuesDTO<T>.Struct: iAttributeValueStruct<iAttributesValues<T>>;
begin
  //
end;

end.
