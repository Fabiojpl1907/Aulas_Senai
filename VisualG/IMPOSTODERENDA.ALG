Algoritmo "impostoderenda"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Robson
// Descri��o   : calculo do IR de funcion�rio
// Autor(a)    : F�bio Jos� Perira LIma
// Data atual  : 19/01/2021
Var
// Se��o de Declara��es das vari�veis 
nome, dataDeNascimento, telefone : caractere
cpf, rg, endereco, email, sexo : caracter
idade: inteiro
salario, impostoRenda: real
empregadoAtivo: logico


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
// Coletando dados do colaborador
escreva("Nome do Colaborador : ")
leia(nome)
escreva("Data de Nascimento (dd/mm/aaaa): ")
leia(dataDeNascimento)
escreva("Idade [anos completo]: ")
leia(idade)
escreva("Telefone com dd ( (dd) xxxxx-xxxx): ")
leia(telefone)
escreva("CPF (xxx.xxx.xxx-xx) : ")
leia(cpf)
escreva("RG : ")
leia(rg)
escreva("Endereco ( Rua , numero, bairro, cep, estado, pais) : ")
leia(endereco)
escreva("E-mail : ")
leia(email)
escreva("Sexo : ")
leia(Sexo)
escreva("Sal�rio (2 casas decimais):")
leia(salario)
escreva("Funcion�rio ativo ? (S/N) : ")
leia(empregadoAtivo)
// Calculando e apresentando al�quota do IR
impostoRenda <- salario*0.15
escreva("Valor de IR : ", impostoRenda)
Fimalgoritmo