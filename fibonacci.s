;nth fibonacci number

.DATA
A: .WORD 10 ;10th fibonacci number
B: .WORD

.TEXT
LDR R0, =A
LDR R5, [R0]
LDR R6, =B
MOV R4, #2
MOV R1,#0
MOV R2, #1
STR R1, [R6, #4]!
STR R2, [R6, #4]!
Loop: 
    ADD R3, R1, R2
    STR R3, [R6, #4]!
    MOV R1, R2
    MOV R2, R3
    ADD R4, R4, #1
    CMP R4, R5
    BNE Loop
SWI 0X11