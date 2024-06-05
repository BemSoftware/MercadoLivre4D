unit Mercadolivre4D.DTO.PictureIdsDTO;

interface

uses
  Mercadolivre4D.DTO.Interfaces;

type
  TPictureIdsDTO<T : IInterface> = class(TInterfacedObject, iPictureIds<T>)
    private
      [weak]
      FParent : T;

      FId : String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iPictureIds<T>;
      function Id(Value : String) : iPictureIds<T>; overload;
      function Id : String; overload;
      function &End : T;
  end;

implementation

function TPictureIdsDTO<T>.&End: T;
begin
  Result := FParent;
end;

constructor TPictureIdsDTO<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TPictureIdsDTO<T>.Destroy;
begin

  inherited;
end;

function TPictureIdsDTO<T>.Id(Value: String): iPictureIds<T>;
begin
  Result := Self;
  FId := Value;
end;

function TPictureIdsDTO<T>.Id: String;
begin
  Result := FId;
end;

class function TPictureIdsDTO<T>.New(Parent : T) : iPictureIds<T>;
begin
  Result := Self.Create(Parent);
end;

end.
