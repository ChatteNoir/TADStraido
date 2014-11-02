#Sn = (a1 + an)n/2 
.text
addi 		$5, $0, 1			#adiciona 1 ao $5 que é onde deve começar a soma
addi 		$6, $0, 200			#adiciona 200 a $6 que é onde deve terminar a soma
addi 		$8, $0, 2			#adiciona 2 ao $8 
add 		$7, $5, $6			#soma $5 e $6 e adiciona ao $7
div 			$6, $8				#divide $6 por $8
mflo 		$9					#grava lo em $9
mult 		$7, $9				#multiplica $7 por $9
mflo 		$4					#move lo para $10
addi 		$2, $0, 1			#coloca 1 em $2 para orientar o syscall a imprimir um inteiro
syscall