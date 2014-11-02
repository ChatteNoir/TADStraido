#Desenvolva um programa que mostre todos os n´umeros entre 1 e 200 que s˜ao m´ultiplos de 3.
.data
.asciiz " "
.text 						# o programa funciona e imprime porém é preciso rolar a barra pra ver pq é bugado
addi 		$8, $0, 200		#adiciona 100 ao $8
addi			$9, $0, 3

test:
beq 		$7, $8, sai		#verifica se $7 chegou a 100 ($8)
addi 		$7, $7, 1		#Adiciona 1 ao valor já gravado em $7
div			$7, $9			#verifica se o numero atual é divisível por 3
mfhi	 	$10
beq 		$10, $0, imprime	#se for divisível vai para imprime
j 			test
imprime:
addi 		$2, $0, 4		#adiciona 4 a $2
lui 			$4, 0x1001		#identifica o início da string
syscall						#imprime a string
addi			$2, $0, 1		#Subtrai 3 de $2 para que este retorne a ser 1 e oriente o próximo syscall a imprimir um inteiro
add 		$4, $0, $7		#coloca $7 em $4 identificando qual inteiro deve ser impresso pelo syscall anteriormente orientado
syscall						#imprime o inteiro
j 			test				#volta pra test
sai:
nop
