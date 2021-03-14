Algoritmo "Ordenacao Bolha"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Felipe
// Descrição   : Ordenação de fila pelo método bubbleSort
// Autor(a)    : Fábio José
// Data atual  : 13.03.2021

// definir registro
tipo
cadastro=registro
user: caracter
pwd: inteiro
fimregistro


Var  // declaração de variáveis
fila : vetor[0..4] de cadastro
iniFila, fimFila, tamanhoFila, menu, existe, senha, retorno : inteiro
nome : caracter



// inicio Funcoes / procedimentos
funcao busca(s : inteiro ): inteiro
Var
l : inteiro


inicio
 Para l de 0 ate tamanhoFila-1 faca  // varre o vetor  inteiro
      se fila[l].pwd = s entao
         retorne l
         interrompa // sai do ciclo Para ... Fimpara
      fimse
Fimpara
// nao encontrou
 se ( l = tamanhoFila-1 ) entao     // chegou no fim do vetor
    retorne -1
 fimse
fimfuncao

procedimento ordena()
var
// variaveis para o metodo de ordenação
i,j,aux_i: inteiro
aux_c: caracter

inicio
para i de 4 ate 1 passo -1 faca

     j <- 0
     enquanto j < i faca

          se fila[j].pwd > fila[j+1].pwd entao
             aux_i <- fila[j].pwd
             aux_c <- fila[j].user

             fila[j].pwd <- fila[j+1].pwd
             fila[j].user <- fila[j+1].user

             fila[j+1].pwd <- aux_i
             fila[j+1].user <- aux_c

          fimse
          j <- j+1

     fimenquanto
fimpara
escreval("Cadastro ordenado")
espera()
fimprocedimento

//funcao ordem( vet:vetor[0..4] de cadastro): vetor[0..4] de cadastro

// var

// inicio

// fimfuncao

procedimento inserir()   // inserir um elento na fila , se houver espaÃo

//a. verificar se hÂ· espaÃo suficiente na fila. Ultimo elemento da fila ( fim )
//deve ser Fim = (tamanho max fila  -1)
var
cont :caracter

inicio

cont <- ""

enquanto cont = "" faca

   se fimFila < tamanhoFila  entao
        escreval("Digite usuário e senha")
        escreval("----------------------------------------")
        escreval(" ")
        escreva("Usuário : ")
        leia(nome)
        escreva("Senha [0001 até 1024] : ")
        leia(senha)

        // verifica se senha esta livre
        existe <- busca(senha)
        se existe = -1 entao  // senha nova
           fila[fimFila].user <- nome
           fila[fimFila].pwd <- senha
           fimFila <- fimFila + 1
           escreval(" ")
           escreval("Senha para usuario <<", fila[fimFila-1].user, ">> inserida")
           escreval("-------------------------------------------------------")
          senao
           escreval(" ")
           escreval("Senha ja utilizada cadastre outra")
        fimse

        // incluir + elementos ?
        escreval(" ")
        escreval("Digite 'Enter' para continuar cadastrar senha")
        escreva("Digite qualquer letra para encerrar ")
        leia(cont)
        escreval(" ")
    senao
      escreval(" ")
      escreval("<< Limite de senhas atingido >>")
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
       escreval("Cadastro atual")
       escreval("----------")
       i <- 0
       enquanto i < fimFila faca
           escreval( "Usuário : ",fila[i].user, "   Senha : ",fila[i].pwd)
           i <- i + 1
       fimenquanto
       espera()
     senao
      escreval(" ")
      escreval("<< Cadastro vazio >>")
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
        escreval("Usuário << ", fila[iniFila].user, " >> removido ")
        escreval("-----------------------------")
        // reordenar fila
        i <- 0
       enquanto i < fimFila-1 faca
           fila[i].user <-  fila[i+1].user
           fila[i].pwd <-  fila[i+1].pwd
           i <- i + 1
       fimenquanto
       se fimFila < tamanhoFila entao
         fila[i+1].user <-  ""
         fila[i+1].pwd <-  0
       fimse
       fimFila <- fimFila -1 // ajustando tamanho da fila atual

        // remover  + elementos ?
        escreval(" ")
        escreval("Digite 'Enter' para continuar removendo cadastro")
        escreva("Digite qualquer letra para encerrar ")
        leia(cont)
        escreval(" ")
   senao
      escreval(" ")
      escreval("<< Não há cadastro a ser removido >>")
       cont <- "fim"
      espera()
   fimse

 fimenquanto
fimprocedimento

procedimento vazia()

inicio

   se inifila <> fimFila entao  // testa se fila tem algum elemento
        escreval(" ")
        escreval(">> Cadastro não vazio - contem usuários <<")
        escreval("-----------------------------")
        espera()
    senao
      escreval(" ")
      escreval("<< Cadastro VAZIO >>")
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
      fila[i].user <-  ""
      fila[i].pwd <-  0
      i <- i + 1
   fimenquanto
   fila[i+1].user <-  ""
   fila[i+1].pwd <-  0
   fimFila <- fimFila -1 // ajustando tamanho da fila atual
   escreval(" ")
   escreval("<< Cadastro limpo >>")
   espera()

senao
  escreval(" ")
  escreval("<< Cadastro vazio - sem usuário a ser removido >>")
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
// fim funcoes e procedimentos

// inicio program principal

Inicio

   menu <- 0
   existe <- 0
   tamanhoFila <- 5  // igual ao maximo de elemetos no vetor

   enquanto menu <> 7 faca
      limpatela  // iniciar menu
      escreval("-----------------------------")
      escreval("Cadastro Senha")
      escreval("-----------------------------")
      escreval("1 - Novo Usuário x Senha")
      escreval("2 - Listar Usuario x Senha")
      escreval("3 - Remover Usuário e Senha")
      escreval("4 - Cadastro  vazio ? ")
      escreval("5 - Limpar cadastro senha")
      escreval("6 - Ordenar cadastro senha [ menor -> maior ]")
      escreval("7 - Sair do Sistema ")
      escreval("-----------------------------")
      escreva(" Qual sua opção ( 1 a 7 ): ")
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
         caso 6
          ordena()
      fimescolha

   fimenquanto

   // opção saida foi escolhida
   escreval("")
   escreval("<< Termino Cadstro de senha>>")
   escreval("")

Fimalgoritmo