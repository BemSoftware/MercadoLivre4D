unit Mercadolivre4D.Resources.Users;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TUsers = class(TInterfacedObject, iUsers)
    private
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iUsers;
      function QueryParams : iQueryParams<iUsers>;
      function SegmentParams : iSegmentParams<iUsers>;
      function &End : iResources;
  end;

implementation

function TUsers.&End: iResources;
begin
  Result := FParent;
end;

constructor TUsers.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TUsers.Destroy;
begin

  inherited;
end;

class function TUsers.New (Parent : iResources) : iUsers;
begin
  Result := Self.Create(Parent);
end;

function TUsers.QueryParams: iQueryParams<iUsers>;
begin

end;

function TUsers.SegmentParams: iSegmentParams<iUsers>;
begin

end;

end.
