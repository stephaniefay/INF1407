# Quarto Trabalho de Programação para Web de 2016/2

Faça uma página de pesquina genealógica. A página deverá ter um botão e um campo para o usuário informar um sobrenome. A página deverá consultar a base de dados e apresentar uma pessoa pertencente a essa família. Ao clicar no nome da pessoa, a página deverá também apresentar os nomes dos pais dessa pessoa.

**Implementação**

(7,0) Crie uma página HTML com o playout necessário de acordo com as instruções anteriores. Coloque a resposta da consulta abaixo do formulário na página.

Para descobrir o nome da pessoa, você deve consultar o servlet BuscaPessoa através de uma requisição GET passando como parâmetro o sobrenome de uma pessoa no campo chamado "sobrenome". O resultado será um texto no formato JSON com os campos "nome" (obrigatório), "sobrenome" (obrigatório) e "agnome" (opcional). A página deverá exibir o nome completo da pessoa sem recarregar a página.

(4,0) Se o usuário clicar no nome da pessoa, a sua página deerá fazer uma consulta ao servlet BuscaPessoa (é o mesmo servlet usado anteriormente, com outro método) através de uma requisição POST passando como parâmetros o nome, o sobrenome e o agnome da pessoa nos campos "nome", "sobrenome" e "agnome" (note que o usuário pode ter apagado ou até mesmo modificado o campo do formulário, mas o sobrenome da pessoa resultante da busca anteriordeve ser utilizado na nova pesquisa). O resultado será um texto no formato XML com o formato descrito a seguir:

```
<dados>
<pessoa>Nome completo da pessoa</pessoa>
<progenitores>
<pai>Nome completo do pai com sobrenome</pai>
<mae>Nome completo da mãe com sobrenome</mae>
</progenitores>
</dados>
```

## Erros Conhecidos (e ainda não tratados)

- [ ] HTML e Javascript na mesma linha de código no arquivo HTML
- [ ] HTML e Javascript na mesma linha de código no arquivo JS
- [ ] uso de innerHTML
