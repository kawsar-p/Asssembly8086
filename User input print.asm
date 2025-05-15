.model small
.stack 100h
.data
msg db 'Enter your value: $'
msg1 db 00dh,0ah,'The Results: $'
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
    
    lea dx,msg1
    mov ah,09h
    int 21h
    
    mov dl,bl
    mov ah,02h
    int 21h
    
    
    mov ah,04ch
    int 21h
    
    main endp
end main
