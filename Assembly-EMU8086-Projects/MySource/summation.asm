
.MODEL SMALL
.STACK

.DATA

   I DW 1
   ADDs DW ?


.CODE


MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    
    MOV CX,9
    MOV BX,0
    
    
    SUM:
    
        ADD BX, I
        INC I
        LOOP SUM
        
        MOV ADDs,BX
        MOV BL,02
        MUL BX
        


MAIN ENDP
END MAIN
RET