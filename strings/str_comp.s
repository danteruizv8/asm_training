		;		COMPARE DOS CADENAS DE CARACTERES CARGADAS EN MEMORIA
		
VECT1	DCD		'A','B','C','D','E','F',0
VECT2	DCD		'A','B','C','D','E','F',0
		
		MOV		R12, #VECT1
		MOV		R1, #VECT2
		
		BL		COMPARAR
		END
		
COMPARAR
		STMFD	SP!, {R4}
		MOV		R4, #0
WHILE
		
		LDR		R2, [R12], #4
		LDR		R3, [R1], #4
		CMP		R3, R2
		MOVNE	R0, #0
		MOVEQ	R0, #1
		BNE		SALIR
		CMP		R2, #0
		BEQ		SALIR
		B		WHILE
SALIR
		LDMFD	SP!, {R4}
		MOV		PC, LR