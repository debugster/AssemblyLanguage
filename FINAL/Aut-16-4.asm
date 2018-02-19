.model samll
.stack 100h
.data
A db ?
B db ?
SUM db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1h
    int 21h
    mov bh, al
    
    sub bh, 32
    
    mov ah, 2h
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h  
    
    mov dl, bh
    int 21h
    
    mov ah, 2h
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h 
    
    lea dx, text2
    mov ah, 9h 
    int 21h 
    
    mov ah, 1h
    int 21h
    mov bh, al
    
    add bh, 32
    
    mov ah, 2h
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h  
    
    mov dl, bh
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
