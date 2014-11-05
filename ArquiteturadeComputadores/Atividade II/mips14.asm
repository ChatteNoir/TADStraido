#Desenvolva um programa que leia 30 notas e mostre a maior, a menor e a m´edia das notas.
.data
.asciiz "\n"
.text
main:
addi 		$13, $0, 1
main1:
addi 		$6, $0, 30
addi 		$2, $0, 5 			#adiciona 5 ao registrador $2 pra orientar o syscall a ler um inteiro
syscall							#recebe um valor e armazena em $2
add			$5, $0, $2 			#grava o valor de $2 em $5
add			$8, $8, $5			#Soma o valor de $5 com $8 e grava em $8
addi			$7, $7, 1			#Soma o valor prévio de $7 com 1
maior:
slt 			$10, $11, $5    		# Se $11<$5 coloca 1 no registrador 10
beq 		$10, $0, menor #se $5 for maior que $11 vai pular pra somamedia, caso contrário vai atribuir o valor de $5 a $11
add			$11, $0, $5
menor: 
slt 			$12, $5, $13
beq 		$12, $0, somamedia
add 		$13, $0, $5 
somamedia:
beq			$7, $6, media		#verifica se $7 e $6 são iguais (se já foram 10 numeros digitados)
j 			main1
media:
div			$8, $6
mflo 		$9
j 			fim
fim:
addi			$2, $0, 1			#grava 1 no registrador $2 para orientar o syscall a imprimir um inteiro
add 		$4, $0, $9			#coloca $8 em $4 identificando qual inteiro deve ser impresso pelo syscall anteriormente orientado
syscall							#imprime o inteiro
addi 		$2, $0, 4
lui 			$4, 0x1001
syscall
addi			$2, $0, 1			#grava 1 no registrador $2 para orientar o syscall a imprimir um inteiro
add 		$4, $0, $11			#coloca $8 em $4 identificando qual inteiro deve ser impresso pelo syscall anteriormente orientado
syscall							#imprime o inteiro
addi 		$2, $0, 4
lui 			$4, 0x1001
syscall
addi			$2, $0, 1			#grava 1 no registrador $2 para orientar o syscall a imprimir um inteiro
add 		$4, $0, $13			#coloca $8 em $4 identificando qual inteiro deve ser impresso pelo syscall anteriormente orientado
syscall
