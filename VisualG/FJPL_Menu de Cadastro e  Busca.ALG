Algoritmo "Cadastro e Busca"
// Disciplina   : [ Linguagem e Lógica de Programação]
// Professor   : Felipe
// Descrição   : cadastro dos usuários em uma estrutura homogênea 
//               realizar a busca de um usuário pelo seu nome. 
// Autor(a)    : Fábio José Pereira LIma
// Data atual  : 25/02/2021

Var
// Seção de Declarações das variáveis
linha,coluna, menu, l , c : inteiro
nome, limpa : caractere

// declaração da função busca
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
 // não encontrou  nome
 se ( l = li ) entao
    retorne -1
 fimse
fimfuncao

 // premissa : maximo 10 usuários pois o Visualg obriga um parametro
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
   escreval("Sistema de Usuário")
   escreval("-----------------------------")
   escreval("1 – Cadastrar novo usuário")
   escreval("2 – Listar usuários cadastrados")
   escreval("3 – Buscar usuário pelo nome")
   escreval("4 – Sair do Sistema")
   escreval("-----------------------------")
   escreva(" Qual sua opção ( 1 a 4 ): ")
   leia(menu)
   Limpatela

   // executa ação conforme a escolha
   // opção 4 sai do loop e encerra o programa
   Escolha menu
           caso 1
               // Cadastro usuário
               escreval("------------------------")
               escreval("Cadastro de novo usuário")
               escreval("-------------------------")
               enquanto limpa <> "*" faca
                  Para coluna de 0 ate 1 faca
                       Escolha coluna
                               caso 0
                                 escreva("Nome funcionário : ")
                                 leia(func[linha,coluna])
                              caso 1
                                 escreva("Idade : ")
                                 leia(func[linha,coluna])
                       Fimescolha
                  Fimpara
                  linha <- linha + 1 // atualiza para proximo usuário
                  escreval(" ")
                  escreval("Digite 'Enter' para continuar cadastro de usuário")
                  escreva("Digite '*' para encerrar cadastro : ")
                  leia(limpa)
                  escreval(" ")
              fimenquanto
              // Fim cadastro de usuários

           caso 2
               // Listar usuário
               escreval("----------------------------")
               escreval("Lista Usuários cadastrados")
               escreval("----------------------------")
               l <- 0
               c <- 0
               se  func[l,0] <> "" entao
                   Enquanto  func[l,0] <> "" faca
                      escreval("Usuário:", l+1," - ",func[l,0], " - ", func[l,1], " anos")
                       l <- l + 1
                   Fimenquanto
                 senao
                    escreva( " ")
                    escreval("Não há usuários cadastrados")
               fimse
               escreval("----------------------------")
               escreva(" ")
               escreva("<< Digite 'Enter' para retornar ao menu >> ")
               leia(limpa)
               // Fim lista de usuários
               
           caso 3
               // Busca de usuário
               escreval("------------------------")
               escreval("Busca de usuário")
               escreval("------------------------")
               escreva("Nome do usuário desejado: ")
               leia(nome)
               se (linha > 0 ) entao
                    l <- busca(nome,linha)
                    se (l <> -1)  entao
                       escreval(" ")
                       escreval("Usuário: ", l+1," - ",func[l,0], " - ", func[l,1], " anos")
                     senao
                       escreval( "  ")
                       escreval( nome, " : Usuário não encontrado")
                    fimse
                   escreval("--------------------------")
                 senao
                     escreval(" ")
                    escreval("<< Nenhum Usuário cadastrado >> ")
                    escreval("--------------------------")
               fimse
               escreval(" ")
               escreva("<< Digite 'Enter' para retornar ao menu >> ")
               leia(limpa)
              // Fim busca de usuários
              
     // fim de ações escolhidas pelo menu
   Fimescolha
   
// Fim loop de menu
fimenquanto

escreval("")
escreval("<< Termino Sistema de usuários>>")
escreval("")

Fimalgoritmo
