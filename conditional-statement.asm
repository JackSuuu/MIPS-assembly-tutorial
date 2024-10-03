.data 
	message: .asciiz "The numbers are equal."
	message2: .asciiz "Nothing happened."
.text
	main:
		addi $t0, $zero, 5
		addi $t1, $zero, 20
		
		# branch if equal op1, op2, label
		beq $t0, $t1, numbersEqual
	
		# syscall to end program
		li $v0, 10
		syscall
	
	numbersEqual:
		li $v0, 4
		li $a0, message
		syscall