unit Mercadolivre4D.DTO.TagDTO;

interface

uses
  Mercadolivre4D.DTO.Interfaces;

type
  TTagDTO<T : IInterface> = class(TInterfacedObject, iTag<T>)
    private
      [weak]
      FParent : T;

      FTag : String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iTag<T>;
      function Tag(Value : String) : iTag<T>;
      function &End : T;
  end;

implementation

function TTagDTO<T>.&End: T;
begin
  Result := FParent;
end;

constructor TTagDTO<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TTagDTO<T>.Destroy;
begin

  inherited;
end;

class function TTagDTO<T>.New(Parent : T) : iTag<T>;
begin
  Result := Self.Create(Parent);
end;

function TTagDTO<T>.Tag(Value: String): iTag<T>;
begin
  Result := Self;
  FTag := Value;
end;

end.
