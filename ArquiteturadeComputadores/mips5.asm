.text
main:						#Bota a nota da m�dia do aluno em 13 depois de receber duas notas
addi 	$2, $0, 5
syscall 						#vai gravar no $2 algo que foi inserido pelo usu�rio
add		$9, $2, $0 			#grava o que havia no $2 no $9(media 1 do aluno)
addi		$2, $0, 5 			#grava o n�mero 5 no $2
syscall 						#grava no $2 algo inserido pelo usu�rio
add	 	$8, $2, $0			#grava em $8(media 2 do aluno) o q foi inserido em $2
addi 	$7, $0, 2			#Grava o n�mero 2 em $7(primeiro peso)
addi		$6, $0, 3			#Grava o n�mero 3 em $6(segundo peso)
addi		$5, $0, 5			#Grava o n�mero 5 em $5(divisor || peso 1 + peso 2)
madd 	$9, $7				#Multiplica $9 (media 1 do aluno) por $7 (primeiro peso) e grava em "lo"
mflo 	$10					#Grava o valor da multiplica��o anterior para $10
mtlo 	$0					#Zera lo
madd 	$8, $6				#Multiplica $8 (media 2) por $6 (peso 2) e grava em lo
mflo 	$11					#Grava o valor de lo em $11
add 	$12, $11, $10		#Move para $12 o resultado da soma $11+$10 que seriam as m�dias multiplicadas pelos pesos
div 		$12, $5				#Divide $12 por $5 
mflo 	$13					#grava o resultado em $13
#NOTA: o comando div diferente do comando madd n�o soma o resultado da opera��o com o valor armazenado em lo,
#ele o substitu� completamente
