unit Mercadolivre4D.DTO.VariationsDTO;

interface

uses
  Mercadolivre4D.DTO.Interfaces;

type
  TVariationsDTO<T : IInterface> = class(TInterfacedObject, iVariations<T>)
    private
      [weak]
      FParent : T;

      FSoldQuantity : Integer;
      FPrice : Integer;
      FPictureIds : iPictureIds<iVariations<T>>;
      FAvailableQuantity : Integer;
      FAttributeCombinations : iVariationsAttributeCombinations<iVariations<T>>;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iVariations<T>;
      function SoldQuantity(Value : Integer) : iVariations<T>; overload;
      function SoldQuantity : Integer; overload;
      function Price(Value : Integer) : iVariations<T>; overload;
      function Price : Integer; overload;
      function PictureIds : iPictureIds<iVariations<T>>;
      function AvailableQuantity(Value: Integer) : iVariations<T>; overload;
      function AvailableQuantity : Integer; overload;
      function AttributeCombinations : iVariationsAttributeCombinations<iVariations<T>>;
      function &End : T;
  end;

implementation

function TVariationsDTO<T>.AttributeCombinations: iVariationsAttributeCombinations<iVariations<T>>;
begin
//  Result :=
end;

function TVariationsDTO<T>.AvailableQuantity: Integer;
begin
  Result := FAvailableQuantity;
end;

function TVariationsDTO<T>.AvailableQuantity(Value: Integer): iVariations<T>;
begin
  Result := Self;
  FAvailableQuantity := Value;
end;

function TVariationsDTO<T>.&End: T;
begin
  Result := FParent;
end;

constructor TVariationsDTO<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TVariationsDTO<T>.Destroy;
begin

  inherited;
end;

class function TVariationsDTO<T>.New(Parent : T) : iVariations<T>;
begin
  Result := Self.Create(Parent);
end;

function TVariationsDTO<T>.PictureIds: iPictureIds<iVariations<T>>;
begin
//  Result :=
end;

function TVariationsDTO<T>.Price: Integer;
begin
  Result := FPrice;
end;

function TVariationsDTO<T>.Price(Value: Integer): iVariations<T>;
begin
  Result := Self;
  FPrice := Value;
end;

function TVariationsDTO<T>.SoldQuantity: Integer;
begin
  Result := FSoldQuantity;
end;

function TVariationsDTO<T>.SoldQuantity(Value: Integer): iVariations<T>;
begin
  Result := Self;
  FSoldQuantity := Value;
end;

end.
