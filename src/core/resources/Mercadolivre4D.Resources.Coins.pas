unit Mercadolivre4D.Resources.Coins;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TCoins = class(TInterfacedObject, iCoins)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iCoins;
      function QueryParams : iQueryParams<iCoins>;
      function SegmentParams : iSegmentParams<iCoins>;
      function &End : iResources;
  end;

implementation

function TCoins.&End: iResources;
begin
  Result := FParent;
end;

constructor TCoins.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TCoins.Destroy;
begin

  inherited;
end;

class function TCoins.New(Parent : iResources) : iCoins;
begin
  Result := Self.Create(Parent);
end;

function TCoins.QueryParams: iQueryParams<iCoins>;
begin

end;

function TCoins.SegmentParams: iSegmentParams<iCoins>;
begin

end;

end.

