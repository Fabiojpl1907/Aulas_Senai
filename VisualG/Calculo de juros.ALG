Algoritmo "Calculo de Juros"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Felipe
// Descri��o   : Calcula Juros dado valor da presta��o e taxa de juros
// Autor(a)    : F�bio Jos� Pereira LIma
// Data atual  : 04/02/2021

Var
// Se��o de Declara��es das vari�veis 
taxaPeriodo, valorDevido : real
contador, periodo : inteiro



Inicio

// Se��o de Comandos, procedimento, fun��es, operadores, etc...

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