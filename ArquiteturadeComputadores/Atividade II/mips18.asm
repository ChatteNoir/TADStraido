.text
main:
addi 		$8, $0, 1
addi 		$2, $0, 5
syscall
add 		$5, $0, $2
addi 		$2, $0, 5
syscall
add 		$6, $0, $2
loop:
beq 		$7, $6, final
mul			$8, $8, $5
addi 		$7, $7, 1
j 			loop
final:
addi 		$2, $0, 1
add 		$4, $8, $0
syscall
nop