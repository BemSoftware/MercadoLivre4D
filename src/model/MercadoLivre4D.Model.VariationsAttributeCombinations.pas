unit MercadoLivre4D.Model.VariationsAttributeCombinations;

interface

uses
  Mercadolivre4D.Maps;

type
  TVariationsAttributeCombinations = class
  private
    FName: String;
    FValueId: String;
    FValueName: String;
    procedure SetName(const Value: String);
    procedure SetValueId(const Value: String);
    procedure SetValueName(const Value: String);
  public
    property Name : String read FName write SetName;
    property ValueId : String read FValueId write SetValueId;
    property ValueName : String read FValueName write SetValueName;
  end;

implementation

{ TVariationsAttributeCombinations }

procedure TVariationsAttributeCombinations.SetName(const Value: String);
begin
  FName := Value;
end;

procedure TVariationsAttributeCombinations.SetValueId(const Value: String);
begin
  FValueId := Value;
end;

procedure TVariationsAttributeCombinations.SetValueName(const Value: String);
begin
  FValueName := Value;
end;

end.
