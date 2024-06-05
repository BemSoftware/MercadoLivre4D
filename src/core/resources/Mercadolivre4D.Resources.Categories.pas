unit Mercadolivre4D.Resources.Categories;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TCategories = class(TInterfacedObject, iCategories)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iCategories;
      function QueryParams : iQueryParams<iCategories>;
      function SegmentParams : iSegmentParams<iCategories>;
      function &End : iResources;
  end;

implementation

function TCategories.&End: iResources;
begin
  Result := FParent;
end;

constructor TCategories.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TCategories.Destroy;
begin

  inherited;
end;

class function TCategories.New(Parent : iResources) : iCategories;
begin
  Result := Self.Create(Parent);
end;

function TCategories.QueryParams: iQueryParams<iCategories>;
begin

end;

function TCategories.SegmentParams: iSegmentParams<iCategories>;
begin

end;

end.
