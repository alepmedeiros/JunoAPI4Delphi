<p align="center">
  <a href="https://github.com/alepmedeiros/JunoAPI4Delphi/blob/master/imagens/logo.png">
    <img alt="Juno" height="150" src="https://github.com/alepmedeiros/JunoAPI4Delphi/blob/master/imagens/logo.png">
  </a>  
</p><br>
<p align="center">
  <b>JunoAPI4Delphi</b> é uma biblioteca Delphi desenvolvida para consumo dos recursos da API do meio de pagamento <a href="https://juno.com.br/">Juno</a>, dando a possibilidade de integração para geração de pagamentos recorrentes e geração de boleto e muito mais.

## ⚙️ Instalação 

*Pré requisitos: [**RESTRequest4Delphi**](https://github.com/viniciussanchez/RESTRequest4Delphi) e [**DataSet-Serialize**](https://github.com/viniciussanchez/dataset-serialize)

* **Instlação manual**: Adicione as seguintes pastas ao seu projeto, em *Project > Options > Resource Compiler > Directories and Conditionals > Include file search path*

```
../JunoAPI4Delphi/src
```

## ⚡️ Como utilizar

Crie uma nova Unit e adicione nas uses JunoAPI4Delphi

```pascal
uses JunoAPI4Delphi;
```

**Ficando desta forma**

```pascal
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
```

## Observação

Seguindo como está no exemplo que acompanha, sua integração ficará simples
