
org 100h
.model small
.data
.code

mov cx,5

ll:

mov bx,cx

l2:

mov dl,"5"
mov ah,02
int 21h

loop l2

mov dl,0Ah
mov ah,02
int 21h 



mov dl,0Dh
mov ah,02
int 21h  

mov cx,bx


loop ll


ret    
