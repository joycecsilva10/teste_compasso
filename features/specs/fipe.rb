Dado('que tenho os códigos de {string}, {string} e {string}') do |marca, modelo, ano|
  @marca = marca
  @modelo = modelo
  @ano = ano
end

Quando('efetuar a requsição na API') do
  @result = HTTParty.get("#{$host_fipe}/fipe/api/v1/carros/marcas/#{@marca}/modelos/#{@modelo}/anos/#{@ano}")
end

Então('é o retornado o valor da fipe do modelo selecionado {string}') do |modelo|
  raise "Não foi localizado nenhum veiculo com essas informações. #{@result.parsed_response.to_json}" unless
        @result.code.eql? 200

  expect(@result.body.empty?)
  expect(@result['Modelo']).to eql(modelo)
  expect(@result).to include('Valor', 'Marca', 'Modelo', 'AnoModelo', 'Combustivel', 'CodigoFipe', 'MesReferencia', 'MesReferencia', 'SiglaCombustivel')
end
