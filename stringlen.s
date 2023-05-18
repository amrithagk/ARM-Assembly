.DATA
A: .ASCIZ "THIS IS A STRING"

.TEXT
LDR R1, =A
MOV R2, #0 ;to count the length
MOV R3, #0 ;to compare string pointer
LOOP:
    LDRB R0, [R1], #1
    CMP R0, R3
    ADDNE R2, R2, #1
    CMP R0, R3
    BNE LOOP

SWI 0X011