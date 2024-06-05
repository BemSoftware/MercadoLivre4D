unit MercadoLivre4D.Model.Item2;

interface

uses
  Pkg.Json.DTO,
  System.Generics.Collections,
  REST.Json.Types,
  MercadoLivre4D.Model.Attributes,
  MercadoLivre4D.Model.Pictures,
  MercadoLivre4D.Model.SaleTerms;

{$M+}

type
  TItem = class(TJsonDTO)
  private
    [JSONName('attributes'), JSONMarshalled(False)]
    FAttributesArray: TArray<TAttributes>;
    [GenericListReflect]
    FAttributes: TObjectList<TAttributes>;
    [JSONName('available_quantity')]
    FAvailableQuantity: Integer;
    [JSONName('buying_mode')]
    FBuyingMode: string;
    [JSONName('category_id')]
    FCategoryId: string;
    FCondition: string;
    [JSONName('currency_id')]
    FCurrencyId: string;
    [JSONName('listing_type_id')]
    FListingTypeId: string;
    [JSONName('pictures'), JSONMarshalled(False)]
    FPicturesArray: TArray<TPictures>;
    [GenericListReflect]
    FPictures: TObjectList<TPictures>;
    FPrice: Integer;
    [JSONName('sale_terms'), JSONMarshalled(False)]
    FSaleTermsArray: TArray<TSaleTerms>;
    [GenericListReflect]
    FSaleTerms: TObjectList<TSaleTerms>;
    FTitle: string;
    function GetAttributes: TObjectList<TAttributes>;
    function GetPictures: TObjectList<TPictures>;
//    function GetSaleTerms: TObjectList<TSaleTerms>;
  protected
    function GetAsJson: string; override;
  published
    property Attributes: TObjectList<TAttributes> read GetAttributes;
    property AvailableQuantity: Integer read FAvailableQuantity write FAvailableQuantity;
    property BuyingMode: string read FBuyingMode write FBuyingMode;
    property CategoryId: string read FCategoryId write FCategoryId;
    property Condition: string read FCondition write FCondition;
    property CurrencyId: string read FCurrencyId write FCurrencyId;
    property ListingTypeId: string read FListingTypeId write FListingTypeId;
    property Pictures: TObjectList<TPictures> read GetPictures;
    property Price: Integer read FPrice write FPrice;
//    property SaleTerms: TObjectList<TSaleTerms> read GetSaleTerms;
    property Title: string read FTitle write FTitle;
  public
    destructor Destroy; override;
  end;
  
implementation

{ TItem }

destructor TItem.Destroy;
begin
//  GetSaleTerms.Free;
  GetPictures.Free;
  GetAttributes.Free;
  inherited;
end;

function TItem.GetAttributes: TObjectList<TAttributes>;
begin
  Result := ObjectList<TAttributes>(FAttributes, FAttributesArray);
end;

function TItem.GetPictures: TObjectList<TPictures>;
begin
  Result := ObjectList<TPictures>(FPictures, FPicturesArray);
end;

//function TItem.GetSaleTerms: TObjectList<TSaleTerms>;
//begin
//  Result := ObjectList<TSaleTerms>(FSaleTerms, FSaleTermsArray);
//end;

function TItem.GetAsJson: string;
begin
  RefreshArray<TAttributes>(FAttributes, FAttributesArray);
  RefreshArray<TPictures>(FPictures, FPicturesArray);
  RefreshArray<TSaleTerms>(FSaleTerms, FSaleTermsArray);
  Result := inherited;
end;

end.
