unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Meli4D,
  System.JSON, REST.Json,System.DateUtils;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 MeliD4
    .Resources
      .SiteDomains
      .SegmentParams
        .Filters
          .Site_Id('MLA')
        .&End
      .&End
      .ListingPrices
      .QueryParams
        .Filters
          .Price('5')
        .&End
      .&End
    .&End
    .Services
      .List;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  MeliD4
    .Resources
      .Items
    .&End;
end;

end.
