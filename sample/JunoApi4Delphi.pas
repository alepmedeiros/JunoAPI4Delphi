unit JunoApi4Delphi;

interface

uses
  JunoApi4Delphi.Interfaces;

var
  _JunoApi4Delphi : iJunoApi4DelphiManager;

implementation

uses
  JunoApi4DelphiManager;

const
  //Informações encontradas na plataforma do juno em integrações
  ClientId = 'ClientId';
  ClientSecret = 'ClientSecret';
  ResourceToken = 'ResourceToken';

initialization
  _JunoApi4Delphi := TJunoApi4DelphiManager.New;

  _JunoApi4Delphi
    .Config
    .ClientId(ClientId)
    .ClientSecret(ClientSecret)
    .ResourceToken(ResourceToken)
    .Sandbox;

end.
