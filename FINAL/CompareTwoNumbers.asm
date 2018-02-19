.model samll
.stack 100h
.data  
text1 db "Enter first number: $"
text2 db 0ah, 0dh, "Enter second number: $" 
text3 db 0ah, 0dh, "Largest = $"
A db ?
B db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, text1
    mov ah, 9h
    int 21h
    
    mov ah, 1h
    int 21h 
    mov bh, al 
    
    lea dx, text2
    mov ah, 9h
    int 21h
    
    mov ah, 1h
    int 21h 
    mov bl, al
    
    lea dx, text3
    mov ah, 9h
    int 21h
    
    cmp bh, bl
    jg level1
    jmp level2
    
    level1:
    mov ah, 2h
    mov dl, bh
    int 21h
    jmp exit
    
    level2:
    mov ah, 2h
    mov dl, bl
    int 21h
    jmp exit     
         
    exit:
    mov ah, 4ch
    int 21h
    
    main endp
end main
