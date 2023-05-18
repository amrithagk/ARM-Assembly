.TEXT
LDR R0, =A
SWI 0x02 ; display a string on the screen
SWI 0x11

.DATA
A: .ASCIZ "HELLO WORLD"