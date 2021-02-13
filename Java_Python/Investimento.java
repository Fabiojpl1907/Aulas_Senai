import java.util.Scanner;

public class Investimento {
// Programa para calcular investimento
// para um determinado valor inicial
// quanto tempo demora para atingir o valor desejado

    public static void main(String[] args) {
        // variaveis de controle
        int periodo = 12, continua = 1;

        // Variaveis de investimento 
        float valorDesejado, valorInicial, valorDeposito, taxaJuros;

        // ler do teclado
        Scanner ler = new Scanner(System.in);
        
        // entrar com valores
        System.out.print("\n Valor Final desejado : ");
        valorDesejado = ler.nextFloat();
        System.out.print("\n Valor inicial de investimento : ");
        valorInicial = ler.nextFloat();
        System.out.print("\n Valor de depósito mensal : ");
        valorDeposito = ler.nextFloat();
        System.out.print("\n Taxa de juros mensais : ");
        taxaJuros = ler.nextFloat();
       
        
        // calcular valor para cada 12 meses
        while (continua == 1) {
            System.out.println(" ");
            for ( int i = 1; i <= periodo; i++) {
                valorInicial = (valorInicial*taxaJuros) + valorDeposito + valorInicial;
                System.out.printf("Valor do mês "+ i + " : %.2f %n", valorInicial);
            }
            System.out.println("---------------------------");
            // confirmar se quer simular mais 1 ano 
            if ( valorInicial < valorDesejado) {
                System.out.print("\n Valor desejado ainda não alcançado");
                System.out.print("\n Simular mais 1 ano ? Se sim digite 1  : ");
                continua = ler.nextInt();
            }
            else{ 
                System.out.println("\n Valor desejado alcançado");
                continua = 0 ;
            }
           
            if (continua == 0 ) { System.out.println("\n Simulação encerrada \n");}
        }   
        
    }
}