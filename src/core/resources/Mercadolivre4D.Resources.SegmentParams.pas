unit Mercadolivre4D.Resources.SegmentParams;

interface

uses
  Mercadolivre4D.Resources.Interfaces, Mercadolivre4D.Resources.Filters,
  Mercadolivre4D.Interfaces;

type
  TSegmentParams<T : IInterface> = class(TInterfacedObject, iSegmentParams<T>)
    private
      [weak]
      FParent : T;

      FConfig : iConfiguration;
    public
      constructor Create(Parent : T; aConfig : iConfiguration);
      destructor Destroy; override;
      class function New(Parent : T; aConfig : iConfiguration) : iSegmentParams<T>;
      function Filters : iFilters<iSegmentParams<T>>;
      function &End : T;
  end;

implementation

function TSegmentParams<T>.&End: T;
begin
  Result := FParent;
end;

constructor TSegmentParams<T>.Create(Parent : T; aConfig : iConfiguration);
begin
  FParent := Parent;
  FConfig := aConfig;
end;

destructor TSegmentParams<T>.Destroy;
begin

  inherited;
end;

function TSegmentParams<T>.Filters: iFilters<iSegmentParams<T>>;
begin
  Result := TFilters<iSegmentParams<T>>.New(Self, FConfig).QueryOrSegment(False);
end;

class function TSegmentParams<T>.New(Parent : T; aConfig : iConfiguration) : iSegmentParams<T>;
begin
  Result := Self.Create(Parent, aConfig);
end;

end.
