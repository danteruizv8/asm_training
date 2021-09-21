;Ejercicio    16:
        ;Realizar    un programa que dada una cadena con terminacion
        ;nula    guardada en VECT, la pase a
        ;mayuscula,    guardando el resultado en el mismo vector VECT.
        ;nota:la    cadena de entrada solo contendr´a
        ;valores    alfab´eticos o espacio en blanco (´a’- ’z’, ´A’- ’Z’).

VECT        DCB        'p','A','l','a','b','r','a', 0

        LDR        R1,=VECT
        BL        LOOP
        END


LOOP        LDRB        R3, [R1], #1
        CMP        R3,#0
        BEQ        SALIR
        CMP        R3,#'a'
        SUBGE    R3,R3,#0X20
        STRBGE    R3, [R1]
        B        LOOP
SALIR    MOV        PC,LR
