.model small
.stack 100h 
.code
main proc  
    jmp userLevel
    
    userLevel:
    mov cx, 80
    mov ah, 2h
    mov dl, '*'
    print:
    int 21h  
    loop print
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
