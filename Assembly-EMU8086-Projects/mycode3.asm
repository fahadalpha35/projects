.MODEL SMALL          
.STACK 100H           

.DATA
MSG DW 'ABC$'          
.CODE                  

MAIN PROC             
    MOV AX, @DATA
    MOV DS, AX         
    
    MOV AH, 9          
    LEA DX, MSG        
    INT 21H            
    
    MOV BL, '2'        
    MOV DL, BL         
    MOV BH, '3'       
    INC DL             
    INC DL             
    
    MOV AH, 2         
    INT 21H           
    
    MOV AX, 4CH        
    INT 21H
    MAIN ENDP
END MAIN               