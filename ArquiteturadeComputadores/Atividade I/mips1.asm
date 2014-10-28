.text
main: 
						#Grava no $8 o número 1 se for positivo 0 se nulo e o número -1 se for negativo
addi 	$2, $0, 5 
						#$2 é onde será registrado o syscall, $0 não tem um motivo específico é como se houvesse uma soma, 5 é o que o syscall vai fazer
syscall

add		$9, $0, $2 
						#$9 é o registrador a ser usado para gravar o valor de $0+$2
beq		$9, $0, nulo
						#beq é o que faz pular, $9 e $0 são comparados para saber se são iguais, se forem ele pula dessa instrução para "nulo"
						#A instrução anterior é algo como "if $9==$0 then jump to nulo" 
srl		$7, $9, 31
 						#desloca 31  bits de $9 para a direita e grava em $7
						#dessa forma ele leva em conta apenas o bit mais significativo
						#srl = shift right logical, desloca para a direita
beq		$7, $0, positivo
						#compara $7 com $0, se iguais, pula para positivo "if $7==$0 then jump to positivo"
addi		$8, $0, -1
						#caso nenhum dos casos beq ocorram o número será considerado negativo e então é gravado um -1 no registrador $8
beq		$0, $0, fim
						#suponho que essa instrução não sirva de nada, mas vamos deixar ela aqui (vai que sei lá)

nulo: 
						#é tipo uma função
addi 	$8, $0, 0 
						#grava no $8 = $0 + 1
beq		$0, $0, fim 
						#pula pro fim se $0 for igual a $0 (sempre é, acredite)

positivo:
addi		$8, $0, +1
						#grava no $8 = $0 + 1
						#ATENÇÃO: O + ou - não indicam a operação a ser feita, eles apenas indicam a carga (positiva ou negativa) do número que está sendo
						#inserido

fim:
nop
#esse aqui realmente não faz nada
