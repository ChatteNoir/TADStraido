.data
.asciiz "Pares: "
.asciiz " Impares: "
.text
main:
addi 		$2, $0, 5 			#adiciona 5 ao registrador $2 pra orientar o syscall a ler um inteiro
syscall							#recebe um valor e armazena em $2
add 		$5, $0, $2			#grava $2 em $5
addi 		$6, $0, 2
loop:
beq 		$7, $5, final
addi 		$7, $7, 1
addi 		$2, $0, 5 			#adiciona 5 ao registrador $2 pra orientar o syscall a ler um inteiro
syscall							#recebe um valor e armazena em $2
add 		$8, $0, $2			#grava $2 em $8
div 			$8, $6
mfhi 		$9
beq 		$9, $0, par
addi 		$10, $10, 1			#$10 conta os numeros impares
j 			loop
par:
addi			$11, $11, 1			#$11 conta os numeros pares
j 			loop
final:
addi 		$2, $0, 4			#adiciona 4 a $2 para q o syscall imprima string
lui 			$4, 0x1001			#identifica o início da string
syscall
addi 		$2, $0, 1
add 		$4, $0, $11
syscall
nop