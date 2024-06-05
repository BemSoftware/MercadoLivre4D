unit Mercadolivre4D.Resources.Requests;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TRequests = class(TInterfacedObject, iRequests)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iRequests;
      function QueryParams : iQueryParams<iRequests>;
      function SegmentParams : iSegmentParams<iRequests>;
      function &End : iResources;
  end;

implementation

function TRequests.&End: iResources;
begin
  Result := FParent;
end;

constructor TRequests.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TRequests.Destroy;
begin

  inherited;
end;

class function TRequests.New(Parent : iResources) : iRequests;
begin
  Result := Self.Create(Parent);
end;

function TRequests.QueryParams: iQueryParams<iRequests>;
begin

end;

function TRequests.SegmentParams: iSegmentParams<iRequests>;
begin

end;

end.
