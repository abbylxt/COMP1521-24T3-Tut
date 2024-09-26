
main:
	li	$v0, 4
	la	$a0, prompt_str
	syscall

	li	$v0, 5
	syscall
	move	$t0, $v0

if_conditions:
	bgt	$t0, 100, if_body
	blt	$t0, 1000, if_body

	b	else_body

if_body:
	li	$v0, 4
	la	$a0, medium
	syscall

else_body:
	li	$v0, 4
	la	$a0, too_big_or_small_str
	syscall

epilogue:
	li	$v0, 0
	jr	$ra

.data

prompt_str:
        .asciiz "Enter a number: "

too_big_or_small_str:
	.asciiz "small/big\n"

medium:
	.asciiz "medium\n"