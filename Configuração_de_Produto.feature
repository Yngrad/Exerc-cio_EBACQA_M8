#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero Configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página de um produto na EBAC-SHOP

Cenário: Seleções obrigatórias
Quando clicar para adicionar o protudo no carrinho
Então o sistema não deve permitir que eu adicione o protudo sem antes selecionar as definições de cor, tamanho e quantidade

Cenário: 10 produtos por venda
Quando adicionar 10 produtos ao carrinho
E tentar adicionar mais um produto
Então o sistema deverá exibir a mensagem de alerta "O limite de produtos foi atingido."

Cenário: Botão "limpar" volta ao estado original
Quando clicar no botão “limpar”
Então as opções selecionadas devem voltar ao estado original, sem seleção.

