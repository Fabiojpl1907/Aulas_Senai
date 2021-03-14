Algoritmo "Fila - FIFO"
// Disciplina   : [Linguagem e LÛgica de ProgramaÁ„o]
// Professor   : Robson
// DescriÁ„o   : Manuseio Fila (modelo FIFO)
//               InserÁ„o : sempre na ultima posiÁ„o da fila
//               RemoÁ„o : sempre da primeira posiÁ„o da fila
//               Nunca inserir ou remover do meio da fila
// Autor(a)    : F·bio JosÈ
// Data atual  : 06.03.2021

// definir registro
tipo
cadastro=registro
nome: caracter
idade: inteiro
salario: real
fimregistro

Var  // SeÁ„o de DeclaraÁıes das vari·veis
fila : vetor[0..2] de cadastro
iniFila, fimFila, tamanhoFila, menu: inteiro

// iniFila, fimFila s„o incializada com 0 ( zero)
// iniFila apontara para a posiÁ„o do primeiro elemnto da fila
// fimFila    apontara para a posiÁ„o livre ao final da fila

//SeÁ„o de declaraÁ„o de procedimento

procedimento inserir()   // inserir um elento na fila , se houver espaÁo

//a. verificar se h· espaÁo suficiente na fila. Ultimo elemento da fila ( fim )
//deve ser Fim = (tamanho max fila  -1)
var
cont :caracter

inicio

cont <- ""

enquanto cont = "" faca

   se fimFila < tamanhoFila  entao
        escreval("Digite um Registro para inserir na fila ")
        escreval("----------------------------------------")
        escreval(" ")
        escreva("Nome funcion·rio : ")
        leia(fila[fimFila].nome)
        escreva("Idade : ")
        leia(fila[fimFila].idade)
        escreva("Salario : ")
        leia(fila[fimFila].salario)
        escreval(" ")
        escreval("Funcionario <<", fila[fimFila].nome, ">> inserido na posiÁ„o <<", fimFila," >> da fila")
        escreval("-------------------------------------------------------")
        fimFila <- fimFila + 1
        // incluir + elementos ?
        escreval(" ")
        escreval("Digite 'Enter' para continuar inserir elementos")
        escreva("Digite qualquer letra para encerrar inserÁ„o ")
        leia(cont)
        escreval(" ")
    senao
      escreval(" ")
      escreval("<< Limite m·ximo de elementos da fila j· alcanÁado >>")
       cont <- "fim"
      espera()
   fimse
fimenquanto
fimprocedimento

procedimento listar
var
i : inteiro

inicio

   se inifila <> fimFila entao  // testa se fila tem algum elemento
       escreval("Fila atual")
       escreval("----------")
       i <- 0
       enquanto i < fimFila faca
           escreval( "Registro : ",i, " -> ", fila[i].nome, " - ",fila[i].idade, " - ", fila[i].salario  )
           i <- i + 1
       fimenquanto
       espera()
     senao
      escreval(" ")
      escreval("<< N„o h· elemento a ser listado >>")
      espera()
   fimse

fimprocedimento

procedimento remover

var
cont :caracter
i : inteiro

inicio

cont <- ""

enquanto cont = "" faca

   se inifila <> fimFila entao  // testa se fila tem algum elemento
        escreval(" ")
        escreval("Funcion·rio <<", fila[iniFila].nome, ">> removido na posiÁ„o <<", iniFila," >> da fila")
        escreval("-----------------------------")
        // reordenar fila
        i <- 0
       enquanto i < fimFila-1 faca
           fila[i].nome <-  fila[i+1].nome
           fila[i].idade <-  fila[i+1].idade
           fila[i].salario <-  fila[i+1].idade
           i <- i + 1
       fimenquanto
       se fimFila < tamanhoFila entao
         fila[i+1].nome <-  ""
         fila[i+1].idade <-  0
         fila[i+1].salario <-  0
       fimse
       fimFila <- fimFila -1 // ajustando tamanho da fila atual

        // remover  + elementos ?
        escreval(" ")
        escreval("Digite 'Enter' para continuar removendo elementos")
        escreva("Digite qualquer letra para encerrar remoÁ„o ")
        leia(cont)
        escreval(" ")
   senao
      escreval(" ")
      escreval("<< N„o h· elemento a ser removido >>")
       cont <- "fim"
      espera()
   fimse

 fimenquanto
fimprocedimento

procedimento vazia()

inicio

   se inifila <> fimFila entao  // testa se fila tem algum elemento
        escreval(" ")
        escreval(">> Fila N√O Vazia- contem elementos <<")
        escreval("-----------------------------")
        espera()
    senao
      escreval(" ")
      escreval("<< Fila VAZIA >>")
      espera()
   fimse
fimprocedimento

procedimento limpar()
 Var
 i : inteiro
inicio
 // limpar fila
i <- 0
se inifila <> fimFila entao
   enquanto i < fimFila-1 faca
      fila[i].nome <-  ""
      fila[i].idade <-  0
      fila[i].salario <-  0
      i <- i + 1
   fimenquanto
   fila[i+1].nome <-  ""
   fila[i+1].idade <-  0
   fila[i+1].salario <-  0
   fimFila <- fimFila -1 // ajustando tamanho da fila atual
   escreval(" ")
   escreval("<< Fila foi limpa >>")
   espera()

sen„o
  escreval(" ")
 escreval("<< N„o h· elemento a ser removido >>")
 espera()
fimse
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


Inicio  // SeÁ„o de Comandos, procedimento, funÁıes, operadores, etc...

   menu <- 0
   tamanhoFila <- 3  // igual ao maximo de elemetos no vetor

   enquanto menu <> 6 faca
      limpatela  // iniciar menu
      escreval("-----------------------------")
      escreval("Fila de Atendimento")
      escreval("-----------------------------")
      escreval("1 ñ Inserir novo elemento")
      escreval("2 ñ Listar fila")
      escreval("3†ñ†Remover elemento")
      escreval("4†ñ†Fila vazia ? ")
      escreval("5†ñ†Limpar Fila")
      escreval("6†ñ†Sair do Sistema ")
      escreval("-----------------------------")
      escreva(" Qual sua opÁ„o ( 1 a 6 ): ")
      leia(menu)
      Limpatela   // terminar menu
      escolha menu
         caso 1
          inserir()
         caso 2
          listar()
         caso 3
          remover()
         caso 4
          vazia()
          caso 5
         limpar()

      fimescolha

   fimenquanto

   // opÁ„o 5 foi escolhida e saimso do loop
   escreval("")
   escreval("<< Termino Sistema Fila de Atendimento>>")
   escreval("")




Fimalgoritmo: 