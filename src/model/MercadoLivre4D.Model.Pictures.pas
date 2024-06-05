unit MercadoLivre4D.Model.Pictures;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

type
  TPictures = class
  private
    FSource: string;
  published
    property Source: string read FSource write FSource;
  end;

implementation

end.
