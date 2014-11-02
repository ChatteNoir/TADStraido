#Desenvolva um programa que leia um n´umero n e mostre a tabuada de multiplicar de n
.data
.asciiz "\n"
.text
main:
addi 		$8, $0, 10
addi 		$2, $0, 5
syscall
add 		$5, $0, $2
tabuada:
beq 		$6, $8, fim
addi 		$6, $6, 1
mul 		$7, $5, $6

addi 		$2, $0, 4
lui 			$4, 0x1001
syscall

addi 		$2, $0, 1
add 		$4, $7, $0
syscall
j 			tabuada
fim:
nop