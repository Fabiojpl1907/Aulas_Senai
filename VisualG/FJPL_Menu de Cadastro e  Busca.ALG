Algoritmo "Cadastro e Busca"
// Disciplina   : [ Linguagem e L�gica de Programa��o]
// Professor   : Felipe
// Descri��o   : cadastro dos usu�rios em uma estrutura homog�nea�
//               realizar a busca de um usu�rio pelo seu nome.�
// Autor(a)    : F�bio Jos� Pereira LIma
// Data atual  : 25/02/2021

Var
// Se��o de Declara��es das vari�veis
linha,coluna, menu, l , c : inteiro
nome, limpa : caractere

// declara��o da fun��o busca
funcao busca(n : caracter; li: inteiro): inteiro
 Var
 l : inteiro
 inicio
 Para l de 0 ate li faca
      se (func[l,0] = n ) entao
         retorne l
         interrompa // sai do ciclo Para ... Fimpara
      fimse
 Fimpara
 // n�o encontrou  nome
 se ( l = li ) entao
    retorne -1
 fimse
fimfuncao

 // premissa : maximo 10 usu�rios pois o Visualg obriga um parametro
func : vetor[0..10,0..1] de caracter

Inicio
// inicializar variaveis
linha<- 0
coluna <- 0
menu <- 0

// Iniciar o loop de menu
enquanto menu <> 4 faca
   limpa <- ""
   limpatela
   escreval("-----------------------------")
   escreval("Sistema de Usu�rio")
   escreval("-----------------------------")
   escreval("1 � Cadastrar novo usu�rio")
   escreval("2 � Listar usu�rios cadastrados")
   escreval("3���Buscar usu�rio pelo nome")
   escreval("4���Sair do Sistema")
   escreval("-----------------------------")
   escreva(" Qual sua op��o ( 1 a 4 ): ")
   leia(menu)
   Limpatela

   // executa a��o conforme a escolha
   // op��o 4 sai do loop e encerra o programa
   Escolha menu
           caso 1
               // Cadastro usu�rio
               escreval("------------------------")
               escreval("Cadastro de novo usu�rio")
               escreval("-------------------------")
               enquanto limpa <> "*" faca
                  Para coluna de 0 ate 1 faca
                       Escolha coluna
                               caso 0
                                 escreva("Nome funcion�rio : ")
                                 leia(func[linha,coluna])
                              caso 1
                                 escreva("Idade : ")
                                 leia(func[linha,coluna])
                       Fimescolha
                  Fimpara
                  linha <- linha + 1 // atualiza para proximo usu�rio
                  escreval(" ")
                  escreval("Digite 'Enter' para continuar cadastro de usu�rio")
                  escreva("Digite '*' para encerrar cadastro : ")
                  leia(limpa)
                  escreval(" ")
              fimenquanto
              // Fim cadastro de usu�rios

           caso 2
               // Listar usu�rio
               escreval("----------------------------")
               escreval("Lista Usu�rios cadastrados")
               escreval("----------------------------")
               l <- 0
               c <- 0
               se  func[l,0] <> "" entao
                   Enquanto  func[l,0] <> "" faca
                      escreval("Usu�rio:", l+1," - ",func[l,0], " - ", func[l,1], " anos")
                       l <- l + 1
                   Fimenquanto
                 senao
                    escreva( " ")
                    escreval("N�o h� usu�rios cadastrados")
               fimse
               escreval("----------------------------")
               escreva(" ")
               escreva("<< Digite 'Enter' para retornar ao menu >> ")
               leia(limpa)
               // Fim lista de usu�rios
               
           caso 3
               // Busca de usu�rio
               escreval("------------------------")
               escreval("Busca de usu�rio")
               escreval("------------------------")
               escreva("Nome do usu�rio desejado: ")
               leia(nome)
               se (linha > 0 ) entao
                    l <- busca(nome,linha)
                    se (l <> -1)  entao
                       escreval(" ")
                       escreval("Usu�rio: ", l+1," - ",func[l,0], " - ", func[l,1], " anos")
                     senao
                       escreval( "  ")
                       escreval( nome, " : Usu�rio n�o encontrado")
                    fimse
                   escreval("--------------------------")
                 senao
                     escreval(" ")
                    escreval("<< Nenhum Usu�rio cadastrado >> ")
                    escreval("--------------------------")
               fimse
               escreval(" ")
               escreva("<< Digite 'Enter' para retornar ao menu >> ")
               leia(limpa)
              // Fim busca de usu�rios
              
     // fim de a��es escolhidas pelo menu
   Fimescolha
   
// Fim loop de menu
fimenquanto

escreval("")
escreval("<< Termino Sistema de usu�rios>>")
escreval("")

Fimalgoritmo
