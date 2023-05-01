DIS MACRO STR
MOV AH,09H
LEA DX,STR
INT 21H
ENDM
DATA SEGMENT
    MSG1 DB "Enter an identifier : $"
    MSG2 DB "Not a valid identifier $"
    MSG3 DB "Valid identifier $"
    STR1 DB 20 DUP('$')
    LINE DB 10,13,'$'
DATA ENDS

CODE SEGMENT
        ASSUME DS:DATA,CS:CODE
START:
        MOV AX,DATA
        MOV DS,AX
        DIS MSG1
        MOV AH,0AH
        LEA DX,STR1
        INT 21H
        DIS LINE
        LEA SI,STR1+2
        MOV AL,'0'
        CMP BYTE PTR[SI],AL
        JL L2
        MOV AL,'9'
        CMP BYTE PTR[SI],AL
        JG L2
        DIS MSG2
        JMP L1
    L2: DIS MSG3   
    L1: MOV AH,4CH
        INT 21H
CODE ENDS
END START