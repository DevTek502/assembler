; encargado de establecer un tamaño de memoria
.model small

; directiva para proporcionar al compilador el tamaño de la pila
.stack

; segemoto para espacios de memoria
.data

    ; declaracion de la variable 'hello world!!!' 
	msg  db 'hello world!!! ',10,13,'$'

; segemento de codigo    
.code

	; procedimiento principal main
    main PROC

        ; carga en memoria las variables del semento de datos
        MOV ax, @data
        MOV ds, ax

        ; impresion por pantalla
        mov dx, offset msg
        mov ah, 9
        int 21h  

        ; directiva para finalizar el segmento de codigo
        .exit

    ; marca el final de un procedimiento
    main ENDP

; indica el punto de entrada y tambien en final del archivo
end main