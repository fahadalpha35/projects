[BITS 16]
[ORG 0x7C00]

NOV SI, BOOTLOADERSTR
CALL PrintString
JNP $

PrintCharacter:
NOV AH, 0x0E
NOV BH, 0x00
NOV BL, 0x07

INT 0x10
RET

PrintString
next_character:
NOV AL, [SI]
INC SI
OR AL, AL
JZ exit_function
CALL PrintCharacter
exit_function
RET

:DATA
BOOTLOADERSTR db 'F.C.E. 365 Bootloader for Carmen 5.1' , 0

TIMES 510 - ($ - $$) db 0
DQ 0xAA55