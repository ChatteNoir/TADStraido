.data
.asciiz " "
.text 						# o programa funciona e imprime porém é preciso rolar a barra pra ver pq é bugado
addi 		$2, $0, 1		#adiciona 1 ao $2
addi 		$7, $0 201		#adiciona 201 a $7		
test:
addi 		$2, $2, 3		#adiciona 3 a $2 
lui 			$4, 0x1001		#indica onde começa a string do syscall
syscall						#imprime a string
sub			$2, $2, 3		#subtrai 3 de $2
beq 		$7, $0, sai		#verifica se $7 chegou a 100 ($8)
sub 		$7, $7, 1		#Adiciona 1 ao valor já gravado em $7
add 		$4, $0, $7		#adiciona $7 a $4 indicando o número a ser impresso
syscall						#imprime
j 			test				#volta pra test
sai:
nop