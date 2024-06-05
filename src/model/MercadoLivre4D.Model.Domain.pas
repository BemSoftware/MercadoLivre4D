unit MercadoLivre4D.Model.Domain;

interface

uses
  Mercadolivre4D.Utils,
  MercadoLivre4D.Model.Attributes,
  System.Generics.Collections;

type
  TDomain = class
  private
    FName: String;
    FAttributes: TObjectList<TAttributes>;
    FCategoryId: String;
    FDomainId: String;
    FCategoryName: String;
    procedure SetAttributes(const Value: TObjectList<TAttributes>);
    procedure SetCategoryId(const Value: String);
    procedure SetCategoryName(const Value: String);
    procedure SetDomainId(const Value: String);
    procedure SetName(const Value: String);
  public
    [Serialized('domain_id')]
    property DomainId : String read FDomainId write SetDomainId;
    [Serialized('domain_name')]
    property Name : String read FName write SetName;
    [Serialized('category_id')]
    property CategoryId : String read FCategoryId write SetCategoryId;
    [Serialized('category_name')]
    property CategoryName : String read FCategoryName write SetCategoryName;
    [Serialized('attributes')]
    property Attributes : TObjectList<TAttributes> read FAttributes write SetAttributes;
  end;

implementation

{ TCategory }

procedure TDomain.SetAttributes(const Value: TObjectList<TAttributes>);
begin
  FAttributes := Value;
end;

procedure TDomain.SetCategoryId(const Value: String);
begin
  FCategoryId := Value;
end;

procedure TDomain.SetCategoryName(const Value: String);
begin
  FCategoryName := Value;
end;

procedure TDomain.SetDomainId(const Value: String);
begin
  FDomainId := Value;
end;

procedure TDomain.SetName(const Value: String);
begin
  FName := Value;
end;

end.
