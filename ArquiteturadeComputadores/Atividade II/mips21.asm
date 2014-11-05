#Desenvolva um programa que mostre os divisores de um numeros.
.data
.asciiz " "
.text
main:
addi 		$2, $0, 5 			#adiciona 5 ao registrador $2 pra orientar o syscall a ler um inteiro
syscall							#recebe um valor e armazena em $2
add 		$5, $0, $2 			#grava o numero recebido em $5
loop:
beq 		$6, $5, final
addi			$6, $6, 1
div 			$5, $6
mfhi 		$7
beq 		$7, $0, multiplo
j			loop
multiplo:
addi 		$2, $0, 4			#adiciona 4 a $2 para q o syscall imprima string
lui 			$4, 0x1001			#identifica o início da string
syscall
addi 		$2, $0, 1
add 		$4, $0, $6			#Imprime quem n passou
syscall
j 			loop
final:
nop