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
    mov A, al
    int 21h
    mov B, al
    
    mov SUM, A
    add SUM, B
    
    mov ah, 2h
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h  
    
    mov ah, 2h
    mov dl, SUM
    int 21h  
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
