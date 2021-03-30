<p align="center">
  <a href="https://github.com/alepmedeiros/Juno4D/blob/master/imagens/logo.png">
    <img alt="Juno" height="150" src="https://github.com/alepmedeiros/Juno4D/blob/master/imagens/logo.png">
  </a>  
</p><br>
<p align="center">
  <b>Juno4D</b> é uma biblioteca Delphi desenvolvida para consumo dos recursos da API do meio de pagamento <a href="https://juno.com.br/">Juno</a>, dando a possibilidade de integração para geração de pagamentos recorrentes e geração de boleto e muito mais.

## ⚙️ Instalação 

*Pré requisitos: [**RESTRequest4Delphi**](https://github.com/viniciussanchez/RESTRequest4Delphi) e [**DataSet-Serialize**](https://github.com/viniciussanchez/dataset-serialize)

* **Instlação manual**: Adicione as seguintes pastas ao seu projeto, em *Project > Options > Resource Compiler > Directories and Conditionals > Include file search path*

```
../Juno4D/src
```

## ⚡️ Como utilizar

Adicione uma nova Unit no seu projeto seguindo o exemplo abaixo

* **Sandbox**

```pascal
uses
  Juno4D.Interfaces;

var
  _Juno4D : iJuno4DManager;

implementation

uses
  Juno4DManager;

const
  //Informações encontradas na plataforma do juno em integrações
  ClientId = 'ClientId';
  ClientSecret = 'ClientSecret';
  ResourceToken = 'ResourceToken';

initialization
  _Juno4D := TJuno4DManager.New;

  _Juno4Delphi
    .Config
    .ClientId(ClientId)
    .ClientSecret(ClientSecret)
    .ResourceToken(ResourceToken)
    .Sandbox;
```

* **Production**

```pascal
uses
  Juno4D.Interfaces;

var
  _Juno4De : iJuno4DManager;

implementation

uses
  Juno4DManager;

const
  //Informações encontradas na plataforma do juno em integrações
  ClientId = 'ClientId';
  ClientSecret = 'ClientSecret';
  ResourceToken = 'ResourceToken';

initialization
  _Juno4D := TJuno4DManager.New;

  _Juno4D
    .Config
    .ClientId(ClientId)
    .ClientSecret(ClientSecret)
    .ResourceToken(ResourceToken)
    .Production;
```

## Observação

Seguindo como está no exemplo que acompanha, sua integração ficará simples
