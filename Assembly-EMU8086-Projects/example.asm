.MODEL SMALL
.STACK 100H    

.DATA  
    ARR DB 49,50,51 
.CODE ;

 MAIN PROC ; 
    
    MOV AX, @DATA
    MOV DS , AX 

    MOV CX, 3
    
    MOV BH, SI[2]
 
    MOV AH, 2
    MOV DL, BH         
    INT 21H 
                 
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN
