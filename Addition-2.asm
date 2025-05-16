.model small
.stack 100h
.data

a db 2
b db 4
msg db 'Result: $'
sum db ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,a
    add al,b
    mov sum,al
    
    lea dx,msg
    mov ah,09h
    int 21h
    
    mov dl,sum
    add dl,'0'
    mov ah,02h
    int 21h
    
    mov ah,04ch
    int 21h
    
    main endp
end main
    
    
    
