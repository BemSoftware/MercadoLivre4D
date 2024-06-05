unit Mercadolivre4D.DTO.SaleTermsDTO;

interface

uses
  MercadoLivre4D.Model.Item, Mercadolivre4D.DTO.Interfaces,
  MercadoLivre4D.Model.SaleTerms;

type
  TSaleTermsDTO<T : IInterface> = class(TInterfacedObject, iSaleTermsDTO<T>)
    private
      [weak]
      FParent : T;

      FEntity : TItem;
      FId : String;
      FVAlueNAme:String;

      procedure SetList;
    public
      constructor Create(Parent : T; aEntity : TItem);
      destructor Destroy; override;
      class function New(Parent : T;aEntity:TItem) : iSaleTermsDTO<T>;
      function Id(Value : String) : iSaleTermsDTO<T>;
      function ValueName(Value : String) : iSaleTermsDTO<T>;
      function &End : T;
  end;

implementation

function TSaleTermsDTO<T>.&End: T;
begin
  Result := FParent;
  SetList;
end;

constructor TSaleTermsDTO<T>.Create(Parent : T; aEntity: TItem);
begin
  FParent := Parent;
  FEntity := aEntity;
end;

destructor TSaleTermsDTO<T>.Destroy;
begin

  inherited;
end;

function TSaleTermsDTO<T>.Id(Value: String): iSaleTermsDTO<T>;
begin
  Result := Self;
  FId := VAlue;
end;

class function TSaleTermsDTO<T>.New(Parent : T;aEntity:TItem) : iSaleTermsDTO<T>;
begin
  Result := Self.Create(Parent,aEntity);
end;

procedure TSaleTermsDTO<T>.SetList;
var
  I : Integer;
begin
//  FEntity.SaleTerms.Add(TSaleTerms.Create);
//  I := FEntity.SaleTerms.Count -1;
//  FEntity.SaleTerms[I].Id := FId;
//  FEntity.SaleTerms[I].ValueName := FVAlueNAme;
end;

function TSaleTermsDTO<T>.ValueName(Value: String): iSaleTermsDTO<T>;
begin
  Result := Self;
  FValueName := Value;
end;

end.
