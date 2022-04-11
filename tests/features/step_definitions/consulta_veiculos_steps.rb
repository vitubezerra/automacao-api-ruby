Dado('que tenho interesse em adquirir um veiculo') do
@get_url = ('https://desafioonline.webmotors.com.br/api/OnlineChallenge/Make')
end

Quando('realizo a busca') do
  @list_employee = HTTParty.get(@get_url)
end

Então('recebo a lista de veiculos da marca solicitada') do
  log @list_employee.to_json
  expect(@list_employee.code).to eql 200
  expect(@list_employee.message).to eql 'OK'
end