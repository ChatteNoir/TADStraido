.text 
main: 						#grava no registro $20 o número 1 se forem iguais e o número 0 se forem diferentes (os dados inseridos)
addi 	$2, $0, 5
syscall 						#vai gravar no $2 algo que foi inserido pelo usuário
add		$9, $2, $0 			#grava o que havia no $2 no $9
addi		$2, $0, 5 			#grava o número 5 no $2
syscall 						#grava no $2 algo inserido pelo usuário
add	 	$8, $2, $0
							#Recebe dois dados do usuário e insere-os respectivamente em $9 e $8
beq 	$9, $8, iguais
							#Confere se $9 e $8 são iguais, se sim pula para iguais

addi 	$20, $0, 0
							#Salva em $20 o resultado de $0+0
beq 	$0, $0, fim
							#Pula para fim

iguais:
addi 	$20, $0, 1 			#Grava em $20 o resultado de $0 + 1
fim:
nop
