#Desenvolva um programa que mostre todos os n´umeros no intervalo entre n e m. n e m devem ser informados pelo usuário
.data
.asciiz " "
.text
main:
addi 		$2, $0, 5 			#adiciona 5 ao registrador $2 pra orientar o syscall a ler um inteiro
syscall							#recebe um valor e armazena em $2
add			$5, $0, $2 			#grava o valor de $2 em $5
addi 		$2, $0, 5 			#adiciona 5 ao registrador $2 pra orientar o syscall a ler um inteiro
syscall							#recebe um valor e armazena em $2 
add 		$6, $0, $2 			#grava o valor de $2 em $6
slt 			$1, $5, $6			#grava 1 em $1 se $5 <$6
beq			$1, $0, maior$5

maior$6:
beq 		$5, $6, sai			#verifica se $5 chegou a $6
addi 		$2, $0, 4			#adiciona 4 a $2 para q o syscall imprima string
lui 			$4, 0x1001			#identifica o início da string
syscall							#imprime a string
addi			$2, $0, 1			#Subtrai 1 de $2 para que este oriente o próximo syscall a imprimir um inteiro
addi 		$5, $5, 1			#Adiciona 1 ao valor já gravado em $5
add 		$4, $0, $5			#coloca $5 em $4 identificando qual inteiro deve ser impresso pelo syscall anteriormente orientado
syscall							#imprime o inteiro
j 			maior$6				#volta pra maior$6

maior$5:
beq 		$6, $5, sai			#verifica se $6 chegou a $5
addi 		$2, $0, 4			#adiciona 4 a $2
lui 			$4, 0x1001			#identifica o início da string
syscall							#imprime a string
addi			$2, $0, 1			#grava o numero 1 em $2 para que este oriente o próximo syscall a imprimir um inteiro
addi 		$6, $6, 1			#Adiciona 1 ao valor já gravado em $6
add 		$4, $0, $6			#coloca $6 em $4 identificando qual inteiro deve ser impresso pelo syscall anteriormente orientado
syscall							#imprime o inteiro
j 			maior$5				#volta pra maior$5

sai:
nop
