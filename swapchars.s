;Swap the first and last character of a string

.DATA
string: .ASCIZ "GOOD \n"

.TEXT
LDR R0, =string
SWI 0x02
LDRB R1, [R0,#3]
LDRB R2, [R0]
STRB R1, [R0]
STRB R2, [R0, #3]
SWI 0x02
SWI 0x011