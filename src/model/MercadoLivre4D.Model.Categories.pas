unit MercadoLivre4D.Model.Categories;

interface

type
  TCategory = class
  private
    FName: String;
    FId: String;
    procedure SetId(const Value: String);
    procedure SetName(const Value: String);
  public
    [Serialized('id')]
    property Id : String read FId write SetId;
    [Serialized('name')]
    property Name : String read FName write SetName;
  end;

implementation

{ TCategory }

procedure TCategory.SetId(const Value: String);
begin
  FId := Value;
end;

procedure TCategory.SetName(const Value: String);
begin
  FName := Value;
end;

end.
