unit Meli4D;

interface

uses
  Mercadolivre4D;

var
  MeliD4 : iMercadolivre4D;

implementation

const
  CLIENTID = '1900738216216553';
  CLIENTSECRET = 'rETdYpdJkQAnLrd5JzWP0P9KxWQ77Xy3';
  CODE = 'TG-61488c20aca43a000a121354-817396082';
  REDIRECTURL = 'http://localhost/redirec';

initialization
  MeliD4 := TMercadolivre4D.New;

  MeliD4
    .Configuration
      .ClientId(CLIENTID)
      .ClientSecret(CLIENTSECRET)
      .Code(CODE)
      .RedirectUri(REDIRECTURL);

end.
