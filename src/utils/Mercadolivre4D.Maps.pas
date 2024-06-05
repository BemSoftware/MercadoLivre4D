unit Mercadolivre4D.Maps;

interface

type
  Serialized = class(TCustomAttribute)
  private
    FDescricao: String;
    procedure SetDescricao(const Value: String);
  public
    constructor Create(aValue : String);
    property Descricao : String read FDescricao write SetDescricao;
  end;

  Default = class(TCustomAttribute)
  private
    FDescricao: String;
    procedure SetDescricao(const Value: String);
  public
    constructor Create(aValue : String);
    property Descricao : String read FDescricao write SetDescricao;
  end;

  OneToOne = class(TCustomAttribute)
  end;

  OneToMany = class(TCustomAttribute)
  end;

  IsList = class(TCustomAttribute)
  end;

implementation

{ Default }

constructor Default.Create(aValue: String);
begin
  FDescricao := aValue;
end;

procedure Default.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

{ Serialized }

constructor Serialized.Create(aValue: String);
begin
  FDescricao := aValue;
end;

procedure Serialized.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

end.
