unit MercadoLivre4D.Model.SaleTerms;

interface

uses
  Pkg.Json.DTO,
  System.Generics.Collections,
  REST.Json.Types;

type
  TSaleTerms = class
  private
    FId: string;
    [JSONName('value_name')]
    FValueName: string;
  published
    property Id: string read FId write FId;
    property ValueName: string read FValueName write FValueName;
  end;

implementation

end.
