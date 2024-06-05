unit Mercadolivre4D.OAuth.Interfaces;

interface

uses
  Data.DB,
  Mercadolivre4D.Configuration,
  Mercadolivre4D.Types;

type
  iHttpClient = interface
    function BaseURL(aUrl : TBasePath) : iHttpClient;
    function Token(Value : String) : iHttpClient;
    function Get(Url: String) : iHttpClient;
    function GetAll(Url: String): iHttpClient;
    function Post(Url: String): iHttpClient;
    function Put(Url: String): iHttpClient;
    function Delete(Url: String): iHttpClient;
    function Params(aKey: String; aValue: String): iHttpClient;
    function Body(Value: String): iHttpClient;
    function DataSet(Value: TDataSet) : iHttpClient;
    function Authorization : iHttpClient;
    function Content(var Value: String): iHttpClient;
  end;

  iMeliApi = interface
    function List(Resource: String): iMeliApi;
    function ToCreate(Resource: String): iMeliApi;
    function Update(Resource: String): iMeliApi;
    function Delete(Resource: String): iMeliApi;
    function Params(aKey: String; aValue: String): iMeliApi;
    function Body(Value: String): iMeliApi;
    function DataSet(aDataSet: TDataSet): iMeliApi;
    function Authentication : iMeliApi;
    function Content(var Value: String): iMeliApi;
  end;

  iServices<T> = interface
    function List : iServices<T>;
    function Post(Value : String) : iServices<T>;
    function Put(Value : String) : iServices<T>;
    function Delete : iServices<T>;
    function DataSet(Value : TDataSet) : iServices<T>;
    function Content : String;
  end;

implementation

end.
