unit Mercadolivre4D.RttiHelpers;

interface

uses
  Rtti,
  Mercadolivre4D.Maps;

type
  TCustomAttributeClass = class of TCustomAttribute;

  TRttiPropertyHelper = class helper for TRttiProperty
  public
    function Have<T: TCustomAttribute>: Boolean;
    function GetAttribute<T: TCustomAttribute>: T;
  end;

  TRttiTypeHelper = class helper for TRttiType
  public
    function Have<T: TCustomAttribute>: Boolean;
    function GetAttribute<T: TCustomAttribute>: T;
  end;

implementation

{ TRttiPropertyHelper }

function TRttiPropertyHelper.GetAttribute<T>: T;
var
  lAttribute: TCustomAttribute;
begin
  Result := nil;
  for lAttribute in GetAttributes do
    if lAttribute is T then
      Exit((lAttribute as T));
end;

function TRttiPropertyHelper.Have<T>: Boolean;
begin
  Result := GetAttribute<T> <> nil;
end;

{ TRttiTypeHelper }

function TRttiTypeHelper.GetAttribute<T>: T;
var
  oAtributo: TCustomAttribute;
begin
  Result := nil;
  for oAtributo in GetAttributes do
    if oAtributo is T then
      Exit((oAtributo as T));
end;

function TRttiTypeHelper.Have<T>: Boolean;
begin
  Result := GetAttribute<T> <> nil
end;

end.
