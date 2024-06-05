unit Mercadolivre4D.Resources.Interfaces;

interface

uses
  Mercadolivre4D.Configuration,
  Mercadolivre4D.Types,
  Mercadolivre4D.OAuth.Interfaces;

type
  iFilters<T> = interface;
  iQueryParams<T> = interface;
  iSegmentParams<T> = interface;

  iResources = interface
    function Users : iResources;
    function Me : iResources;
    function Addresses : iResources;
    function AcceptedPaymentMethods : iResources;
    function Applications : iResources;
    function Brands : iResources;
    function ClassifiedsPromotionPacks : iResources;
    function AvailableListingType : iResources;
    function MyFeeds : iResources;
    function Sites : iResources;
    function SiteDomains : iResources;
    function ListingTypes : iResources;
    function ListingExposures : iResources;
    function ListingPrices : iResources;
    function Categories : iResources;
    function Attributes : iResources;
    function DomainDiscovery : iResources;
    function Search : iResources;
    function ClassifiedLocations : iResources;
    function Countries : iResources;
    function States : iResources;
    function Cities : iResources;
    function Currencies : iResources;
    function CurrencyConversions : iResources;
    function ZipCodes : iResources;
    function SearchBetween : iResources;
    function Items : iResources;
    function Questions : iResources;
    function Answers : iResources;
    function QuestionsBlacklist : iResources;
    function My : iResources;
    function ReceivedQuestions : iResources;
    function Orders : iResources;
    function Payments : iResources;
    function PaymentMethods : iResources;
    function Feedback : iResources;
    function OrderBacklist : iResources;
    function Product : iResources;
    function ItemsVisits : iResources;
    function Contacts : iResources;
    function TimeWindow : iResources;
    function PhoneViews : iResources;
    function Visits : iResources;
    function Shipments : iResources;
    function ShippingOptions : iResources;
    function ShippingModes : iResources;
    function ShippingPreferences : iResources;
    function ShipmentsLabels : iResources;
    function QueryParams : iQueryParams<iResources>;
    function SegmentParams : iSegmentParams<iResources>;
    function &And : iResources;
    function &End : iResources;
    function Services : iServices<iResources>;
  end;

  iQueryParams<T> = interface
    function Filters : iFilters<iQueryParams<T>>;
    function &End : T;
  end;

  iSegmentParams<T> = interface
    function Filters : iFilters<iSegmentParams<T>>;
    function &End : T;
  end;

  iFilters<T> = interface
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

end.
