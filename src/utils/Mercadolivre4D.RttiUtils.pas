unit Mercadolivre4D.RttiUtils;

interface

uses
  Mercadolivre4D.RttiHelpers,
  Mercadolivre4D.Maps,
  System.JSON,
  System.Rtti;

type
  TRttiUtils = class
  private
    function GetRttiPropertyValue(aProperty: TRttiProperty; aObject: TObject): Variant;
  public
    class procedure JsonToObject(aJson: String; var aResult: TObject);
  end;

implementation

{ TRttiUtils }

function TRttiUtils.GetRttiPropertyValue(aProperty: TRttiProperty;
  aObject: TObject): Variant;
begin

end;

class procedure TRttiUtils.JsonToObject(aJson: String; var aResult: TObject);
var
  lContext: TRttiContext;
  lType: TRttiType;
  lProperty: TRttiProperty;
  lAttribute: TCustomAttribute;
  lValue: Variant;
begin
  lContext := TRttiContext.Create;
  try
    lType := lContext.GetType(aResult.ClassInfo);
    for lProperty in lType.GetProperties do
      if lProperty.Have<Serialized> then
  finally
    lContext.Free;
  end;
end;

end.
