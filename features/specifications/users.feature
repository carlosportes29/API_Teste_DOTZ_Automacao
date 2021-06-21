#language: pt

@users
Funcionalidade: Users
    validar operações da API Users

    @testeapi_carlos
    Cenário: Validar GET API Users
        Quando faço uma requisição GET para o serviço Users
        Então o serviço Users deve responder com 200
        E retorna a lista de usuários

    @testeapi_carlos2
    Cenário: Validar GET API Users com id
        Quando faço uma requisição GET para o serviço Users passando id
        Então o serviço Users deve responder com 200
        E retorna o usuário
