.MODEL SMALL
.STACK 100H    

.DATA  
    A DB 1
    B DB 2 
.CODE ;

 MAIN PROC ; 
    
    MOV AX, @DATA
    MOV DS , AX 
    
    MOV BL, A
    ADD BL, B
 
    MOV AH, 2
    MOV DL, BL         
    INT 21H 
                 
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN 