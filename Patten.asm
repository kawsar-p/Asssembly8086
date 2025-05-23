.model small
.stack 100h
.data
    pattern db '*********', 0Dh, 0Ah, '$'
    input_msg db 'Enter three characters: $'
    center_row db '***'
    char1 db ?
    char2 db ?
    char3 db ?
    db '***', 0Dh, 0Ah, '$'
    
.code
main proc
    mov ax, @data
    mov ds, ax

 mov ah, 09h
    lea dx, input_msg
    int 21h

 mov ah, 01h
 int 21h
    mov char1, al
int 21h
    mov char2, al
int 21h
    mov char3, al

 mov ah, 02h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h

 mov cx, 6
print_top:
    mov ah, 09h
    lea dx, pattern
    int 21h
    loop print_top

mov ah, 09h
    lea dx, center_row
    int 21h

mov cx, 6
print_bottom:
    mov ah, 09h
    lea dx, pattern
    int 21h
    loop print_bottom

 mov ah, 4Ch
    int 21h
main endp
end main
