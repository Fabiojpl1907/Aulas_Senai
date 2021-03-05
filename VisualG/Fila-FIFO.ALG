Algoritmo "Fila - FIFO"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Robson
// Descrição   : Manuseio Fila (modelo FIFO)
//               Inserção : sempre na ultima posição da fila
//               Remoção : sempre da primeira posição da fila
//               Nunca inserir ou remover do meio da fila
// Autor(a)    : Fábio José
// Data atual  : 06.03.2021


Var  // Seção de Declarações das variáveis
fila : vetor[0..2] de inteiro
iniFila, fimFila, tamanhoFila, menu, elemento : inteiro

// iniFila, fimFila são incializada com 0 ( zero)
// iniFila apontara para a posição do primeiro elemnto da fila
// fimFila    apontara para a posição livre ao final da fila

//Seção de declaração de procedimento

procedimento inserir()   // inserir um elento na fila , se houver espaço

//a. verificar se há espaço suficiente na fila. Ultimo elemento da fila ( fim )
//deve ser Fim = (tamanho max fila  -1)
var
cont :caracter

inicio

cont <- ""

enquanto cont = "" faca

   se fimFila < tamanhoFila  entao
        escreva("Digite um valor para inserir na fila : ")
        leia(elemento)
        fila[fimFila] <- elemento
        escreval(" ")
        escreval("Elemento <<", elemento, " >> inserido na posição <<", fimFila," >> da fila")
        escreval("-----------------------------")
        fimFila <- fimFila + 1
        // incluir + elementos ?
        escreval(" ")
        escreval("Digite 'Enter' para continuar inserir elementos")
        escreva("Digite qualquer letra para encerrar inserção ")
        leia(cont)
        escreval(" ")
    senao
      escreval(" ")
      escreval("<< Limite máximo de elementos da fila já alcançado >>")
       cont <- "fim"
      espera()
   fimse
fimenquanto
fimprocedimento

procedimento remover

var
cont :caracter

inicio

cont <- ""

enquanto cont = "" faca

   se inifila <> fimFila entao  // testa se fila tem algum elemento
        escreval(" ")
        escreval("Elemento <<", fila[iniFila], " >> removido na posição <<", iniFila," >> da fila")
        escreval("-----------------------------")
        fila[iniFila] <- 0
        iniFila <- iniFila + 1
        // remover  + elementos ?
        escreval(" ")
        escreval("Digite 'Enter' para continuar removendo elementos")
        escreva("Digite qualquer letra para encerrar remoção ")
        leia(cont)
        escreval(" ")
    senao
      escreval(" ")
      escreval("<< Não há elemento a ser removido >>")
       cont <- "fim"
      espera()
   fimse
fimenquanto


fimprocedimento

procedimento espera()  // aguarda ordem para continuar
var
limpa : caracter

inicio
  limpa <- ""
  escreval(" ")
  escreva("<< Digite 'Enter' para retornar ao menu >> ")
  leia(limpa)
fimprocedimento


Inicio  // Seção de Comandos, procedimento, funções, operadores, etc...

   menu <- 0
   tamanhoFila <- 3  // igual ao maximo de elemetos no vetor

   enquanto menu <> 5 faca
      limpatela  // iniciar menu
      escreval("-----------------------------")
      escreval("Fila de Atendimento")
      escreval("-----------------------------")
      escreval("1 – Inserir novo elemento")
      escreval("2 – Remover elemento da fila")
      escreval("3 – ")
      escreval("4 – ")
      escreval("5 – Sair do Sistema ")
      escreval("-----------------------------")
      escreva(" Qual sua opção ( 1 a 5 ): ")
      leia(menu)
      Limpatela   // terminar menu
      escolha menu
         caso 1
          inserir()

         caso 2
          remover()

      fimescolha
   
   fimenquanto

   // opção 5 foi escolhida e saimso do loop
   escreval("")
   escreval("<< Termino Sistema Fila de Atendimento>>")
   escreval("")




Fimalgoritmo