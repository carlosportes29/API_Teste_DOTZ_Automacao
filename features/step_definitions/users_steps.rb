##
Quando('faço uma requisição GET para o serviço Users') do
    @resquest_users = users.get_users
end
  
Então('o serviço Users deve responder com {int}') do |status_code|
    expect(@resquest_users.code).to eq status_code
end
  
E('retorna a lista de usuários') do
    expect(@resquest_users.message).not_to be_empty
end

Quando('faço uma requisição GET para o serviço Users passando id') do
    @id = sort_id.to_i
    @resquest_users = users.get_user(@id)
end
  
Então('retorna o usuário') do
    expect(@resquest_users.parsed_response['id']).to eql @id
end