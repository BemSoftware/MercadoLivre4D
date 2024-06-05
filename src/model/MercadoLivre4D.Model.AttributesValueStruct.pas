unit MercadoLivre4D.Model.AttributesValueStruct;

interface

type
  TAttributeValueStruct = class
  private
    FNumber: Currency;
    F_Unit: String;
    procedure Set_Unit(const Value: String);
    procedure SetNumber(const Value: Currency);
  public
    property Number : Currency read FNumber write SetNumber;
    property _Unit : String read F_Unit write Set_Unit;
  end;

implementation

{ TAttributeValueStruct }

procedure TAttributeValueStruct.SetNumber(const Value: Currency);
begin
  FNumber := Value;
end;

procedure TAttributeValueStruct.Set_Unit(const Value: String);
begin
  F_Unit := Value;
end;

end.
