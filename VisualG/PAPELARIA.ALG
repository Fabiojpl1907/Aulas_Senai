Algoritmo "Papelaria"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Felipe
// Descrição   : Registra material a comprar e indica total a pagar
// Autor(a)    : Fábio José Pereira LIma
// Data atual  : 26/01/2021

Var
// Seção de Declarações das variáveis 

produto, entrada: caractere
precoUnitario, valorTotal: real
quantidade : inteiro
continua : logico


Inicio

// Seção de Comandos, procedimento, funções, operadores, etc...

//iniciando controle de loop  Valor total
valorTotal <- 0
entrada <- "s"
continua <- VERDADEIRO

// Coletando dados dos produtos

enquanto continua faca
    escreval(" ")
    escreva("Produto : ")
    leia(produto)
    escreva("Preço Unitário : R$ ")
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