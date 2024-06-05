unit Mercadolivre4D.DTO.PicturesDTO;

interface

uses
  Mercadolivre4D.DTO.Interfaces,
  MercadoLivre4D.Model.Item, MercadoLivre4D.Model.Pictures;

type
  TPicturesDTO<T : IInterface> = class(TInterfacedObject, iPicturesDTO<T>)
    private
      [weak]
      FParent : T;

      FEntity : TItem;
      FSource : String;

      procedure SetList;
    public
      constructor Create(Parent : T; aEntity : TItem);
      destructor Destroy; override;
      class function New(Parent : T; aEntity : TItem) : iPicturesDTO<T>;
      function Source(Value : String) : iPicturesDTO<T>;
      function &End : T;
  end;

implementation

function TPicturesDTO<T>.&End: T;
begin
  Result := FParent;
  SetList;
end;

constructor TPicturesDTO<T>.Create(Parent : T; aEntity : TItem);
begin
  FParent := Parent;
  FEntity := aEntity;
end;

destructor TPicturesDTO<T>.Destroy;
begin

  inherited;
end;

class function TPicturesDTO<T>.New(Parent : T; aEntity : TItem) : iPicturesDTO<T>;
begin
  Result := Self.Create(Parent, aEntity);
end;

procedure TPicturesDTO<T>.SetList;
var
  I : Integer;
begin
  FEntity.Pictures.Add(TPictures.Create);
  I := FEntity.Pictures.Count -1;
  FEntity.Pictures[I].Source := FSource;
end;

function TPicturesDTO<T>.Source(Value: String): iPicturesDTO<T>;
begin
  Result := Self;
  FSource := Value;
end;

end.
