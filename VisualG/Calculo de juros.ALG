Algoritmo "Calculo de Juros"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Felipe
// Descrição   : Calcula Juros dado valor da prestação e taxa de juros
// Autor(a)    : Fábio José Pereira LIma
// Data atual  : 04/02/2021

Var
// Seção de Declarações das variáveis 
taxaPeriodo, valorDevido : real
contador, periodo : inteiro



Inicio

// Seção de Comandos, procedimento, funções, operadores, etc...

// Iniciando o contador
contador <- 1

// Coletando valores a pagar e taxa de juros  e periodo
escreval(" ")
escreva("Taxa de Juros por periodo : ")
leia(taxaPeriodo)
escreva("Valor da pagar : ")
leia(valorDevido)
escreva("Periodo : ")
leia(periodo)
escreval(" ")
escreval("---------------------------")

// calcular valor para cada mes detro do perido indicado
Para contador de 1 ate periodo faca
     valorDevido <- valorDevido + (valorDevido * taxaPeriodo)
     escreval(contador," : ", valorDevido:5:2 )
Fimpara

escreval("---------------------------")
escreval(" ")
escreval("Valor a pagar com juros : ", valorDevido:5:2 )

Fimalgoritmo