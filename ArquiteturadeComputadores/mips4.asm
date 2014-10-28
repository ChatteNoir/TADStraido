.text
main: 						#Recebe três números e grava em $12 o maior número que o usuário digitar
addi 	$2, $0, 5			#Grava 5 em $2 para indicar o tipo de informação que vai ser recebida pelo syscall
syscall						#Recebe um dado e grava em $2
add		$11, $2, $0			#Grava $2 em $11
addi 	$2, $0, 5			#Grava 5 em $2 pra orientar o syscall
syscall						#Recebe um dado e grava em $2
add	 	$10, $2, $0			#Grava o dado de $2 em $10
addi 	$2, $0, 5			#Grava 5 em $2
syscall						#Recebe e grava e $2
add 	$9, $2, $0			#Grava $2 em $9

sub 	$8, $11, $10 		#faz $11 - $10 e grava em $8, se o resultado for positivo então $11 é maior que $10
srl		$7, $8, 31			#Desloca 31 bits de $8 deixando apenas o bit mais importante e grava em $7
sub 	$4, $11, $9			#Subtarai $11 - $9 e grava em $4 se for positivo $11 é maior que $9
srl		$3, $4, 31			#Desloca 31 bits de $3 e grava em $4 o bit mais significativo
beq 	$3, $0, quase		#Se $3 for igual a $0 pula pra quase  

normal:
sub 	$6, $10, $9			#subtra $10-$9 e grava em $6
srl		$5, $6, 31			#Desloca 31 bits pra direita de $6 e grava em $5
beq 	$5, $0, maior10		#Verifica se $5 é igual a $0 se sim pula pra maior10
add 	$12, $9, $0			#Grava $9 em $12 indicando $9 como maior número por eliminação
beq 	$0, $0, fim			#vai pro fim terminar o programa

quase:
beq 	$7, $0, maior11		#pula para maior11 se $7(agora contendo apenas o bit de sinal de $8) for igual a $0(0)
beq 	$0, $0, normal		#caso contrário pula pra normal
maior11:
add		$12, $11, $0 		#Grava em $12 o valor de $11 indicando este como maior numero
beq 	$0, $0, fim			#termina	
maior10:
add 	$12, $10, $0			#Grava $10 em $12 tbm por eliminação indicando este como maior número
fim:
nop
