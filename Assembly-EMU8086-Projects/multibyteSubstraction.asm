MOV AX,0000
MOV SI, 2000
MOV DI, 3000
MOV BX, 2008
MOV CL, 04

MOV AL, [SI]
SUB AL, [BX]
MOV [DI], AL
INC SI
INC BX
INC DI
DEC CL
JNZ UP
INT 3