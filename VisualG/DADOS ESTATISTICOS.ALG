Algoritmo "Dados Est�t�sticos"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Robson
// Descri��o   : Apresenta dados est�tisticos de funcion�rios
// Autor(a)    : F�bio Jos� Pereira LIma
// Data atual  : 20/02/2012

Var
// Se��o de Declara��es das vari�veis 
linha,coluna,sm,sf, menor, maior : inteiro
salario :  real
func : vetor[0..4,0..4] de caracter
n_menor, n_maior : caracter

Inicio
// inicializar variaveis
linha<- 4
coluna <- 4

// Se��o de Comandos, procedimento, fun��es, operadores, etc...
// Obter dados de 5 funcion�rios

Para linha de 0 ate 4 faca
     escreval("-----------------------------")
     escreval("Cadastro de Funcion�rio - ", linha+1)
     escreval("-----------------------------")
     Para coluna de 0 ate 4 faca
          Escolha coluna
            caso 0
               escreva("Nome funcion�rio : ")
               leia(func[linha,coluna])
            caso 1
               escreva("Fun��o : ")
               leia(func[linha,coluna])
            caso 2
               escreva("Idade : ")
               leia(func[linha,coluna])
            caso 3
               escreva("Sexo : ")
               leia(func[linha,coluna])
            caso 4
               escreva("Sal�rio ( xxxxx.xx)  : ")
               leia(func[linha,coluna])
          fimescolha
     Fimpara
Fimpara
escreval("")
escreval("<< Termino entrada de dados >>")
escreval("")

// compilando est�tisticas
// idade
maior <- Caracpnum(func[0,2])
menor <- Caracpnum(func[0,2])
// contadores de sexo e totalizador de sal�rio
sm <- 0
sf <- 0
salario <- 0.00

Para linha de 0 ate 4 faca

     Para coluna de 0 ate 4 faca

      // compara��o idades de funcion�rio
      Escolha coluna
       caso 2
          se (Caracpnum(func[linha,coluna]) < menor) entao
                  menor <- Caracpnum(func[linha,coluna])
                  n_menor <- func[linha,0]
             senao
                  se (Caracpnum(func[linha,coluna]) > maior) entao
                    maior <- Caracpnum(func[linha,coluna])
                    n_maior <- func[linha,0]
                  fimse
          fimse
       caso 3
          se Maiusc(func[linha,coluna]) = "F"   entao
                  sf <- sf + 1
             senao
                  sm <- sm + 1
          fimse
      Fimescolha
     Fimpara
     salario <- salario + Caracpnum(func[linha,4])
Fimpara
// apresenta��o dados est�tisticos
escreval(".............................")
escreval("Dados Est�t�sticos da empresa")
escreval(".............................")

escreval("Menor idade : ",n_menor, " - ", menor)
escreval("Maior idade : ", n_maior, " - ", maior)
escreval("Funcion�rias do Sexo feminino    : ", sf)
escreval("Funcion�rios deo sexo masculino  : ", sm)
escreval("Total de sal�rios da organiza��o : ", salario:7:2)


Fimalgoritmo