Algoritmo "remo��o de usu�rios "
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Robson
// Descri��o   : Incluir na estrutura de cadastro dos usu�rios�
//               a op��o de remo��o de usu�rio�
// Autor(a)    : F�bio Jos� Pereira Lima
// Data atual  : 27/02/2021

tipo
cadastro=registro
nome: caracter
idade: inteiro
fimregistro

Var

// Se��o de Declara��es das vari�veis
linha,coluna, menu, l , c, final : inteiro
nome, limpa : caractere
func : vetor[0..9] de cadastro

// Funcoes e procedimentos___________________________________________________

// declara��o da fun��o busca
funcao busca(n : caracter; li: inteiro): inteiro
    Var
    l : inteiro  // linha de resgisto
    Ok : inteiro
    inicio
    Ok <- 0
    Para l de 0 ate li faca
         se (func[l].nome = n ) entao
            retorne l
            ok <- 1
            interrompa // sai do ciclo Para ... Fimpara
         fimse
    Fimpara
    // n�o encontrou  nome
    se ( ok = 0  ) entao
       retorne -1
    fimse
fimfuncao

// declara��o de procedimento de remocao
procedimento remover(li, fim : inteiro)
inicio
   func[li].nome <- "" // limpa nome do usuario removido
   func[li].idade <- 0 // limpa idade do usuario removido
   // refaz vetor , rearranjando usuario a partir do registro removido


   //lista usuarios na nova ordem
   li <- 0
   escreval( " ")
   escreval("-----------------------------")
   escreval("Lista de usu�rios atualizada")
   escreval("-----------------------------")

   Enquanto  func[li].nome <> "" faca
      escreval("Usu�rio: #", li+1," - ",func[li].nome, " - ", func[li].idade, " anos")
      li <- li + 1
   Fimenquanto
   espera()
fimprocedimento

//procedimento de espera, permite dados serem apresentados para leitura
procedimento espera()
inicio
      escreval(" ")
      escreva("<< Digite 'Enter' para retornar ao menu >> ")
      leia(limpa)
fimprocedimento

//Termino funcoes e procedimentos ______________________________________

// Inicio do programa principal_________________________________________
Inicio
// inicializar variaveis
linha<- 0
coluna <- 0
menu <- 0
final <- 9 // ultimo indicador do vetor

// Iniciar o loop de menu
enquanto menu <> 5 faca
   limpa <- ""
   limpatela
   escreval("-----------------------------")
   escreval("Sistema de Usu�rio")
   escreval("-----------------------------")
   escreval("1 � Cadastrar novo usu�rio")
   escreval("2 � Listar usu�rios cadastrados")
   escreval("3���Buscar usu�rio pelo nome")
   escreval("4���Remoc�o de usu�rio")
   escreval("5���Sair do Sistema ")
   escreval("-----------------------------")
   escreva(" Qual sua op��o ( 1 a 5 ): ")
   leia(menu)
   Limpatela

   // executa a��o conforme a escolha
   // op��o 4 sai do loop e encerra o programa
   Escolha menu
           caso 1
               // Cadastro usu�rio
               escreval("------------------------")
               escreval("Cadastro de novo usu�rio")
               escreval("Limite ->",final+1, " usu�rios")
               escreval("-------------------------")
               enquanto limpa <> "*" faca
                  escreva("Nome funcion�rio : ")
                  leia(func[linha].nome)
                  escreva("Idade : ")
                  leia(func[linha].idade)
                  linha <- linha + 1 // atualiza para proximo usu�rio
                  // tratar limite de cadastros posiveis
                  se ( linha = final+1) entao
                     escreval(" ")
                     escreval("Limite de Usu�rios Alcan�ados")
                     espera()
                     interrompa
                  fimse
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
               se  (func[l].nome = "") entao
                       escreva( " ")
                       escreval("N�o h� usu�rios cadastrados")
                  senao
                       para l de 0 ate final faca
                        se func[l].nome <> ""  entao
                           escreval("Usu�rio: #", l+1," - ",func[l].nome, " - ", func[l].idade, " anos")
                        fimse
                       fimpara
               fimse
               escreval("----------------------------")
               espera()
               // Fim lista de usu�rios
               
           caso 3
               // Busca de usu�rio
               escreval("------------------------")
               escreval("Busca de usu�rio")
               escreval("------------------------")
               escreva("Nome do usu�rio desejado: ")
               leia(nome)
               se (linha > 0 ) entao
                    l <- busca(nome,final)
                    se (l <> -1)  entao
                       escreval(" ")
                       escreval("Usu�rio: #", l+1," - ",func[l].nome, " - ", func[l].idade, " anos")
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
               espera()
              // Fim busca de usu�rios
              
              caso 4
               // remoc�o de usu�rio
               escreval("------------------------")
               escreval("Remo��o de usu�rio")
               escreval("------------------------")
               escreva("Nome do usu�rio a ser removido: ")
               leia(nome)
               se ( Func[1].nome <> "" ) entao
                    l <- busca(nome,linha-1)
                    se (l <> -1)  entao
                       escreval(" ")
                       escreval("Usu�rio a ser excluido: #", l+1," - ",func[l].nome, " - ", func[l].idade, " anos")
                       // chamar procedimento de exclus�o
                        remover(l,final)
                      // fim procedimento de exclus�o
                     senao
                       escreval( "  ")
                       escreval( nome, " : Usu�rio n�o encontrado")
                    fimse
                   escreval("--------------------------")
                 senao
                     escreval(" ")
                    escreval("<< Usu�rio n�o cadastrado >> ")
                    escreval("--------------------------")
                    espera()
               fimse
               // Fim busca de usu�rios

     // fim de a��es escolhidas pelo menu
   Fimescolha
   
// Fim loop de menu
fimenquanto

escreval("")
escreval("<< Termino Sistema de usu�rios>>")
escreval("")
Fimalgoritmo
