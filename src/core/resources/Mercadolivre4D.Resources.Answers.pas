unit Mercadolivre4D.Resources.Answers;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TAnswers = class(TInterfacedObject, iAnswers)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iAnswers;
      function QueryParams : iQueryParams<iAnswers>;
      function SegmentParams : iSegmentParams<iAnswers>;
      function &End : iResources;
  end;

implementation

function TAnswers.&End: iResources;
begin
  Result := FParent;
end;

constructor TAnswers.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TAnswers.Destroy;
begin

  inherited;
end;

class function TAnswers.New(Parent : iResources) : iAnswers;
begin
  Result := Self.Create(Parent);
end;

function TAnswers.QueryParams: iQueryParams<iAnswers>;
begin

end;

function TAnswers.SegmentParams: iSegmentParams<iAnswers>;
begin

end;

end.
