programa
{
	// iniciar variaveis
	inteiro pilha[5]
	inteiro tamanho, valor, menu, max

	
	funcao inicio()
	{
		tamanho = 0 // tamanho atual da pilha
		max = 5 // tamanho maximo da pilha
		menu = 0

		enquanto ( menu != 5 ) 
		{
			limpa()
      		escreva("-----------------------------")
	      	escreva("\nManipular Pilha")
	      	escreva("\n-----------------------------")
	      	escreva("\n1 - Inserir novo elemento")
	      	escreva("\n2 - Remover elemento da fila")
	      	escreva("\n3 -")
	      	escreva("\n4 -")
	      	escreva("\n5 - Sair do Sistema ")
	      	escreva("\n-----------------------------")
	      	escreva(" \nQual sua opção ( 1 a 5 ): ")
	      	leia(menu)
	      	limpa()

			escolha (menu) 
			{
			  caso 1:
				// valor sempre inserido no topo da pilha
				inserir()
			  pare
			  
			  caso 2:
				// valor sempre inserido no topo da pilha
				remover()
			  pare
			}

		}
		
	
	}
	
	
		
	funcao inserir() // inserir dados no topo da fila
	{
	
		cadeia cont

		cont = ""

		enquanto ( cont == "") 
	
		{
			se 	( tamanho == max	)
				{
					escreva("\n")
					escreva("\n<< Pilha esta cheia >>")
					escreva("\n")
					cont = "s"
					espera()					
				}
				 senao
				 {
				 	escreva("------------------------------------------------")
				 	escreva("\nDigite o valor que deseja inserir na pilha : ")
				 	leia(valor)
				 	pilha[tamanho] = valor
				 	tamanho = tamanho + 1
		
				 	 // incluir + elementos ?
		               se ( tamanho < max)
		               {
		               	escreva(" ")
		        			escreva("\nDigite 'Enter' para continuar inserir elementos")
		        			escreva("\nDigite qualquer letra para encerrar inserção ")
		        			leia(cont)
		        			escreva("\n ")
		               }
				 	
				 }
		}	
	}

	
	funcao inteiro remover()
	{ 
		se (tamanho > 0) 
		{
			tamanho = tamanho -1 // indica agora qual é o ultimo elemento inserido
			pilha[tamanho] = 0  // limpa elemento removido
			retorne pilha[tamanho] // vai retorna o ultimo elemento inserido		
		
		}
		senao {
 	 	       escreva("\n Pilha Vazia")
		       retorne -1
			 }
		
	}
	
	
	
	
	
	funcao espera()  // aguarda ordem para continuar
	{
		cadeia cont
		
		  cont = ""
		  escreva(" ")
		  escreva("\n<< Digite 'Enter' para retornar ao menu >> ")
		  leia(cont)
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 162; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pilha, 4, 9, 5}-{tamanho, 5, 9, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */