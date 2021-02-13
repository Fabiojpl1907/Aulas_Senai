#Solicitar 10 valores inteiros e apresentar o maior

valor = int(input("Digite um numero inteiro : "))
maior = valor 
for n in range(9): 
 valor = int(input("Digite um numero inteiro : "))
 if valor > maior : 
   maior = valor

print("\n O maior valor digitado foi : ", maior)