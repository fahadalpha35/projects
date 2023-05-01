DATA SEGMENT
        STR1 DB "ENTER THE STRING HERE :-> $ "
        STR2 DB "YOUR STRING IS :-> $"
        MSG1 DB "STRING IS VALID $"
        MSG2 DB "STRING IS NOT VALID $"
        INSTR1 DB 20 DUP("$")
        NEWLINE DB 10,13,"$"
DATA ENDS

CODE SEGMENT

        ASSUME DS:DATA,CS:CODE
START:

        MOV AX,DATA
        MOV DS,AX

        LEA SI,INSTR1

;GET THE STRING

        MOV AH,09H
        LEA DX,STR1
        INT 21H

        MOV AH,0AH
        LEA DX,INSTR1
        INT 21H

        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H

;PRINT THE STRING

        MOV AH,09H
        LEA DX,STR2
        INT 21H

        MOV AH,09H
        LEA DX,INSTR1+2
        INT 21H

;CHECK STRING IS VALID OR NOT
        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H

        MOV BX,00
        ADD SI,2
        

        MOV BL,BYTE PTR[SI]

        SUB BL,30H

        CMP BL,0
        JL L1
        CMP BL,9
        JG L1

        MOV AH,09H
        LEA DX,MSG2
        INT 21H
        JMP L2
     L1:
        MOV AH,09H
        LEA DX,MSG1
        INT 21H
         
    L2: MOV AH,4CH
        INT 21H


CODE ENDS
END START