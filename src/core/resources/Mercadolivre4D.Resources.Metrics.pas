unit Mercadolivre4D.Resources.Metrics;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TMetrics = class(TInterfacedObject, iMetrics)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iMetrics;
      function QueryParams : iQueryParams<iMetrics>;
      function SegmentParams : iSegmentParams<iMetrics>;
      function &End : iResources;
  end;

implementation

function TMetrics.&End: iResources;
begin
  Result := FParent;
end;

constructor TMetrics.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TMetrics.Destroy;
begin

  inherited;
end;

class function TMetrics.New(Parent : iResources) : iMetrics;
begin
  Result := Self.Create(Parent);
end;

function TMetrics.QueryParams: iQueryParams<iMetrics>;
begin

end;

function TMetrics.SegmentParams: iSegmentParams<iMetrics>;
begin

end;

end.
