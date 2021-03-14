Algoritmo "Pilha - LIFO"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Pilha
// Descrição   : Manuseio Pilha (modelo LIFO)
// Autor(a)    : Fábio José
// Data atual  : 06.03.2021

Var
// Seção de Declarações das variáveis 
tamanho, valor, menu, max, retirado: inteiro
pilha: vetor[0..19] de inteiro

// inicio secao procedimentos e funçoes

// espera
procedimento espera()  // aguarda ordem para continuar
var
limpa : caracter

inicio
  limpa <- ""
  escreval(" ")
  escreva("<< Digite 'Enter' para retornar ao menu >> ")
  leia(limpa)
fimprocedimento

// inserir
procedimento inserir()

var
cont: caracter

inicio

cont <- ""

enquanto cont = "" faca

   se tamanho = max entao
			escreva(" ")
			escreval(" << Pilha esta cheia >>")
			escreval(" ")
			cont <- "s"
			espera()
	 senao
		 	escreval("------------------------------------------------")
		 	escreva("Digite o valor que deseja inserir na pilha : ")
		 	leia(valor)
			pilha[tamanho] <- valor
	 	   tamanho <- tamanho + 1
      	 // incluir + elementos ?
          se tamanho < max entao
             	escreval(" ")
        			escreval("Digite 'Enter' para continuar inserir elementos")
        			escreva("Digite qualquer letra para encerrar inserção ")
        			leia(cont)
        			escreva(" ")
		   fimse
   fimse
fimenquanto

fimprocedimento

//remover
funcao remover: inteiro

inicio

  se tamanho > 0 entao
	  tamanho <- tamanho -1 // indica agora qual é o ultimo elemento inserido
	  retirado <- pilha[tamanho]
     pilha[tamanho] <- 0  // limpa elemento removido
	  retorne retirado // vai retorna o elemento inserido
	senao
     escreval("Pilha Vazia")
     espera()
     retorne -1
  fimse
  
fimfuncao

procedimento listar
var
i : inteiro

inicio

   se tamanho <> 0 entao  // testa se fila tem algum elemento
       escreval("Pilha atual")
       escreval("----------")
       i <- tamanho-1
       enquanto i >= 0 faca

          se i = (tamanho-1) entao
              escreval( "Topo -> ", pilha[i])
           senao
              se i <> 0 entao
                 escreval( "     -> ", pilha[i])
               senao
                 escreval( "Base -> ", pilha[i])
              fimse
           fimse
           i <- i - 1
        fimenquanto
       espera()
     senao
      escreval(" ")
      escreval("<< Pilha Vazia sem elemento a ser listado >>")
      espera()
   fimse

fimprocedimento

procedimento limpar
var
i : inteiro

inicio

   se tamanho <> 0 entao  // testa se fila tem algum elemento
       i <- tamanho-1
       enquanto i >= 0 faca
          pilha[i] <- 0
          i <- i - 1
        fimenquanto
        tamanho <- 0
        escreval("Pilha Limpa")
        espera()
     senao
      escreval(" ")
      escreval("<< Pilha Vazia sem elemento a ser limpo >>")
      espera()
   fimse

fimprocedimento

procedimento vazia

inicio

se tamanho <> 0 entao  // testa se fila tem algum elemento
      escreval("Falso - Pilha contem elementos")
      espera()
   senao
    escreval(" ")
    escreval("<< Verdadeiro - Pilha Vazia  >>")
    espera()
fimse

fimprocedimento


// Fim seção procedimentos e funções

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

tamanho <- 0 // tamanho atual da pilha
max <- 20 // tamanho maximo da pilha
menu <- 0
enquanto menu <> 6 faca
   limpatela
	escreval("-----------------------------")
  	escreval("Manipular Pilha")
  	escreval("-----------------------------")
  	escreval("1: Empilhar - Adicionar elemento no topo de pilha")
  	escreval("2: Desempilhar - Remover e retorna um elemento do topo da pilha")
  	escreval("3: Limpar - Remover todos os elementos da pilha")
  	escreval("4: Listar - lista todos os elementos armazenados na pilha")
  	escreval("5: Pilha Vazia ? ")
  	escreval("6: Sair do Sistema ")
  	escreval("-----------------------------")
  	escreva("Qual sua opção ( 1 a 6 ): ")
  	leia(menu)
  	limpatela

   escolha menu
	  caso 1
			// valor sempre inserido no topo da pilha
			inserir()
	  caso 2
			// valor sempre inserido no topo da pilha
         retirado <- remover()
         escreval("Foi retirado o elemento : ", retirado)
         espera()
     caso 3
          limpar()

     caso 4
			// valor sempre inserido no topo da pilha
			listar()
     caso 5
			// valor sempre inserido no topo da pilha
			vazia()
     caso 6
     // escolha encerra o programa
     escreval(" ")
     escreval(" Programa encerrado")
     escreval(" ")

  fimescolha
fimenquanto

Fimalgoritmo