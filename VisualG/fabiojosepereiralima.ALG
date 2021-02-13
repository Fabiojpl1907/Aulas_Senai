Algoritmo "aprovação de compra"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Felipe
// Descrição   : Verifica limite de compra, com base no salario do cliente
// Autor(a)    : Fábio José Pereira LIma
// Data atual  : 22/01/2021
Var
// Seção de Declarações das variáveis 
faixa: caractere
salario, valorAprovado: real

Inicio

// Seção de Comandos, procedimento, funções, operadores, etc...

//iniciando variaveis de faixa e valor aprovado
Faixa <- "Salario fora de faixa de permissão"
valorAprovado <- 0

// Coletando dados da renda do cliente e calculando valor aprovado
escreva("Valor do salário do cliente: ")
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

// apresentação da faixa do cliente
escreval(" ")
escreval("Faixa do cliente : ", faixa)
// valor aprovado . Formatado com 2 casas decimais e até 4 digitos a esquerda
escreval("Valor aprovado : R$ ", valorAprovado:4:2)

Fimalgoritmo