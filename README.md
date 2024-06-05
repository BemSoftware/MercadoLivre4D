<br>
<h1 align="center">
  <a href="https://developers.mercadolibre.com">
    <img src="https://user-images.githubusercontent.com/1153516/29861072-689ec57e-8d3e-11e7-8368-dd923543258f.jpg" alt="Mercado Libre Developers" width="230"></a>
  </a>
  <br><br>
  MercadoLivre4D
  <br>
</h1>

<h4 align="center">This is the Delphi Framework for the Mercado Livre platform.</h4>

## Requirements

Building the API client library requires:

1. [RestRequest4D](https://github.com/viniciussanchez/RESTRequest4Delphi)
2. [LocalCache4D](https://github.com/bittencourtthulio/localcache4d)

## Installation

To install the API client library to your local repository, simply execute:

```shell
boss install
```
## Usage

```delphi

var
  _Mercadolivre4D : iMercadolivre4D;
  AuthURL : String;

implementation

const
  ClientId = '123456789';
  ClientSecret = 'abc123';
  Code = 'TAP-1324';
  RedirectUri = 'http://localhost/redirect';
  APP_ID = '987654321';

initialization
  _Mercadolivre4D := TMercadolivre4D.New;

  _Mercadolivre4D
    .Configuration
      .ClientId(ClientId)
      .ClientSecret(ClientSecret)
      .Code(Code)
      .RedirectUri(RedirectUri)
      .APP_ID(APP_ID);
end.
```

The AuthURL variable will give you the url to redirect the user. You need to specify a callback url that will be redirected to the user after a successful authorization process.

Once the user is redirected to the callback url, you will receive a parameter named code in the query string. You will need this for authentication.

## Documentation & Important notes

##### The URIs are relative to https://api.mercadolivre.com

##### The Authorization URLs (set the correct country domain):  
1. "https://auth.mercadolibre.com.ar"
2. "https://auth.mercadolivre.com.br"
3. "https://auth.mercadolibre.com.co"
4. "https://auth.mercadolibre.com.mx"
5. "https://auth.mercadolibre.com.uy"
6. "https://auth.mercadolibre.cl"
7. "https://auth.mercadolibre.com.cr"
8. "https://auth.mercadolibre.com.ec"
9. "https://auth.mercadolibre.com.ve"
10. "https://auth.mercadolibre.com.pa"
11. "https://auth.mercadolibre.com.pe"
12. "https://auth.mercadolibre.com.do"
13. "https://auth.mercadolibre.com.bo"
14. "https://auth.mercadolibre.com.py" 

##### All docs for the library are located [here](https://github.com/alepmedeiros/Mercadolivre4D/tree/master/docs)

##### Check out our examples codes in the folder [examples](https://github.com/alepmedeiros/Mercadolivre4D/tree/master/examples)

##### Don’t forget to check out our [developer site](https://developers.mercadolivre.com/)
