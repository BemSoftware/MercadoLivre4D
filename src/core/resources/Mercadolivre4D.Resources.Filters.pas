unit Mercadolivre4D.Resources.Filters;

interface

uses
  System.SysUtils,
  Mercadolivre4D.Resources.Interfaces, Mercadolivre4D.Interfaces,
  Mercadolivre4D.Configuration, Mercadolivre4D.Types;

type
  TFilters<T : IInterface> = class(TInterfacedObject, iFilters<T>)
    private
      [weak]
      FParent : T;

      FConfig : iConfiguration;
      FQueryOrSegment : Boolean;

      function QuerySegment(Value : TFiltersQuery) : String;
    public
      constructor Create(Parent : T; aConfig : iConfiguration);
      destructor Destroy; override;
      class function New(Parent : T; aConfig : iConfiguration) : iFilters<T>;
      function Cust_Id(Value : String) : iFilters<T>;
      function Application_Id(Value : String) : iFilters<T>;
      function User_Id(Value : String) : iFilters<T>;
      function Listing_Type(Value : String) : iFilters<T>;
      function Category_Id(Value : String) : iFilters<T>;
      function Listing_Typr_Id(Value : String) : iFilters<T>;
      function App_Id(Value : String) : iFilters<T>;
      function Site_Domain_Url(Value : String) : iFilters<T>;
      function Price(Value : String) : iFilters<T>;
      function Q(Value : String) : iFilters<T>;
      function Listing_Type_Id(Value : String) : iFilters<T>;
      function Country_Id(Value : String) : iFilters<T>;
      function State_Id(Value : String) : iFilters<T>;
      function City_Id(Value : String) : iFilters<T>;
      function Currency_Id(Value : String) : iFilters<T>;
      function Zip_Code(Value : String) : iFilters<T>;
      function Zip_Code_From(Value : String) : iFilters<T>;
      function Zip_Code_To(Value : String) : iFilters<T>;
      function Site_Id(Value : String) : iFilters<T>;
      function NickName(Value : String) : iFilters<T>;
      function Seller_Id(Value : String) : iFilters<T>;
      function Ids(Value : String) : iFilters<T>;
      function Attributes(Value : String) : iFilters<T>;
      function Item_Id(Value : String) : iFilters<T>;
      function Question_Id(Value : String) : iFilters<T>;
      function Buyer_id(Value : String) : iFilters<T>;
      function Order_Id(Value : String) : iFilters<T>;
      function Payment_Id(Value : String) : iFilters<T>;
      function Feedback_Id(Value : String) : iFilters<T>;
      function Date_From(Value : String) : iFilters<T>;
      function Date_To(Value : String) : iFilters<T>;
      function Last(Value : String) : iFilters<T>;
      function _Unit(Value : String) : iFilters<T>;
      function Ending(Value : String) : iFilters<T>;
      function Shipment_Id(Value : String) : iFilters<T>;
      function Dimensions(Value : String) : iFilters<T>;
      function Quantity(Value : String) : iFilters<T>;
      function QueryOrSegment(Value : Boolean) : iFilters<T>;
      function &End: T;
  end;

implementation


{ TFilters<T> }

function TFilters<T>.Application_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqAPPLICATION_ID)+Value);
end;

function TFilters<T>.App_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqAPP_ID)+Value);
end;

function TFilters<T>.Attributes(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqATTRIBUTES)+Value);
end;

function TFilters<T>.Buyer_id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqBUYER_ID)+Value);
end;

function TFilters<T>.Category_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqCATEGORY_ID)+Value);
end;

function TFilters<T>.City_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqCITY_ID)+Value);
end;

function TFilters<T>.Country_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqCOUNTRY_ID)+Value);
end;

constructor TFilters<T>.Create(Parent: T; aConfig : iConfiguration);
begin
  FParent := Parent;
  FConfig := aConfig;
end;

function TFilters<T>.Currency_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqCURRENCY_ID)+Value);
end;

function TFilters<T>.Cust_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqCUST_ID)+Value);
end;

function TFilters<T>.Date_From(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqDATE_FROM)+Value);
end;

function TFilters<T>.Date_To(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqDATE_TO)+Value);
end;

destructor TFilters<T>.Destroy;
begin

  inherited;
end;

function TFilters<T>.Dimensions(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqDIMENSIONS)+Value);
end;

function TFilters<T>.&End: T;
begin
  Result := FParent;
end;

function TFilters<T>.Ending(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqENDING)+Value);
end;

function TFilters<T>.Feedback_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqFEEDBACK_ID)+Value);
end;

function TFilters<T>.Ids(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqIDS)+Value);
end;

function TFilters<T>.Item_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqITEM_ID)+Value);
end;

function TFilters<T>.Last(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqLAST)+Value);
end;

function TFilters<T>.Listing_Type(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqLISTING_TYPE)+Value);
end;

function TFilters<T>.Listing_Type_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqLISTING_TYPE_ID)+Value);
end;

function TFilters<T>.Listing_Typr_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqLISTING_TYPR_ID)+Value);
end;

class function TFilters<T>.New(Parent: T; aConfig : iConfiguration): iFilters<T>;
begin
  Result := Self.Create(Parent,aConfig);
end;

function TFilters<T>.NickName(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqNICKNAME)+Value);
end;

function TFilters<T>.Order_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqORDER_ID)+Value);
end;

function TFilters<T>.Payment_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqPAYMENT_ID)+Value);
end;

function TFilters<T>.Price(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqPRICE)+Value);
end;

function TFilters<T>.Q(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqQ)+Value);
end;

function TFilters<T>.Quantity(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqQUANTITY)+Value);
end;

function TFilters<T>.QueryOrSegment(Value: Boolean): iFilters<T>;
begin
  Result := Self;
  FQueryOrSegment := Value;
end;

function TFilters<T>.QuerySegment(Value : TFiltersQuery): String;
begin
  Result := Value.GetValue;
  if not FQueryOrSegment then
    Result := '/';
end;

function TFilters<T>.Question_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqQUESTION_ID)+Value);
end;

function TFilters<T>.Seller_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqSELLER_ID)+Value);
end;

function TFilters<T>.Shipment_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqSHIPMENT_ID)+Value);
end;

function TFilters<T>.Site_Domain_Url(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqDOMAIN_URL)+Value);
end;

function TFilters<T>.Site_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqSITE_ID)+Value);
end;

function TFilters<T>.State_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqSTATE_ID)+Value);
end;

function TFilters<T>.User_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqUSER_ID)+Value);
end;

function TFilters<T>.Zip_Code(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqZIP_CODE)+Value);
end;

function TFilters<T>.Zip_Code_From(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqZIP_CODE_FROM)+Value);
end;

function TFilters<T>.Zip_Code_To(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqZIP_CODE_TO)+Value);
end;

function TFilters<T>._Unit(Value: String): iFilters<T>;
begin
  Result := Self;
  FConfig.Uri(QuerySegment(fqUNIT)+Value);
end;

end.
