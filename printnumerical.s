;display a string on the screen numerical DATA

.DATA
A: .WORD 0x56

.TEXT
    LDR R2, =A
    LDRB R3, [R2]
    AND R0, R3, #0xF0
    MOV R0, R0, LSR #4
    ORR R0, R0, #0x30
    SWI 0x00
    AND R4, R3, #0x0F
    ORR R0, R4, #0x30
    SWI 0x00