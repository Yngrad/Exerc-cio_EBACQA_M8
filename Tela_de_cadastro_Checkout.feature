            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer e concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de casdatro do site da EBAC-SHOP

            Cenário: Dados obrigatórios preenchidos
            Quando todos os dados obrigatórios marcados com asterísticos forem preenchidos
            Então o sistema deve finalizar o cadastro
            E redirecionar para a tela de checkout

            Esquema do Cenário: E-mail com formato inválido
            Quando inserir um <e-mail> com formato inválido
            Então o sistema deve exibir a mensagem de erro "Formato de e-mail inválido"

            Exemplos:
            | e-mail              |
            | "joao@ebac.com"     |
            | "joao@ebaccom.br"   |
            | "joao@ebaccombr"    |
            | "joao@ebac.br"      |
            | "joao@ebac..com.br" |

            Cenário: Campos vazios
            Quando tentar finalizar o cadastro com os campos obrigatórios não preenchidos
            Então o sistema deve exibir a mensagem de alerta "Campo Obrigatório"