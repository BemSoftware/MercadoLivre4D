unit Mercadolivre4D.DTO.VariationsAttributeCombinationsDTO;

interface

uses
  Mercadolivre4D.DTO.Interfaces;

type
  TVariationsAttributeCombinationsDTO<T : IInterface> = class(TInterfacedObject, iVariationsAttributeCombinations<T>)
    private
      [weak]
      FParent : T;

      FName : String;
      FValueId : String;
      FValueName : String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iVariationsAttributeCombinations<T>;
      function Name(Value : String) : iVariationsAttributeCombinations<T>; overload;
      function Name : String; overload;
      function ValueId(Value : String) : iVariationsAttributeCombinations<T>; overload;
      function ValueId : String; overload;
      function ValueName(Value : String) : iVariationsAttributeCombinations<T>; overload;
      function ValueName : String; overload;
      function &End : T;
  end;

implementation

function TVariationsAttributeCombinationsDTO<T>.&End: T;
begin
  Result := FParent;
end;

constructor TVariationsAttributeCombinationsDTO<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TVariationsAttributeCombinationsDTO<T>.Destroy;
begin

  inherited;
end;

function TVariationsAttributeCombinationsDTO<T>.Name(
  Value: String): iVariationsAttributeCombinations<T>;
begin
  Result := Self;
  FName := Value;
end;

function TVariationsAttributeCombinationsDTO<T>.Name: String;
begin
  Result := FName;
end;

class function TVariationsAttributeCombinationsDTO<T>.New(Parent : T) : iVariationsAttributeCombinations<T>;
begin
  Result := Self.Create(Parent);
end;

function TVariationsAttributeCombinationsDTO<T>.ValueId(
  Value: String): iVariationsAttributeCombinations<T>;
begin
  Result := Self;
  FValueId := Value;
end;

function TVariationsAttributeCombinationsDTO<T>.ValueId: String;
begin
  Result := FValueId;
end;

function TVariationsAttributeCombinationsDTO<T>.ValueName(
  Value: String): iVariationsAttributeCombinations<T>;
begin
  Result := Self;
  FValueName := Value;
end;

function TVariationsAttributeCombinationsDTO<T>.ValueName: String;
begin
  Result := FValueName;
end;

end.
