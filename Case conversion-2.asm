.model small
.stack 100h
.data

msg db 'Enter Lower case: $'  ;Lower case to Upper case
msg1 db 0ah,0dh,'The Upper case is: $' 

.code
main proc

mov ax,@data
mov ds,ax

lea dx,msg
mov ah,09h
int 21h

mov ah,01h
int 21h
mov bl,al

sub bl,32

lea dx,msg1
mov ah,09h
int 21h

mov dl,bl
mov ah,02h
int 21h

main endp
end main


