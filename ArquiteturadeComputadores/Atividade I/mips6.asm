.text
main: 						#Recebe dois números e grava em $10 o maior número que o usuário digitar e em $11 o menor
addi 	$2, $0, 5			#Grava 5 em $2 para indicar o tipo de informação que vai ser recebida pelo syscall
syscall						#Recebe um dado e grava em $2
add		$9, $2, $0			#Grava $2 em $9
addi 	$2, $0, 5			#Grava 5 em $2 pra orientar o syscall
syscall						#Recebe um dado e grava em $2
add	 	$8, $2, $0			#Grava o dado de $2 em $8

#bgt		$9, $8, maior9	#pula para "maior9"  se $9 > $8 ////// bgt é pseudo instrução (que droga)
sub 	$7, $9, $8 			#faz $9 - $8 e grava em $7, se o resultado for positivo então $9 é maior que $8
srl		$6, $7, 31			#Desloca 31 bits de $7 deixando apenas o bit mais importante e grava em $6
beq 	$6, $0, maior9		#pula para maior9 se $6(agora contendo apenas o bit de sinal de $7) for igual a $0(0)
add 	$10, $8, $0			#Grava $8 em $10 caso não tenha ocorrido o pulo anterior
add 	$11, $9, $0			# E grava $11 em $10 
beq 	$0, $0, fim

maior9:
add		$10, $9, $0 			#Grava em $10 o valor de $9
add 	$11, $8, $0			#Grava em $11 o valor de $8
fim:
nop
#Não interessa o código é meu e vai ficar o maior numero no menor registrador e o menor número no maior