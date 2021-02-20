Algoritmo "Dados Estátísticos"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Robson
// Descrição   : Apresenta dados estátisticos de funcionários
// Autor(a)    : Fábio José Pereira LIma
// Data atual  : 20/02/2012

Var
// Seção de Declarações das variáveis 
linha,coluna,sm,sf, menor, maior : inteiro
salario :  real
func : vetor[0..4,0..4] de caracter
n_menor, n_maior : caracter

Inicio
// inicializar variaveis
linha<- 4
coluna <- 4

// Seção de Comandos, procedimento, funções, operadores, etc...
// Obter dados de 5 funcionários

Para linha de 0 ate 4 faca
     escreval("-----------------------------")
     escreval("Cadastro de Funcionário - ", linha+1)
     escreval("-----------------------------")
     Para coluna de 0 ate 4 faca
          Escolha coluna
            caso 0
               escreva("Nome funcionário : ")
               leia(func[linha,coluna])
            caso 1
               escreva("Função : ")
               leia(func[linha,coluna])
            caso 2
               escreva("Idade : ")
               leia(func[linha,coluna])
            caso 3
               escreva("Sexo : ")
               leia(func[linha,coluna])
            caso 4
               escreva("Salário ( xxxxx.xx)  : ")
               leia(func[linha,coluna])
          fimescolha
     Fimpara
Fimpara
escreval("")
escreval("<< Termino entrada de dados >>")
escreval("")

// compilando estátisticas
// idade
maior <- Caracpnum(func[0,2])
menor <- Caracpnum(func[0,2])
// contadores de sexo e totalizador de salário
sm <- 0
sf <- 0
salario <- 0.00

Para linha de 0 ate 4 faca

     Para coluna de 0 ate 4 faca

      // comparação idades de funcionário
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
// apresentação dados estátisticos
escreval(".............................")
escreval("Dados Estátísticos da empresa")
escreval(".............................")

escreval("Menor idade : ",n_menor, " - ", menor)
escreval("Maior idade : ", n_maior, " - ", maior)
escreval("Funcionárias do Sexo feminino    : ", sf)
escreval("Funcionários deo sexo masculino  : ", sm)
escreval("Total de salários da organização : ", salario:7:2)


Fimalgoritmo