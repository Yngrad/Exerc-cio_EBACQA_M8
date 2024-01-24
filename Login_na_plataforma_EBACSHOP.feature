            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Esquema do Cenário: Dados válidos
            Quando eu digitar o <usuario>
            E a <senha>
            Então devo ser redirecionado para a tela de checkout

            Exemplos:
            | usuario              | senha       |
            | "joao@ebac.com.br"   | "teste@123" |
            | "maria@ebac.com.br"  | "teste@456" |
            | "alan@ebac.com.br"   | "teste@789" |
            | "taylor@ebac.com.br" | "teste@101" |

            Cenário: Usuário inválido
            Quando eu digitar o usuário "mariiia@ebac.com.br"
            E a senha "senha@456"
            Então o sistema deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "maria@ebac.com.br"
            E a senha "aushdifajdo"
            Então o sistema deve exibir uma mesagem de alerta "Usuário ou senha inválidos"