.data
.asciiz "\n"
.text
main:
addi 		$6, $0, -1
addi 		$10, $0, 2			#Grava o número 2 em $7(primeiro peso)
addi			$9, $0, 3			#Grava o número 3 em $6(segundo peso)
addi			$8, $0, 5			#Grava o número 5 em $5(divisor || peso 1 + peso 2)
addi 		$17, $0, 6
loop:
addi 		$2, $0, 5 			#adiciona 5 ao registrador $2 pra orientar o syscall a ler um inteiro
syscall							#recebe um valor e armazena em $2
add			$5, $0, $2 			#grava o valor de $2 em $5
beq 		$5, $6, final
addi 		$2, $0, 5 			#adiciona 5 ao registrador $2 pra orientar o syscall a ler um inteiro
syscall							#recebe um valor e armazena em $2
add			$7, $0, $2 			#grava o valor de $2 em $5
beq 		$7, $6, final
madd 		$5, $10			#Multiplica $9 (media 1 do aluno) por $7 (primeiro peso) e grava em "lo"
mflo 		$13					#Grava o valor da multiplicação anterior para $10
mtlo 		$0					#Zera lo
madd 		$7, $9				#Multiplica $8 (media 2) por $6 (peso 2) e grava em lo
mflo 		$14					#Grava o valor de lo em $11
add 		$15, $14, $13		#Move para $12 o resultado da soma $11+$10 que seriam as médias multiplicadas pelos pesos
div 			$15, $8				#Divide $12 por $5 
mflo 		$16					#grava o resultado em $13
slt 			$18, $17, $16		# Se $17<$16 grava 1 em $18	
beq 		$18, $0, npassou
addi 		$19, $19, 1			#conta quem se passou
j 			loop
npassou:
addi 		$20, $20, 1			#conta quem não se passou (recalq)
j 			loop					#volta o loop
final:
addi 		$2, $0, 1
add 		$4, $0, $20 			#imprime quem se passou
syscall
addi 		$2, $0, 4			#adiciona 4 a $2 para q o syscall imprima string
lui 			$4, 0x1001			#identifica o início da string
syscall
addi 		$2, $0, 1
add 		$4, $0, $19 			#Imprime quem n passou
syscall
nop