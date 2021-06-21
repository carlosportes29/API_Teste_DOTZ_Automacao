# API
teste

Visual Studio
Ruby gems-- baixar a ultima versão

CMDer
bundler install e etc
cucumber --init



source 'https://rubygems.org'
gem 'cucumber'  # interface da documentação com o código ruby https://cucumber.io/.
gem 'factory_bot'   # ajuda na criação payload https://github.com/thoughtbot/factory_bot.
gem 'faker' # gerar dados fake https://github.com/faker-ruby/faker.
gem 'httparty'  # responsável pelas requisições de web services https://github.com/jnunemaker/httparty.
gem 'rspec' # que permite fazer as asserções https://rspec.info/.


httparty:
1- Sucesso
require 'httparty'
response = HTTParty.get('https://fakerestapi.azurewebsites.net/api/v1/Activities')
puts "response code :#{response.code}"
puts "response message :#{response.message}"
puts "response headers :#{response.headers}"
puts "response body :#{response.body}"

response code :200
response message :OK
response headers :{"transfer-encoding"=>["chunked"], "content-type"=>["application/json; charset=utf-8; v=1.0"], "server"=>["Kestrel"], "api-supported-versions"=>["1.0"], "date"=>["Mon, 21 Jun 2021 06:33:55 GMT"], "connection"=>["close"]}
response body :[{"id":1,"title":"Activity 1","dueDate":"2021-06-21T07:33:55.7820179+00:00","completed":false},.............

2- Erro - passar o parametro acima do máximo de atividades
require 'httparty'
response = HTTParty.get('https://fakerestapi.azurewebsites.net//api/v1/Activities/50')
puts "response code :#{response.code}"
puts "response message :#{response.message}"
puts "response headers :#{response.headers}"
puts "response body :#{response.body}"

{"type":"https://tools.ietf.org/html/rfc7231#section-6.5.4","title":"Not Found","status":404,"traceId":"00-616001cc76479f43912ae0de19f9fa3f-de0718870a0cd54f-00"}




