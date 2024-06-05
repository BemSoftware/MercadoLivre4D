unit Mercadolivre4D.Resources.Items;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TItems = class(TInterfacedObject, iItems)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iItems;
      function QueryParams : iQueryParams<iItems>;
      function SegmentParams : iSegmentParams<iItems>;
      function &End : iResources;
  end;

implementation

function TItems.&End: iResources;
begin
  Result := FParent;
end;

constructor TItems.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TItems.Destroy;
begin

  inherited;
end;

class function TItems.New(Parent : iResources) : iItems;
begin
  Result := Self.Create(Parent);
end;

function TItems.QueryParams: iQueryParams<iItems>;
begin

end;

function TItems.SegmentParams: iSegmentParams<iItems>;
begin

end;

end.

