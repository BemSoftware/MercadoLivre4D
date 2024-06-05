unit Mercadolivre4D.Resources.Publications;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TPublications = class(TInterfacedObject, iPublications)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iPublications;
      function QueryParams : iQueryParams<iPublications>;
      function SegmentParams : iSegmentParams<iPublications>;
      function &End : iResources;
  end;

implementation

function TPublications.&End: iResources;
begin
  Result := FParent;
end;

constructor TPublications.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TPublications.Destroy;
begin

  inherited;
end;

class function TPublications.New(Parent : iResources) : iPublications;
begin
  Result := Self.Create(Parent);
end;

function TPublications.QueryParams: iQueryParams<iPublications>;
begin

end;

function TPublications.SegmentParams: iSegmentParams<iPublications>;
begin

end;

end.
