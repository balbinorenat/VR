Dado('que eu faça um GET no endpoint viacep') do
  @get_cep = ConsultCepService.get '/01529010/json/'
end

Entao('o retorno dele será o endereço completo') do
  puts @get_cep.body
 
end

Dado('que eu faça um GET no endpoint viacep com CEP inválido') do
  @get_cep = ConsultCepService.get '/01111010/json/'
end

Entao('o retorno dele será CEP não cadastrado') do
  puts @get_cep.body

end

Dado('que eu faça um GET no endpoint viacep solicitando apenas o IBGE') do
  @get_cep = ConsultCepService.get '/01529010/json/'
end

Entao('o retorno dele será apenas o id do IBGE') do
  puts @get_cep['ibge']

end