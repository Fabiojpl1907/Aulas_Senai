Algoritmo "Cadastro Funcionários"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Felipe
// Descrição   : Efetua cadstro de Funcionários
// Autor(a)    : Fábio José Pereira LIma
// Data atual  : 20/02/2012

Var
// Seção de Declarações das variáveis 
linha,coluna : inteiro
func : vetor[0..4,0..4] de caracter

Inicio
// inicializar variaveis
linha<- 4
coluna <- 4

// Seção de Comandos, procedimento, funções, operadores, etc...
// Obter dados de funcionários

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


Fimalgoritmo