.text
main:
addi 		$2, $0, 5 			#adiciona 5 ao registrador $2 pra orientar o syscall a ler um inteiro
syscall							#recebe um valor e armazena em $2
loop:
add 		$8, $0, $2			#adiciona o valor de $2 que foi recebido pelo syscall a $8
add 		$10, $10, $7			#soma $10 com o valor atual de $7
beq 		$7, $8, fim			#verifica se $7 é igual a $8
addi 		$7, $7, 1			#adiciona 1 + $7 ao $7 o que serve para contar quantas vezes o loop foi executado e o número q ele está percorrendo
j 			loop					#retorna ao loop
fim:
sub 		$2, $2, $2			#zera $2
addi 		$2, $0, 1			#grava 1 em $2 pra orientar o syscall a imprimir um inteiro
add 		$4, $0, $10			#adiciona $10 a $4
syscall