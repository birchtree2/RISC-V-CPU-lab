main: 	
    addi x1,x0,0x1	        #x1 = 0x1
	addi x2,x0,0x1       	#x2 = 0x1
	addi x3,x0,0x1       	#x3 = 0x1
	addi x4,x0,0x1       	#x4 = 0x1
	lw  x5,0x8(x0)          #x5 = 0x80000000
	add x6,x1,x1         	#x6 = 0x2
	xor x7,x1,x2         	#x7 = 0
	sub x8,x2,x1         	#x8 = 0
	ori x9,x3,-1            #x9 = 0xFFFFFFFF
	and x10,x4,x3        	#x10 = 0x1
	sw  x5,0x4(x0)  	    #mem[1] = 0x80000000
	slt x11,x5,x6           #x11 = 0x1
	xori x12,x7,0xAA        #x12 = 0x000000AA
	srl x13,x5,x1           #x13 = 0x40000000
	andi x14,x8,0x1         #x14 = 0x0
	or  x15,x9,x3           #x15 = 0xFFFFFFFF
	add x16,x10,x10         #x16 = 0x2
	xor x17,x11,x8          #x17 = 0x1
	lw  x18,0x4(x0)         #x18 = 0x80000000
    slt x19,x12,x4          #x19 = 0
    srli x20,x13,0x1        #x20 = 0x20000000
    and x21,x14,x6          #x21 = 0
    sub x22,x5,x1        	#x22 = 0x7FFFFFFF
    addi x23,x10,0x1        #x23 = 0x2
    sub x24,x16,x9        	#x24 = 0x3
    xor x25,x19,x11      	#x25 = 0x1
    ori x26,x20,0xFF  	    #x26 = 0x200000FF
    add x27,x18,x3      	#x27 = 0x80000001
    ori x29,x19,0xAF     	#x29 = 0x000000AF
    add x30,x20,x1       	#x30 = 0x20000001
    lw  x31,0x8(x0)       	#x31 = 0x80000000
    jal x0,main
    add x0,x0,x0
    add x0,x0,x0
    add x0,x0,x0

