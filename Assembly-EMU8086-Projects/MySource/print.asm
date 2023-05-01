.MODEL SMALL 
.STACK 100H 
.DATA 

;The string to be printed   
STRING DB '1. I Love Bangladesh', '$'
STRING2 DB '2. I Love CUB', '$'
STRING3 DB '3. I Love Assembly Programming', '$'
STRING4 DB '4. Please Pray For Me', '$'
STRING5 DB '5. Thank you Sir...', '$'
  
.CODE 
MAIN PROC FAR 
 MOV AX,@DATA 
 MOV DS,AX 
 
 ; load address of the string  
 LEA DX,STRING 
 ;output the string
 ;loaded in dx 
 MOV AH,09H
 INT 21H
 ;Next line
 MOV DX,10
 MOV AH,2
 INT 21H
 MOV DX,13
 INT 21H 
 
 LEA DX,STRING2 
 MOV AH,09H
 INT 21H
 ;Next line
 MOV DX,10
 MOV AH,2
 INT 21H
 MOV DX,13
 INT 21H  
 
 LEA DX,STRING3 
 MOV AH,09H
 INT 21H  
 MOV DX,10
 MOV AH,2
 INT 21H
 MOV DX,13
 INT 21H 
 
 LEA DX,STRING4 
 MOV AH,09H
 INT 21H
 MOV DX,10
 MOV AH,2
 INT 21H
 MOV DX,13
 INT 21H 
 
 LEA DX,STRING5 
 MOV AH,09H
 INT 21H
 MOV DX,10
 MOV AH,2
 INT 21H
 MOV DX,13
 INT 21H 
 
 ;interrupt to exit 
 MOV AH,4CH
 INT 21H 
  
MAIN ENDP 
END MAIN