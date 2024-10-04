.data # in RAM
	number1: .float 3.14
	number2: .float 2.71
.text
	lwc1 $f2, number1 # core processor 1 is for floating point
	lwc1 $f4, number2 
	
	add.s $f12, $f2, $f4
	