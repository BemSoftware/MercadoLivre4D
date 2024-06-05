unit Mercadolivre4D.Resources.Opinions;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TOpinions = class(TInterfacedObject, iOpinions)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iOpinions;
      function QueryParams : iQueryParams<iOpinions>;
      function SegmentParams : iSegmentParams<iOpinions>;
      function &End : iResources;
  end;

implementation

function TOpinions.&End: iResources;
begin
  Result := FParent;
end;

constructor TOpinions.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TOpinions.Destroy;
begin

  inherited;
end;

class function TOpinions.New(Parent : iResources) : iOpinions;
begin
  Result := Self.Create(Parent);
end;

function TOpinions.QueryParams: iQueryParams<iOpinions>;
begin

end;

function TOpinions.SegmentParams: iSegmentParams<iOpinions>;
begin

end;

end.
