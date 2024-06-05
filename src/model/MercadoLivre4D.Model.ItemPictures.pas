unit MercadoLivre4D.Model.ItemPictures;

interface

type
  TPictures = class
  private
    FSource: String;
    procedure SetSource(const Value: String);
  public
    property Source : String read FSource write SetSource;
  end;

implementation

{ TPicures }

procedure TPictures.SetSource(const Value: String);
begin
  FSource := Value;
end;

end.
