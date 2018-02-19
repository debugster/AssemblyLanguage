.model samll
.stack 100h
.data
text1 db "I am proud to read at IIUC.$"  
text2 db "I love stydying assembly language.$"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, text1
    mov ah, 9h
    int 21h 
    
    mov ah, 2h
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    lea dx, text2
    mov ah, 9h 
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
