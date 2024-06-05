unit Mercadolivre4D.Resources.Shipments;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TShipments = class(TInterfacedObject, iShipments)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iShipments;
      function QueryParams : iQueryParams<iShipments>;
      function SegmentParams : iSegmentParams<iShipments>;
      function &End : iResources;
  end;

implementation

function TShipments.&End: iResources;
begin
  Result := FParent;
end;

constructor TShipments.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TShipments.Destroy;
begin

  inherited;
end;

class function TShipments.New(Parent : iResources) : iShipments;
begin
  Result := Self.Create(Parent);
end;

function TShipments.QueryParams: iQueryParams<iShipments>;
begin

end;

function TShipments.SegmentParams: iSegmentParams<iShipments>;
begin

end;

end.
