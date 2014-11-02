.data
.asciiz " "
.text 						# o programa funciona e imprime porém é preciso rolar a barra pra ver pq é bugado
addi 		$8, $0, 80		#adiciona 80 ao $8
addi 		$2, $0, 1		#adiciona 1 ao $2
test:
addi 		$2, $2, 3		#adiciona 3 a $2 pra orientar o syscall a imprimir string
lui 			$4, 0x1001		#indica onde começa a string
syscall
sub			$2, $2, 3		#subtrai 3 de $2 para orientar o syscall a imprimir inteiro
beq 		$7, $8, sai		#verifica se $7 chegou a 80 ($8)
addi 		$7, $7, 2		#Adiciona 1 ao valor já gravado em $7
add 		$4, $0, $7		#adiciona $7 a $4 para identificar que inteiro deve ser impresso
syscall
j 			test				#volta pra test
sai:
nop