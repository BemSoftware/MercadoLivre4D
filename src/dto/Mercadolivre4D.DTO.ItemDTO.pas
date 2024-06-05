unit Mercadolivre4D.DTO.ItemDTO;

interface

uses
  Mercadolivre4D.DTO.AttributesDTO,
  Mercadolivre4D.DTO.Interfaces,
  Mercadolivre4D.Model.Item,
  Mercadolivre4D.DTO.PicturesDTO,
  Mercadolivre4D.DTO.SaleTermsDTO,
  JSON,
  Rest.Json;

type
  TItemDTO = class(TInterfacedObject, iItemDTO)
  private
    FEntity: TItem;
    FAttributes : iAttributesDTO<iItemDTO>;
    FPictures : iPicturesDTO<iItemDTO>;
//    FSalesTerms : iSaleTermsDTO<iItemDTO>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iItemDTO;
    function Attributes: iAttributesDTO<iItemDTO>;
    function AvailableQuantity(Value: Integer): iItemDTO;
    function BuyingMode(Value: string): iItemDTO;
    function CategoryId(Value: string): iItemDTO;
    function Condition(Value: string): iItemDTO;
    function CurrencyId(Value: string): iItemDTO;
    function ListingTypeId(Value: string): iItemDTO;
    function Pictures: iPicturesDTO<iItemDTO>;
    function Price(Value: Integer): iItemDTO;
//    function SaleTerms: iSaleTermsDTO<iItemDTO>;
    function Title(Value: string): iItemDTO;
    function Content : String;
    function &End : iItemDTO;
  end;

implementation

function TItemDTO.&End: iItemDTO;
begin
  Result := Self;
end;

function TItemDTO.Attributes: iAttributesDTO<iItemDTO>;
begin
  Result := FAttributes;
end;

function TItemDTO.AvailableQuantity(Value: Integer): iItemDTO;
begin
  Result := Self;
  FEntity.AvailableQuantity := Value;
end;

function TItemDTO.BuyingMode(Value: string): iItemDTO;
begin
  Result := Self;
  FEntity.BuyingMode := Value;
end;

function TItemDTO.CategoryId(Value: string): iItemDTO;
begin
  Result := Self;
  FEntity.CategoryId := Value;
end;

function TItemDTO.Condition(Value: string): iItemDTO;
begin
  Result := Self;
  FEntity.Condition := Value;
end;

function TItemDTO.Content : String;
var
  lJson : TJSONObject;
begin
  lJson := TJSON.ObjectToJsonObject(FEntity);
  Result := lJSon.Format;
end;

constructor TItemDTO.Create;
begin
  FEntity := TItem.Create;
  FAttributes := TAttributesDTO < iItemDTO >.New(Self, FEntity);
  FPictures := TPicturesDTO < iItemDTO >.New(Self, FEntity);
//  FSalesTerms := TSaleTermsDTO < iItemDTO >.New(Self, FEntity);
end;

function TItemDTO.CurrencyId(Value: string): iItemDTO;
begin
  Result := Self;
  FEntity.CurrencyId := Value;
end;

destructor TItemDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TItemDTO.ListingTypeId(Value: string): iItemDTO;
begin
  Result := Self;
  FEntity.ListingTypeId := Value;
end;

class function TItemDTO.New: iItemDTO;
begin
  Result := Self.Create;
end;

function TItemDTO.Pictures: iPicturesDTO<iItemDTO>;
begin
  Result := FPictures;
end;

function TItemDTO.Price(Value: Integer): iItemDTO;
begin
  Result := Self;
  FEntity.Price := Value;
end;

//function TItemDTO.SaleTerms: iSaleTermsDTO<iItemDTO>;
//begin
//  Result := FSalesTerms;
//end;

function TItemDTO.Title(Value: string): iItemDTO;
begin
  Result := Self;
  FEntity.Title := Value;
end;

end.
