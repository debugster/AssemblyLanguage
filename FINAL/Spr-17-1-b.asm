.model small
.stack 100h
.code
main proc
    mov cx, 26
    mov ah, 2h
    mov dl, 'A'
    
    print:
    int 21h
    inc dl
    mov bl, dl  
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, bl
    loop print
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
