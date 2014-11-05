.text
main:
addi 		$8, $0, 1
addi 		$9, $0, 1
addi 		$2, $0, 5
syscall
add 		$5, $0, $2
loop:
beq 		$5, $0, final
mul			$9, $9, $5
sub 		$5, $5, $8
j 			loop
final:
addi 		$2, $0, 1
add 		$4, $9, $0
syscall
nop