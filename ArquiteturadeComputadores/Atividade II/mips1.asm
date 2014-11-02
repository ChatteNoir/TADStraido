.data
.asciiz " "
.text 						# o programa funciona e imprime porém é preciso rolar a barra pra ver pq é bugado
addi 		$8, $0, 100		#adiciona 100 ao $8
addi 		$2, $0, 1		#adiciona 1 ao $2
test:
addi 		$2, $2, 3		#adiciona 3 a $2
lui 			$4, 0x1001		#identifica o início da string
syscall						#imprime a string
sub			$2, $2, 3		#Subtrai 3 de $2 para que este retorne a ser 1 e oriente o próximo syscall a imprimir um inteiro
beq 		$7, $8, sai		#verifica se $7 chegou a 100 ($8)
addi 		$7, $7, 1		#Adiciona 1 ao valor já gravado em $7
add 		$4, $0, $7		#coloca $7 em $4 identificando qual inteiro deve ser impresso pelo syscall anteriormente orientado
syscall						#imprime o inteiro
j 			test				#volta pra test
sai:
nop