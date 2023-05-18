;searches for a given number in an array using linear search
.DATA
Suc: .ASCIZ "Successful"
NSuc: .ASCIZ "Unsuccessful"
Array: .WORD 10, 20, 30, 40, 50

.TEXT
MOV R5, #30 ;searches for 30 in the array
LDR R4, =Array
LDR R1, [R4]
MOV R6, #6

BACK:
    CMP R1, R5
    BEQ DONE
    ADD R1, R1, #4
    SUB R6, R6, #1
    CMP R6, #0
    BNE BACK

FAIL:
    LDR R0, =NSuc
    SWI 0x02
    SWI 0x11

DONE: 
    LDR R0, =Suc
    SWI 0x02
    SWI 0x11

