;display a string on the screen characterwise

.DATA
MSG: .ASCIZ "HELLO WORLD"

.TEXT
LDR R1, =MSG

LOOP:
    LDRB R0, [R1], #1
    CMP R0, #0
    SWINE 0x00
    BNE LOOP

SWI 0x011
.END