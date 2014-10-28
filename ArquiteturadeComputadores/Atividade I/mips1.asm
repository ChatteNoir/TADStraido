.text
main: 
						#Grava no $8 o n�mero 1 se for positivo 0 se nulo e o n�mero -1 se for negativo
addi 	$2, $0, 5 
						#$2 � onde ser� registrado o syscall, $0 n�o tem um motivo espec�fico � como se houvesse uma soma, 5 � o que o syscall vai fazer
syscall

add		$9, $0, $2 
						#$9 � o registrador a ser usado para gravar o valor de $0+$2
beq		$9, $0, nulo
						#beq � o que faz pular, $9 e $0 s�o comparados para saber se s�o iguais, se forem ele pula dessa instru��o para "nulo"
						#A instru��o anterior � algo como "if $9==$0 then jump to nulo" 
srl		$7, $9, 31
 						#desloca 31  bits de $9 para a direita e grava em $7
						#dessa forma ele leva em conta apenas o bit mais significativo
						#srl = shift right logical, desloca para a direita
beq		$7, $0, positivo
						#compara $7 com $0, se iguais, pula para positivo "if $7==$0 then jump to positivo"
addi		$8, $0, -1
						#caso nenhum dos casos beq ocorram o n�mero ser� considerado negativo e ent�o � gravado um -1 no registrador $8
beq		$0, $0, fim
						#suponho que essa instru��o n�o sirva de nada, mas vamos deixar ela aqui (vai que sei l�)

nulo: 
						#� tipo uma fun��o
addi 	$8, $0, 0 
						#grava no $8 = $0 + 1
beq		$0, $0, fim 
						#pula pro fim se $0 for igual a $0 (sempre �, acredite)

positivo:
addi		$8, $0, +1
						#grava no $8 = $0 + 1
						#ATEN��O: O + ou - n�o indicam a opera��o a ser feita, eles apenas indicam a carga (positiva ou negativa) do n�mero que est� sendo
						#inserido

fim:
nop
#esse aqui realmente n�o faz nada
