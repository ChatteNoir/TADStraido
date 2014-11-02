#Desenvolva um programa que leia 10 numeros e mostre a soma dos mesmos
.text
main:
addi 		$6, $0, 10
addi 		$2, $0, 5 			#adiciona 5 ao registrador $2 pra orientar o syscall a ler um inteiro
syscall							#recebe um valor e armazena em $2
add			$5, $0, $2 			#grava o valor de $2 em $5
add			$8, $8, $5			#Soma o valor de $5 com $8 e grava em $8
addi			$7, $7, 1			#Soma o valor prévio de $7 com 1
beq			$7, $6, fim			#verifica se $7 e $6 são iguais (se já foram 10 numeros digitados)
j 			main
fim:
addi			$2, $0, 1			#grava 1 no registrador $2 para orientar o syscall a imprimir um inteiro
add 		$4, $0, $8			#coloca $8 em $4 identificando qual inteiro deve ser impresso pelo syscall anteriormente orientado
syscall							#imprime o inteiro