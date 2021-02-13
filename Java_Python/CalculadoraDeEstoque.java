// import java.io.IOException;

public class CalculadoraDeEstoque {
    public static void main(String[] args) {
        // declaração de variaveis
        double livroJava8 = 10000;
        double livroTDD = 59.90;
        double soma = livroJava8 + livroTDD;
        String teste;
        
        //Limpa a tela no windows, no linux e no MacOS
        //if (System.getProperty("os.name").contains("Windows"))
        //    new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        //else
        // Runtime.getRuntime().exec("clear");
        
        // apresentar dados
        System.out.print("Total em estoque é : ");
        System.out.printf("%.2f \n", soma);

        if (soma < 150) { System.out.println("Estoque muito baixo");  }
            else if (soma >= 2000) { System.out.println("Estoque muito alto");}
                else { System.out.println("Estoque normal");}
        
         // Exemplo de operador tenário
        teste = livroJava8 > livroTDD ? "sim" :  "não" ;
        System.out.println("Teste : "+teste);

        

            }
}
