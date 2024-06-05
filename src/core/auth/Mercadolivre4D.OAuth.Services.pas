unit Mercadolivre4D.OAuth.Services;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TServices<T : IInterface> = class(TInterfacedObject, iServices<T>)
    private
      [weak]
      FParent : T;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iServices<T>;
      function Get : iServices<T>;
      function Post(aBody : iEntity) : iServices<T>;
      function Put(aBody : iEntity) : iServices<T>;
      function Delete : iServices<T>;
  end;

implementation

constructor TServices<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

function TServices<T>.Delete: iServices<T>;
begin

end;

destructor TServices<T>.Destroy;
begin

  inherited;
end;

function TServices<T>.Get: iServices<T>;
begin

end;

class function TServices<T>.New(Parent : T) : iServices<T>;
begin
  Result := Self.Create(Parent);
end;

function TServices<T>.Post(aBody : iEntity): iServices<T>;
begin

end;

function TServices<T>.Put(aBody : iEntity): iServices<T>;
begin

end;

end.
