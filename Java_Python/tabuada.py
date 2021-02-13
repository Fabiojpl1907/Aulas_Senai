Valor1=int(input("Digite a tabuada que voce deseja : "))
contador = 1
print("\nTabuada do : ",Valor1,"\n" )
while contador <= 10:
  print(Valor1," x ",contador," = ", Valor1*contador)
  contador = contador +1

#Validar tabuada
# Tabuada validada

# Solicitar qual tabuada é desejada

controle = 0
while controle == 0:
  Valor1=int(input("\n Digite a tabuada que voce deseja. (0 para encerrar) : "))

  # so executa se a tabuada esta entre 1 e 10
  if Valor1 > 10:
      print("\n Tabuada não valida, digite de novo")
  
  elif Valor1 ==0:
       # se a tabuada é 0 , encerra o programa
       contador = 11
       controle = 1
       print("\nTabuada Encerrada")
  else:
    # se tabuada é valida encerra solicitação
    # e apresenta a tabuada
    controle = 1
    contador = 1
    print("\nTabuada do : ",Valor1,"\n" )

# mostra a tabuada
while contador <= 10:
  print(Valor1," x ",contador," = ", Valor1*contador)
  contador = contador +1
