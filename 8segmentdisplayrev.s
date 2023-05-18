;operates the 8-segment display in ARMsim with down-counter implementation
a:
.word 100000
.equ A, 0x80
.equ B, 0x40
.equ C, 0x20
.equ D, 0x08
.equ E, 0x04
.equ F, 0x02
.equ G, 0x01
.equ P, 0x10

mov r2, #16

tab:
.word A|B|C|D|E|G ;0
.word B|C ;1
.word A|B|F|E|D ;2
.word A|B|F|C|D ;3
.word B|G|F|C ;4
.word A|F|G|C|D ;5
.word A|F|E|G|C|D ;6
.word A|B|C ;7
.word A|B|C|D|E|F|G ;8
.word A|B|G|F|C ;9
.word A|F|B|G|E|C ;A
.word A|B|C|D|E|F|G|P ;B
.word A|G|E|D ;C
.word A|B|C|D|E|G|P ;D
.word A|F|G|E|D ;E
.word A|F|G|E ;F

ldr r5, =tab
ldr r0, [r5], #64
downcount:
    ldr r0, [r5, #-4]!
    swi 0x200
    bl delay
    sub r2, r2, #1
    cmp r2, #0
    beq exit
    b downcount

delay:
    ldr r6, =a
    ldr r7, [r6]

loop:
    sub r7, r7, #1
    cmp r7, #0
    bne loop
    mov pc, lr

exit:
    swi 0x11
