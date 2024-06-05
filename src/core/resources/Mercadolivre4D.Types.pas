unit Mercadolivre4D.Types;

interface

uses
  System.SysUtils,
  System.TypInfo;

type
  TBasePath = (MELI, MELI_AUTH);

  TEndPointType = (epUSER_TEST, epAUTHORIZATION, epOAUTH_TOKEN, epUSERS, epME,
    epADDRESSES, epACCEPTED_PAYMENT_METHODS, epAPPLICATIONS, epBRANDS,
    epCLASSIFIEDS_PROMOTION_PACKS, epAVAILABLE_LISTING_TYPES, epMYFEEDS,
    epSITES, epSITE_DOMAINS, epLISTING_TYPES, epLISTING_EXPOSURES,
    epLISTING_PRICES, epCATEGORIES, epATTRIBUTES, epDOMAIN_DISCOVERY,
    epCLASSIFIED_LOCATIONS, epCOUNTRIES, epSTATES, epCITIES, epCURRENCIES,
    epCURRENCY_CONVERSIONS, epSEARCH, epZIP_CODES, epCOUNTRY, epSEARCH_BETWEEN,
    epITEMS, epQUESTIONS, epANSWERS, epQUESTIONS_BLACKLIST,
    epRECEIVED_QUESTIONS, epORDERS, epPAYMENTS, epPAYMENTS_METHODS, epFEEDBACKS,
    epREPLY, epORDERS_BLACKLIST, epPRODUCT, epITEMS_VISITS, epTIME_WINDOW,
    epCONTACTS, epPHONE_VIEWS, epSHIPMENTS, epSHIPPING_OPTIONS,
    epSHIPPING_METHODS, epSHIPPING_MODES, epSHIPPING_PREFERENCES,
    epSHIPMENT_LABELS, epCOLLETIONS, epMESSAGES, epQUOTATIONS, epMISSED_FEEDS,
    epCOMMUNICATIONS, epNOTICES, epMY, epFEEDBACK, epORDER_BLACKLIST, epVISITS,
    epOAUTH, epTOKEN);

  TFiltersQuery = (fqFROM, fqTO, fqZIP_CODE_FROM, fqZIP_CODE_TO, fqCATEGORY,
    fqQ, fqNICKNAME, fqSELLER_ID, fqIDS, fqATTRIBUTES, fqSEARCH_TYPE,
    fqCATEGORYID, fqCATEGORY_ID, fqPRICE, fqITEM, fqSELLER, fqBUYER,
    fqDATE_FROM, fqDATE_TO, fqLAST, fqUNIT, fqENDING, fqZIP_CODE, fqQUANTITY,
    fqSHIPMENT_IDS, fqRESPONSE_TYPE, fqSAVEPDF, fqAPPLICATION_ID, fqAPP_ID,
    fqBUYER_ID, fqCITY_ID, fqCOUNTRY_ID, fqCURRENCY_ID, fqCUST_ID, fqDIMENSIONS,
    fqFEEDBACK_ID, fqITEM_ID, fqLISTING_TYPE, fqLISTING_TYPE_ID,
    fqLISTING_TYPR_ID, fqORDER_ID, fqPAYMENT_ID, fqQUESTION_ID, fqSHIPMENT_ID,
    fqDOMAIN_URL, fqSITE_ID, fqSTATE_ID, fqUSER_ID);

  THeadersAPI = (CONTENT_TYPE, ACCEPT, APPLICATION_JSON, APPLICATION_FROM);

  TEndPOintTypeHelper = record helper for TEndPointType
    function GetValue: String;
  end;

  TBasePathHelper = record helper for TBasePath
    function GetValue: String;
  end;

  TFiltersQueryHelper = record helper for TFiltersQuery
    function GetValue: String;
  end;

  THeadersAPIHelper = record helper for THeadersAPI
    function GetValue: String;
  end;
implementation

{ TEndPOintTypeHelper }

function TEndPOintTypeHelper.GetValue: String;
begin
  Result := '/' + LowerCase(Copy(GetEnumName(TypeInfo(TEndPointType),
    Integer(Self)), 3, Length(GetEnumName(TypeInfo(TEndPointType),
    Integer(Self)))));
end;

{ TBasePathHelper }

function TBasePathHelper.GetValue: String;
begin
  case Self of
    MELI:
      Result := 'https://api.mercadolibre.com';
    MELI_AUTH:
      Result := 'https://auth.mercadolivre.com.br';
  end;
end;

{ TFiltersQueryHelper }

function TFiltersQueryHelper.GetValue: String;
begin
  Result := LowerCase(Copy(GetEnumName(TypeInfo(TFiltersQuery), Integer(Self)),
    3, Length(GetEnumName(TypeInfo(TFiltersQuery), Integer(Self))))) + '=';
end;

{ THeadersAPIHelper }

function THeadersAPIHelper.GetValue: String;
begin
  case Self of
    CONTENT_TYPE : Result := 'Content-Type';
    ACCEPT : Result := 'accept';
    APPLICATION_JSON : Result := 'application/json';
    APPLICATION_FROM : Result := 'application/x-www-form-urlencoded';
  end;
end;

end.
