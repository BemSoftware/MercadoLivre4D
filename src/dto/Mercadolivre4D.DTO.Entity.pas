unit Mercadolivre4D.DTO.Entity;

interface

uses
  Mercadolivre4D.DTO.Interfaces, Mercadolivre4D.DTO.ItemDTO;

type
  TEntity = class(TInterfacedObject, iEntity)
    private
      FContent : String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEntity;
      function Item : iItemDTO;
      function Content : String;
  end;

implementation

function TEntity.Content: String;
begin
  Result := FContent;
end;

constructor TEntity.Create;
begin

end;

destructor TEntity.Destroy;
begin

  inherited;
end;

function TEntity.Item: iItemDTO;
begin
  Result := TItemDTO.New;
end;

class function TEntity.New : iEntity;
begin
  Result := Self.Create;
end;

end.
