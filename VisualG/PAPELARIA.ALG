Algoritmo "Papelaria"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Felipe
// Descri��o   : Registra material a comprar e indica total a pagar
// Autor(a)    : F�bio Jos� Pereira LIma
// Data atual  : 26/01/2021

Var
// Se��o de Declara��es das vari�veis 

produto, entrada: caractere
precoUnitario, valorTotal: real
quantidade : inteiro
continua : logico


Inicio

// Se��o de Comandos, procedimento, fun��es, operadores, etc...

//iniciando controle de loop  Valor total
valorTotal <- 0
entrada <- "s"
continua <- VERDADEIRO

// Coletando dados dos produtos

enquanto continua faca
    escreval(" ")
    escreva("Produto : ")
    leia(produto)
    escreva("Pre�o Unit�rio : R$ ")
    leia(precoUnitario)
    escreva("Quantidade : ")
    leia(quantidade)
    
    // armazenando total valor total
    valorTotal <- valorTotal + (precoUnitario * quantidade)

    // confirma se deseja entrar com mais itens
    escreval("__________________________________________")
    escreva("Continuar entrada de produto ? (S/N) ")
    leia(Entrada)

      se Maiusc(entrada)= "N"  entao
         continua <- FALSO   // encerra loop de entrada de produtos
       fimse

    escreval("__________________________________________")


Fimenquanto

// apresenta valor total a gastar com produtod

escreval(" ")
escreval("Total pedido : R$ ", valorTotal:5:2)


Fimalgoritmo