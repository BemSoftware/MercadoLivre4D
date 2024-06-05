unit Mercadolivre4D.Interfaces;

interface

uses
  Mercadolivre4D.Types;

type
  iConfiguration = interface
    function ClientId(Value : String) : iConfiguration; overload;
    function ClientId : String; overload;
    function ClientSecret(Value : String) : iConfiguration; overload;
    function ClientSscret : String; overload;
    function Code(Value : String) : iConfiguration; overload;
    function Code : String; overload;
    function RedirectUri(Value : String) : iConfiguration; overload;
    function RedirectUri : String; overload;
    function APP_ID(Value : String) : iConfiguration; overload;
    function APP_ID : String; overload;
    function GrantType : String;
    function Uri(Value : TEndPointType) : iConfiguration; overload;
    function Uri(Value : String) : iConfiguration; overload;
    function Uri : String; overload;
    function UriClear : iConfiguration;
    function Autenticacao(var AuthMeli : String) : iConfiguration;
  end;

implementation

end.
