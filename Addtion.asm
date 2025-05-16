.model small
.stack 100h
.data
msg db 'Enter your first value= $'
msg1 db 0ah,0dh,'Enter Second value= $'
msg2 db 0ah,0dh,'A+B= $'
sum db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    sub al,'0'
    mov bl,al
    
    lea dx,msg1
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    sub al,'0'
    add bl,al
    
    mov sum,bl
    
    lea dx,msg2
    mov ah,09h
    int 21h
    
    mov dl,sum
    add dl, '0'
    mov ah,02h
    int 21h
     
    mov ah,04ch
    int 21h
    
    main endp
end main
    
    
    
