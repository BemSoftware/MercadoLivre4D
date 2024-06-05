unit Mercadolivre4D.Resources.Searches;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TSearches = class(TInterfacedObject, iSearches)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iSearches;
      function QueryParams : iQueryParams<iSearches>;
      function SegmentParams : iSegmentParams<iSearches>;
      function &End : iResources;
  end;

implementation

function TSearches.&End: iResources;
begin
  Result := FParent;
end;

constructor TSearches.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TSearches.Destroy;
begin

  inherited;
end;

class function TSearches.New(Parent : iResources) : iSearches;
begin
  Result := Self.Create(Parent);
end;

function TSearches.QueryParams: iQueryParams<iSearches>;
begin

end;

function TSearches.SegmentParams: iSegmentParams<iSearches>;
begin

end;

end.
