unit Mercadolivre4D.Resources.Locatization;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TLocalization = class(TInterfacedObject, iLocalization)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iLocalization;
      function QueryParams : iQueryParams<iLocalization>;
      function SegmentParams : iSegmentParams<iLocalization>;
      function &End : iResources;
  end;

implementation

function TLocalization.&End: iResources;
begin
  Result := FParent;
end;

constructor TLocalization.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TLocalization.Destroy;
begin

  inherited;
end;

class function TLocalization.New(Parent : iResources) : iLocalization;
begin
  Result := Self.Create(Parent);
end;

function TLocalization.QueryParams: iQueryParams<iLocalization>;
begin

end;

function TLocalization.SegmentParams: iSegmentParams<iLocalization>;
begin

end;

end.
