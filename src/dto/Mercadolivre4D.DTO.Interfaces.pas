unit Mercadolivre4D.DTO.Interfaces;

interface

type
  iAttributesDTO<T> = interface;
  iPicturesDTO<T> = interface;
  iSaleTermsDTO<T> = interface;

  iItemDTO = interface
    function Attributes : iAttributesDTO<iItemDTO>;
    function AvailableQuantity(Value : Integer) : iItemDTO;
    function BuyingMode(Value : string) : iItemDTO;
    function CategoryId(Value : string) : iItemDTO;
    function Condition(Value : string) : iItemDTO;
    function CurrencyId(Value : string) : iItemDTO;
    function ListingTypeId(Value : string) : iItemDTO;
    function Pictures: iPicturesDTO<iItemDTO>;
    function Price(Value : Integer) : iItemDTO;
//    function SaleTerms : iSaleTermsDTO<iItemDTO>;
    function Title(Value : string) : iItemDTO;
    function Content : String;
    function &End : iItemDTO;
  end;

  iAttributesDTO<T> = interface
    function Id(Value : String) : iAttributesDTO<T>;
    function ValueName(Value : String) : iAttributesDTO<T>;
    function &End : T;
  end;

  iPicturesDTO<T> = interface
    function Source(Value : String) : iPicturesDTO<T>;
    function &End : T;
  end;

  iSaleTermsDTO<T> = interface
    function Id(Value : String) : iSaleTermsDTO<T>;
    function ValueName(Value : String) : iSaleTermsDTO<T>;
    function &End : T;
  end;

  iEntity = interface
    function Item : iItemDTO;
    function Content : String;
  end;

implementation

end.
