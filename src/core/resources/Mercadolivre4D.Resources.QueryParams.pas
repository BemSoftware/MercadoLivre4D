unit Mercadolivre4D.Resources.QueryParams;

interface

uses
  Mercadolivre4D.Resources.Interfaces, Mercadolivre4D.Resources.Filters,
  Mercadolivre4D.Interfaces;

type
  TQueryParams<T : IInterface> = class(TInterfacedObject, iQueryParams<T>)
    private
      [weak]
      FParent : T;

      FConfig : iConfiguration;
    public
      constructor Create(Parent : T; aConfig : iConfiguration);
      destructor Destroy; override;
      class function New(Parent : T; aConfig : iConfiguration) : iQueryParams<T>;
      function Filters : iFilters<iQueryParams<T>>;
      function &End : T;
  end;

implementation

function TQueryParams<T>.&End: T;
begin
  Result := FParent;
end;

constructor TQueryParams<T>.Create(Parent : T; aConfig : iConfiguration);
begin
  FParent := Parent;
  FConfig := aConfig;
  FConfig.Uri('?');
end;

destructor TQueryParams<T>.Destroy;
begin

  inherited;
end;

function TQueryParams<T>.Filters: iFilters<iQueryParams<T>>;
begin
  Result := TFilters<iQueryParams<T>>.New(Self, FConfig).QueryOrSegment(True);
end;

class function TQueryParams<T>.New(Parent : T; aConfig : iConfiguration) : iQueryParams<T>;
begin
  Result := Self.Create(Parent,aConfig);
end;

end.
