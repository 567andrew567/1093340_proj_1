.globl	main
.data 	
    
	Endl:	.string "\n"
   	Input:	.string "Input a number:\n"
   	Output:	.string "sum of this number is:\n"
.text
main:

	la a0,Input
	li a7,4
	ecall
	li a7,5
	ecall
	add t1,zero,a0
	
	add t2,x0,x0
	jal ra,F
	
	la a0,Output
	li a7,4
	ecall
	mv a0,t2
	li a7,1
	ecall
	
	li a7,10
	ecall
F:
	addi sp,sp,-8
	sw ra,0(sp)
	sw t1,4(sp)
	#x<0
	add t3,x0,x0
	blt t1,x0,case_else
	#x==0
	beq t1,x0,case_0
	#x==1
	addi t3,x0,1
	beq t1,t3,case_1
	#1<x<=10
	addi t3,x0,10
	ble t1,t3,case_10
	#10<x<=20
	addi t3,x0,20
	ble t1,t3,case_20
	#20<x
	bgt t1,t3,case_20up
	
case_else:
	addi t2,t2,-1
	beq x0,x0,Exit
case_0:
	addi t2,t2,1
	beq x0,x0,Exit
case_1:
	addi t2,t2,5
	beq x0,x0,Exit
case_10:
	addi t1,t1,-1
	jal ra,F
	addi t1,t1,-1
	jal ra,F
	beq x0,x0,Exit
case_20:
	addi t1,t1,-2
	jal ra,F
	addi t1,t1,-1
	jal ra,F
	beq x0,x0,Exit
case_20up:
	slli t1,t1,1
	add t2,t2,t1
	srli t1,t1,1
	addi t3,x0,5
	div t1,t1,t3
	jal ra,F
	beq x0,x0,Exit
Exit:
	lw ra,0(sp)
	lw t1,4(sp)
	addi sp,sp,8
	jalr x0,0(ra)
