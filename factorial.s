;calculates the factorial of a given number
.text
mov r0, #5 ;number whose factorial is to be calculated
mov r1, #1
loop:
    mul r1, r0, r1
    subs r0, r0, #1
    cmp r0, #1
    bgt loop
swi 0x011