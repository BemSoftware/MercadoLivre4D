unit Mercadolivre4D.Resources;

interface

uses
  Mercadolivre4D.Resources.Interfaces,
  Mercadolivre4D.Interfaces,
  Mercadolivre4D.Types,
  Mercadolivre4D.Resources.QueryParams,
  Mercadolivre4D.Resources.SegmentParams,
  Mercadolivre4D.Resources.Services,
  Mercadolivre4D.OAuth.Interfaces;

type
  TResources = class(TInterfacedObject, iResources)
  private
    FParent: iConfiguration;
  public
    constructor Create(Parent: iConfiguration);
    destructor Destroy; override;
    class function New(Parent: iConfiguration): iResources;
    function Users: iResources;
    function Me: iResources;
    function Addresses: iResources;
    function AcceptedPaymentMethods: iResources;
    function Applications: iResources;
    function Brands: iResources;
    function ClassifiedsPromotionPacks: iResources;
    function AvailableListingType: iResources;
    function MyFeeds: iResources;
    function Sites: iResources;
    function SiteDomains: iResources;
    function ListingTypes: iResources;
    function ListingExposures: iResources;
    function ListingPrices: iResources;
    function Categories: iResources;
    function Attributes: iResources;
    function DomainDiscovery: iResources;
    function Search: iResources;
    function ClassifiedLocations: iResources;
    function Countries: iResources;
    function States: iResources;
    function Cities: iResources;
    function Currencies: iResources;
    function CurrencyConversions: iResources;
    function ZipCodes: iResources;
    function SearchBetween: iResources;
    function Items: iResources;
    function Questions: iResources;
    function Answers: iResources;
    function QuestionsBlacklist: iResources;
    function My: iResources;
    function ReceivedQuestions: iResources;
    function Orders: iResources;
    function Payments: iResources;
    function PaymentMethods: iResources;
    function Feedback: iResources;
    function OrderBacklist: iResources;
    function Product: iResources;
    function ItemsVisits: iResources;
    function Contacts: iResources;
    function TimeWindow: iResources;
    function PhoneViews: iResources;
    function Visits: iResources;
    function Shipments: iResources;
    function ShippingOptions: iResources;
    function ShippingModes: iResources;
    function ShippingPreferences: iResources;
    function ShipmentsLabels: iResources;
    function QueryParams: iQueryParams<iResources>;
    function SegmentParams: iSegmentParams<iResources>;
    function &And: iResources;
    function &End: iResources;
    function Services: iServices<iResources>;
  end;

implementation

{ TResources }

function TResources.&And: iResources;
begin
  Result := Self;
  FParent.Uri('&');
end;

function TResources.AcceptedPaymentMethods: iResources;
begin
  Result := Self;
  FParent.Uri(epACCEPTED_PAYMENT_METHODS);
end;

function TResources.Addresses: iResources;
begin
  Result := Self;
  FParent.Uri(epADDRESSES);
end;

function TResources.Answers: iResources;
begin
  Result := Self;
  FParent.Uri(epANSWERS);
end;

function TResources.Applications: iResources;
begin
  Result := Self;
  FParent.Uri(epAPPLICATIONS);
end;

function TResources.Attributes: iResources;
begin
  Result := Self;
  FParent.Uri(epATTRIBUTES);
end;

function TResources.AvailableListingType: iResources;
begin
  Result := Self;
  FParent.Uri(epAVAILABLE_LISTING_TYPES);
end;

function TResources.Brands: iResources;
begin
  Result := Self;
  FParent.Uri(epBRANDS);
end;

function TResources.Categories: iResources;
begin
  Result := Self;
  FParent.Uri(epCATEGORIES);
end;

function TResources.Cities: iResources;
begin
  Result := Self;
  FParent.Uri(epCITIES);
end;

function TResources.ClassifiedLocations: iResources;
begin
  Result := Self;
  FParent.Uri(epCLASSIFIED_LOCATIONS);
end;

function TResources.ClassifiedsPromotionPacks: iResources;
begin
  Result := Self;
  FParent.Uri(epCLASSIFIEDS_PROMOTION_PACKS);
end;

function TResources.Contacts: iResources;
begin
  Result := Self;
  FParent.Uri(epCONTACTS);
end;

function TResources.Countries: iResources;
begin
  Result := Self;
  FParent.Uri(epCOUNTRIES);
end;

constructor TResources.Create(Parent: iConfiguration);
begin
  FParent := Parent;
end;

function TResources.Currencies: iResources;
begin
  Result := Self;
  FParent.Uri(epCURRENCIES);
end;

function TResources.CurrencyConversions: iResources;
begin
  Result := Self;
  FParent.Uri(epCURRENCY_CONVERSIONS);
end;

destructor TResources.Destroy;
begin

  inherited;
end;

function TResources.DomainDiscovery: iResources;
begin
  Result := Self;
  FParent.Uri(epDOMAIN_DISCOVERY);
end;

function TResources.&End: iResources;
begin
  Result := Self;
end;

function TResources.Feedback: iResources;
begin
  Result := Self;
  FParent.Uri(epFEEDBACK);
end;

function TResources.Items: iResources;
begin
  Result := Self;
  FParent.Uri(epITEMS);
end;

function TResources.ItemsVisits: iResources;
begin
  Result := Self;
  FParent.Uri(epITEMS_VISITS);
end;

function TResources.ListingExposures: iResources;
begin
  Result := Self;
  FParent.Uri(epLISTING_EXPOSURES);
end;

function TResources.ListingPrices: iResources;
begin
  Result := Self;
  FParent.Uri(epLISTING_PRICES);
end;

function TResources.ListingTypes: iResources;
begin
  Result := Self;
  FParent.Uri(epLISTING_TYPES);
end;

function TResources.Me: iResources;
begin
  Result := Self;
  FParent.Uri(epME);
end;

function TResources.My: iResources;
begin
  Result := Self;
  FParent.Uri(epMY);
end;

function TResources.MyFeeds: iResources;
begin
  Result := Self;
  FParent.Uri(epMYFEEDS);
end;

class function TResources.New(Parent: iConfiguration): iResources;
begin
  Result := Self.Create(Parent);
end;

function TResources.OrderBacklist: iResources;
begin
  Result := Self;
  FParent.Uri(epORDER_BLACKLIST);
end;

function TResources.Orders: iResources;
begin
  Result := Self;
  FParent.Uri(epORDERS);
end;

function TResources.PaymentMethods: iResources;
begin
  Result := Self;
  FParent.Uri(epPAYMENTS_METHODS);
end;

function TResources.Payments: iResources;
begin
  Result := Self;
end;

function TResources.PhoneViews: iResources;
begin
  Result := Self;
  FParent.Uri(epPHONE_VIEWS);
end;

function TResources.Product: iResources;
begin
  Result := Self;
  FParent.Uri(epPRODUCT);
end;

function TResources.QueryParams: iQueryParams<iResources>;
begin
  Result := TQueryParams<iResources>.New(Self, FParent);
end;

function TResources.Questions: iResources;
begin
  Result := Self;
  FParent.Uri(epQUESTIONS);
end;

function TResources.QuestionsBlacklist: iResources;
begin
  Result := Self;
  FParent.Uri(epQUESTIONS_BLACKLIST);
end;

function TResources.ReceivedQuestions: iResources;
begin
  Result := Self;
  FParent.Uri(epRECEIVED_QUESTIONS);
end;

function TResources.Search: iResources;
begin
  Result := Self;
  FParent.Uri(epSEARCH);
end;

function TResources.SearchBetween: iResources;
begin
  Result := Self;
  FParent.Uri(epSEARCH_BETWEEN);
end;

function TResources.SegmentParams: iSegmentParams<iResources>;
begin
  Result := TSegmentParams<iResources>.New(Self, FParent);
end;

function TResources.Services: iServices<iResources>;
begin
  Result := TServices<iResources>.New(Self, FParent);
end;

function TResources.Shipments: iResources;
begin
  Result := Self;
  FParent.Uri(epSHIPMENTS);
end;

function TResources.ShipmentsLabels: iResources;
begin
  Result := Self;
  FParent.Uri(epSHIPMENT_LABELS);
end;

function TResources.ShippingModes: iResources;
begin
  Result := Self;
  FParent.Uri(epSHIPPING_MODES);
end;

function TResources.ShippingOptions: iResources;
begin
  Result := Self;
  FParent.Uri(epSHIPPING_OPTIONS);
end;

function TResources.ShippingPreferences: iResources;
begin
  Result := Self;
  FParent.Uri(epSHIPPING_PREFERENCES);
end;

function TResources.SiteDomains: iResources;
begin
  Result := Self;
  FParent.Uri(epSITE_DOMAINS);
end;

function TResources.Sites: iResources;
begin
  Result := Self;
  FParent.Uri(epSITES);
end;

function TResources.States: iResources;
begin
  Result := Self;
  FParent.Uri(epSTATES);
end;

function TResources.TimeWindow: iResources;
begin
  Result := Self;
  FParent.Uri(epTIME_WINDOW);
end;

function TResources.Users: iResources;
begin
  Result := Self;
  FParent.Uri(epUSERS);
end;

function TResources.Visits: iResources;
begin
  Result := Self;
  FParent.Uri(epVISITS);
end;

function TResources.ZipCodes: iResources;
begin
  Result := Self;
  FParent.Uri(epZIP_CODES);
end;

end.
