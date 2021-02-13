# Programa para calcular investimento
# para um determinado valor inicial
#quanto tempo demora para atingir o valor desejado

#variaveis de controle
periodo = 12
continua = 1

# entrada dos valores de investimento
print("Digite valores do investimento")
valorInicial=float(input("Valor inicial de investimento : "))
valorDeposito=float(input("Valor deposito mensal : "))
taxaJuros=float(input("Taxa de juros mensal :"))

# cacula e apresenta valores 
while continua == 1:
    for n in range(periodo): 
     valorInicial = (valorInicial*taxaJuros) + valorDeposito + valorInicial
     print("Valor mes : ", n+1 , " ", round(valorInicial,2))
    
    # pergunta sobtre continuidade da simulação 
    # apos termino do laco 
    print("______________________________________")
    continua = int(input("Simular mais um ano ? Se sim digite 1 : "))
    if continua != 1 :
     print("\n Simulação encerrada")
    