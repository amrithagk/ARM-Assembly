.TEXT
MOV R0, #12
MOV R1, #9
Loop:
    InnerLoop1:
        CMP R0, R1
        SUBGT R0, R0, R1
        BGT InnerLoop1
    InnerLoop2:
        CMP R0, R1
        SUBLT R1, R1, R0
        BLT InnerLoop2
    CMP R0, R1
    BNE Loop
