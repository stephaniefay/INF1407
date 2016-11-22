#Terceiro Trabalho de Programação para Web de 2016/2

Faça uma página HTML + Javascript para emitir notas fiscais. Uma nota fiscal pode ser entendida como uma lista de produtos comprados. Um produto comprado contém os seguintes dados:

* Quantidade comprada (inteiro)
* Código (texto)
* Descrição (texto)
* Preço unitário (real)
* Preço total (real)

**Implementação**

Construa uma página que apresente um formulário para o usuário entrar com os dados de um produto. Note que o preço total não precisa ser informado porque pode ser calculado automaticamente. Esse formulário deve conter um botão com símbolo "+" (sem as aspas) para que o usuário inclua o produto digitado na lista da nota fiscal.

Quando o usuário clicar no botão, o produto e todos os seus dados (incluindo o preço total) devem aparecer listados abaixo do formulário, ordenados crescentemente por código. Não é necessário implementar a exclusão de um produto nem se preocupar se o usuário digitou código repetido.

No final da página, crie um botão para enviar os dados para o servlet "Confere". O servlet pode ser baixado do nosso site. Ele se registra na raiz de seu site, ou seja, basta colocar o seguinte texto para referenciar o servlet se você criar a sua página na raiz: 

`<form action="Confere" method="get">`

Obrigatório na sua implementação:

1. Crie um objeto da classe produto para armazenar os dados de um produto

2. Cre um vetor onde cada posição armazena um produto (um objeto da classe produto)

##Erros Conhecidos (e ainda não tratados)

* Essa prova ainda não foi corrigida pelo professor.
