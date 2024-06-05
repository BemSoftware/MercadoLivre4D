unit Mercadolivre4D.DTO.AttributeValueStructDTO;

interface

uses
  Mercadolivre4D.DTO.Interfaces;

type
  TAttributeValueStructDTO<T : IInterface> = class(TInterfacedObject, iAttributeValueStruct<T>)
    private
      [weak]
      FParent : T;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iAttributeValueStruct<T>;
      function Number(Value : Currency) : iAttributeValueStruct<T>;
      function _Unit(Value : String) : iAttributeValueStruct<T>;
      function &End : T;
  end;

implementation

function TAttributeValueStructDTO<T>.&End: T;
begin
  Result := FParent;
end;

constructor TAttributeValueStructDTO<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TAttributeValueStructDTO<T>.Destroy;
begin

  inherited;
end;

class function TAttributeValueStructDTO<T>.New(Parent : T) : iAttributeValueStruct<T>;
begin
  Result := Self.Create(Parent);
end;

function TAttributeValueStructDTO<T>.Number(
  Value: Currency): iAttributeValueStruct<T>;
begin
  Result := Self;
end;

function TAttributeValueStructDTO<T>._Unit(
  Value: String): iAttributeValueStruct<T>;
begin
  Result := Self;
end;

end.
