Algoritmo "Fila - FIFO"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Robson
// Descri��o   : Manuseio Fila (modelo FIFO)
//               Inser��o : sempre na ultima posi��o da fila
//               Remo��o : sempre da primeira posi��o da fila
//               Nunca inserir ou remover do meio da fila
// Autor(a)    : F�bio Jos�
// Data atual  : 06.03.2021


Var  // Se��o de Declara��es das vari�veis
fila : vetor[0..2] de inteiro
iniFila, fimFila, tamanhoFila, menu, elemento : inteiro

// iniFila, fimFila s�o incializada com 0 ( zero)
// iniFila apontara para a posi��o do primeiro elemnto da fila
// fimFila    apontara para a posi��o livre ao final da fila

//Se��o de declara��o de procedimento

procedimento inserir()   // inserir um elento na fila , se houver espa�o

//a. verificar se h� espa�o suficiente na fila. Ultimo elemento da fila ( fim )
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
        escreval("Elemento <<", elemento, " >> inserido na posi��o <<", fimFila," >> da fila")
        escreval("-----------------------------")
        fimFila <- fimFila + 1
        // incluir + elementos ?
        escreval(" ")
        escreval("Digite 'Enter' para continuar inserir elementos")
        escreva("Digite qualquer letra para encerrar inser��o ")
        leia(cont)
        escreval(" ")
    senao
      escreval(" ")
      escreval("<< Limite m�ximo de elementos da fila j� alcan�ado >>")
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
        escreval("Elemento <<", fila[iniFila], " >> removido na posi��o <<", iniFila," >> da fila")
        escreval("-----------------------------")
        fila[iniFila] <- 0
        iniFila <- iniFila + 1
        // remover  + elementos ?
        escreval(" ")
        escreval("Digite 'Enter' para continuar removendo elementos")
        escreva("Digite qualquer letra para encerrar remo��o ")
        leia(cont)
        escreval(" ")
    senao
      escreval(" ")
      escreval("<< N�o h� elemento a ser removido >>")
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


Inicio  // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   menu <- 0
   tamanhoFila <- 3  // igual ao maximo de elemetos no vetor

   enquanto menu <> 5 faca
      limpatela  // iniciar menu
      escreval("-----------------------------")
      escreval("Fila de Atendimento")
      escreval("-----------------------------")
      escreval("1 � Inserir novo elemento")
      escreval("2 � Remover elemento da fila")
      escreval("3���")
      escreval("4���")
      escreval("5���Sair do Sistema ")
      escreval("-----------------------------")
      escreva(" Qual sua op��o ( 1 a 5 ): ")
      leia(menu)
      Limpatela   // terminar menu
      escolha menu
         caso 1
          inserir()

         caso 2
          remover()

      fimescolha
   
   fimenquanto

   // op��o 5 foi escolhida e saimso do loop
   escreval("")
   escreval("<< Termino Sistema Fila de Atendimento>>")
   escreval("")




Fimalgoritmo