unit Mercadolivre4D;

interface

uses
  Mercadolivre4D.Interfaces,
  Mercadolivre4D.Configuration,
  Mercadolivre4D.Resources,
  Mercadolivre4D.Resources.Interfaces,
  Mercadolivre4D.DTO.Entity, Mercadolivre4D.DTO.Interfaces;

type
  iMercadolivre4D = interface
    function Configuration : iConfiguration;
    function Resources : iResources;
    function Entity : iEntity;
  end;

  TMercadolivre4D = class(TInterfacedObject, iMercadolivre4D)
    private
      FConfig : iConfiguration;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iMercadolivre4D;
      function Configuration : iConfiguration;
      function Resources : iResources;
      function Entity : iEntity;
  end;

implementation

function TMercadolivre4D.Configuration: iConfiguration;
begin
  FConfig := TConfiguration.New;
  Result := FConfig;
end;

constructor TMercadolivre4D.Create;
begin

end;

destructor TMercadolivre4D.Destroy;
begin

  inherited;
end;

function TMercadolivre4D.Entity: iEntity;
begin
  Result := TEntity.New;
end;

class function TMercadolivre4D.New : iMercadolivre4D;
begin
  Result := Self.Create;
end;

function TMercadolivre4D.Resources: iResources;
begin
  FConfig.uriclear;
  Result := TResources.New(FConfig);
end;

end.
