Algoritmo "impostoderenda"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Robson
// Descrição   : calculo do IR de funcionário
// Autor(a)    : Fábio José Perira LIma
// Data atual  : 19/01/2021
Var
// Seção de Declarações das variáveis 
nome, dataDeNascimento, telefone : caractere
cpf, rg, endereco, email, sexo : caracter
idade: inteiro
salario, impostoRenda: real
empregadoAtivo: logico


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
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
escreva("Salário (2 casas decimais):")
leia(salario)
escreva("Funcionário ativo ? (S/N) : ")
leia(empregadoAtivo)
// Calculando e apresentando alíquota do IR
impostoRenda <- salario*0.15
escreva("Valor de IR : ", impostoRenda)
Fimalgoritmo