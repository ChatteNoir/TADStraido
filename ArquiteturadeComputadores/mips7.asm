addi 	$2, $0, 5		 #é ímpar? é par? se for ímpar grava 1 em $5 se for par grava dois 
syscall					#grava em $2 o numero e tal
addi 	$3, $0, 2		 #grava e tudo mais
div 		$2, $3			#Divide $2
mfhi 	$4				#move o resto para $4 se for 0 é pq é par 
beq		$4, $0, par		#se $4 = $0 pula pra par
add 	$5, $0, 1		#grava 1 em $5
beq 	$0, $0, fim
par:
add 	$5, $0, 2		#Grava 2 em $
fim:
nop
