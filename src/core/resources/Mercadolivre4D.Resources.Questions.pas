unit Mercadolivre4D.Resources.Questions;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TQuestions = class(TInterfacedObject, iQuestions)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iQuestions;
      function QueryParams : iQueryParams<iQuestions>;
      function SegmentParams : iSegmentParams<iQuestions>;
      function &End : iResources;
  end;

implementation

function TQuestions.&End: iResources;
begin
  Result := FParent;
end;

constructor TQuestions.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TQuestions.Destroy;
begin

  inherited;
end;

class function TQuestions.New(Parent : iResources) : iQuestions;
begin
  Result := Self.Create(Parent);
end;

function TQuestions.QueryParams: iQueryParams<iQuestions>;
begin

end;

function TQuestions.SegmentParams: iSegmentParams<iQuestions>;
begin

end;

end.
