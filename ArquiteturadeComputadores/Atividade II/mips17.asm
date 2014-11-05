.data
.asciiz "\n"
.text
main:
addi 		$2, $0, 5 			#adiciona 5 ao registrador $2 pra orientar o syscall a ler um inteiro
syscall							#recebe um valor e armazena em $2
add			$5, $0, $2 			#grava o valor de $2 em $5
beq 		$5, $0, final
addi 		$6, $6, 1			#Contagem de números
add			$7, $7, $5			#Soma dos números
j 			main				#volta o loop
final:
addi 		$2, $0, 1
add 		$4, $0, $6 			#imprime quantos números foram digitados	
syscall
addi 		$2, $0, 4			#adiciona 4 a $2 para q o syscall imprima string
lui 			$4, 0x1001			#identifica o início da string
syscall
addi 		$2, $0, 1
add 		$4, $0, $7 			#Imprime a soma
syscall
nop