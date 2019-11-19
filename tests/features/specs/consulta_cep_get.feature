#language: pt

Funcionalidade: Localizar endereço por CEP

Eu como usuário 
Desejo consultar um cep
Para saber o endereço completo


  Cenario: Consulta CEP valido
  Dado que eu faça um GET no endpoint viacep
  Entao o retorno dele será o endereço completo

  Cenario: Consulta CEP inválido
  Dado que eu faça um GET no endpoint viacep com CEP inválido
  Entao o retorno dele será CEP não cadastrado

  Cenario: Consulta CEP com retorno do IBGE
  Dado que eu faça um GET no endpoint viacep solicitando apenas o IBGE
  Entao o retorno dele será apenas o id do IBGE