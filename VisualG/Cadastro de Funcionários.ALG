Algoritmo "Cadastro Funcion�rios"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Felipe
// Descri��o   : Efetua cadstro de Funcion�rios
// Autor(a)    : F�bio Jos� Pereira LIma
// Data atual  : 20/02/2012

Var
// Se��o de Declara��es das vari�veis 
linha,coluna : inteiro
func : vetor[0..4,0..4] de caracter

Inicio
// inicializar variaveis
linha<- 4
coluna <- 4

// Se��o de Comandos, procedimento, fun��es, operadores, etc...
// Obter dados de funcion�rios

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


Fimalgoritmo