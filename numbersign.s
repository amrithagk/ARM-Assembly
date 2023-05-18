;determines the sign of a number
.DATA
A: .WORD 0, 10, 20, -30, -40, 50, 60

.TEXT
MOV R0, #7
LDR R1, =A
LOOP: 
    LDR R2,[R1],#4 
    CMP R2,#0
    BEQ zero
    BGT positive
    BLT negative
    
zero: 
    ADD R3,R3,#1
    SUB R0,R0,#1
    CMP R0,#0
    BNE LOOP
    SWI 0x11

positive: 
    ADD R4,R4,#1
    SUB R0,R0,#1
    CMP R0,#0
    BNE LOOP
    SWI 0x11

negative: 
    ADD R5,R5,#1
    SUB R0,R0,#1
    CMP R0,#0
    BNE LOOP
    SWI 0x11
