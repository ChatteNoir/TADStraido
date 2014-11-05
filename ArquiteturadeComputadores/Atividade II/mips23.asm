#23. Desenvolva um programa que leia um n´umero n e determine se n ´e primo
.data
.asciiz "Primo"
.text
main:
addi 		$6, $0, 1
addi 		$7, $0, 1
addi 		$2, $0, 5 			#adiciona 5 ao registrador $2 pra orientar o syscall a ler um inteiro
syscall							#recebe um valor e armazena em $2
add 		$5, $0, $2 			#grava o numero recebido em $5
loop:
beq 		$5, $6, primo
beq			$7, $0, final
addi 		$6, $6, 1
div 			$5, $6
mfhi 		$7
j			loop
primo:
addi 		$2, $0, 4			#adiciona 4 a $2 para q o syscall imprima string
lui 			$4, 0x1001			#identifica o início da string
syscall
final:
nop