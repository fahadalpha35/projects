.MODEL SMALL          
.STACK 100H           

.DATA
MSG DW 'Hello World$'          
.CODE                  

MAIN PROC             
    MOV AX, @DATA
    MOV DS, AX         
    
    MOV AH, 9          
    LEA DX, MSG        
    INT 21H            
             
    MOV AX, 4CH        
    INT 21H
    MAIN ENDP
END MAIN               