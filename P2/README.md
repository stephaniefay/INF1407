# Segundo Trabalho de Programação para Web de 2016/2

Crie um site com uma calculadora. Uma boa sugestão é complementar o que foi feito em sala de aula.

* Use um bean para transportar o seu resultado com um construtor que receba os operandos, o operador e o resultado como parâmetros.
* Use pelo menos um servlet para fazer as operações com 2 operandos e outro para fazer as contas com 1 operando. Os endereços virtuais desses servlets devem ser <sua aplicacao>/servlet/binario/<nome do servlet> e <sua aplicacao>/servlet/unario/<nome do servlet> respectivamente.
* A calculadora não precisa funcionar em mais de uma janela. Se o usuário insistir em abrir mais de uma janela o efeito não precisa ser previsível.
* A calculadora de um usuário não deve interferir na calculadora de outro usuário (obviamente).
* Coloque a página da calculadora como sua página inicial e na raiz de sua aplicação.
* Não precisa se preocupar em tratar erros dos usuários nos SERVLETS.

## Erros Conhecidos (e ainda não tratados)
* Memória de cálculo esquece operações anteriores.
