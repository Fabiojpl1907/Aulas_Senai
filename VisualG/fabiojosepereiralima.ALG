Algoritmo "aprova��o de compra"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Felipe
// Descri��o   : Verifica limite de compra, com base no salario do cliente
// Autor(a)    : F�bio Jos� Pereira LIma
// Data atual  : 22/01/2021
Var
// Se��o de Declara��es das vari�veis 
faixa: caractere
salario, valorAprovado: real

Inicio

// Se��o de Comandos, procedimento, fun��es, operadores, etc...

//iniciando variaveis de faixa e valor aprovado
Faixa <- "Salario fora de faixa de permiss�o"
valorAprovado <- 0

// Coletando dados da renda do cliente e calculando valor aprovado
escreva("Valor do sal�rio do cliente: ")
leia(salario)
se (salario >= 1000) e (salario <= 2999.99) entao
    faixa <- "1"
    valorAprovado <- salario * 0.3
  senao
       se (salario >= 3000) e (salario <= 4999.99) entao
           faixa <- "2"
           valorAprovado <- salario * 0.35
       fimse
fimse

// apresenta��o da faixa do cliente
escreval(" ")
escreval("Faixa do cliente : ", faixa)
// valor aprovado . Formatado com 2 casas decimais e at� 4 digitos a esquerda
escreval("Valor aprovado : R$ ", valorAprovado:4:2)

Fimalgoritmo