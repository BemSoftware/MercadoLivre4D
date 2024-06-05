unit MercadoLivre4D.Model.AttributesValues;

interface

uses
  MercadoLivre4D.Model.AttributesValueStruct;

type
  TAttributesValues = class
  private
    FId: String;
    FName: String;
    FStruct: TAttributeValueStruct;
    procedure SetId(const Value: String);
    procedure SetName(const Value: String);
    procedure SetStruct(const Value: TAttributeValueStruct);
  public
    property Id : String read FId write SetId;
    property Name : String read FName write SetName;
    property Struct : TAttributeValueStruct read FStruct write SetStruct;
  end;

implementation

{ TAttributesValues }

procedure TAttributesValues.SetId(const Value: String);
begin
  FId := Value;
end;

procedure TAttributesValues.SetName(const Value: String);
begin
  FName := Value;
end;

procedure TAttributesValues.SetStruct(const Value: TAttributeValueStruct);
begin
  FStruct := Value;
end;

end.
