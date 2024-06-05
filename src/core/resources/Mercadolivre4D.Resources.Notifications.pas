unit Mercadolivre4D.Resources.Notifications;

interface

uses
  Mercadolivre4D.Resources.Interfaces;

type
  TNotifications = class(TInterfacedObject, iNotifications)
    private
      [weak]
      FParent : iResources;
    public
      constructor Create(Parent : iResources);
      destructor Destroy; override;
      class function New(Parent : iResources) : iNotifications;
      function QueryParams : iQueryParams<iNotifications>;
      function SegmentParams : iSegmentParams<iNotifications>;
      function &End : iResources;
  end;

implementation

function TNotifications.&End: iResources;
begin
  Result := FParent;
end;

constructor TNotifications.Create(Parent : iResources);
begin
  FParent := Parent;
end;

destructor TNotifications.Destroy;
begin

  inherited;
end;

class function TNotifications.New(Parent : iResources) : iNotifications;
begin
  Result := Self.Create(Parent);
end;

function TNotifications.QueryParams: iQueryParams<iNotifications>;
begin

end;

function TNotifications.SegmentParams: iSegmentParams<iNotifications>;
begin

end;

end.
