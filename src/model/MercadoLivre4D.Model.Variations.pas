unit MercadoLivre4D.Model.Variations;

interface

uses
  System.Generics.Collections,
  MercadoLivre4D.Model.VariationsAttributeCombinations;

type
  TVariations = class
  private
    FSoldQuantity: Integer;
    FPrice: Integer;
    FpictureIds: TList<String>;
    FAvailableQuantity: Integer;
    FAttributeCombinations: TObjectList<TVariationsAttributeCombinations>;
    procedure SetAvailableQuantity(const Value: Integer);
    procedure SetpictureIds(const Value: TList<String>);
    procedure SetPrice(const Value: Integer);
    procedure SetSoldQuantity(const Value: Integer);
    function GetAttributeCombinations: TObjectList<TVariationsAttributeCombinations>;
  public
    property Price : Integer read FPrice write SetPrice;
    property AttributeCombinations : TObjectList<TVariationsAttributeCombinations> read GetAttributeCombinations;
    property AvailableQuantity : Integer read FAvailableQuantity write SetAvailableQuantity;
    property SoldQuantity : Integer read FSoldQuantity write SetSoldQuantity;
    property pictureIds : TList<String> read FpictureIds write SetpictureIds;
  end;

implementation

{ TVariations }

function TVariations.GetAttributeCombinations: TObjectList<TVariationsAttributeCombinations>;
begin
  if not Assigned(FAttributeCombinations) then
    FAttributeCombinations := TObjectList<TVariationsAttributeCombinations>.Create;

  Result := FAttributeCombinations;
end;

procedure TVariations.SetAvailableQuantity(const Value: Integer);
begin
  FAvailableQuantity := Value;
end;

procedure TVariations.SetpictureIds(const Value: TList<String>);
begin
  FpictureIds := Value;
end;

procedure TVariations.SetPrice(const Value: Integer);
begin
  FPrice := Value;
end;

procedure TVariations.SetSoldQuantity(const Value: Integer);
begin
  FSoldQuantity := Value;
end;

end.
