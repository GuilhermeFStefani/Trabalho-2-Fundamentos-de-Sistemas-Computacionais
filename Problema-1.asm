main
	ldi r2,0
	ldi r3,0
	ldi r5,25
	ldi r6,end
	bnz r7,loop
	hcf

loop
	ldi r1,numbers
	add r1,r1,r2
	add r1,r1,r2
	ldw r1,r1	
	add r3,r3,r1
	add r2,1
	sub r4,r2,r5
	bez r4,r6
	bnz r7,loop

end
	ldb r1,str
	stw r1,0xf000
	stw r3,0xf002
	stw r1,0xf000
	hcf

	
str	"\n"
N	25
numbers	25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 



