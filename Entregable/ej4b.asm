;Escribir otra funcion modArray que toma el mismo array del punto anterior y modifica sus valores, dividiendo por 2 y restando 2 a los multiplos de 4 y multiplicando por 7 y sumando uno al resto.
;	modArray(*p,size)
;		for f=0; f<size; f++
;			if (p[f] es mult4) p[f]=p[f]/2 - 2
;			else p[f]=p[f]*7+1

main:
	SET R7, 0xFF	;stack
	SET R0, p		;p
	SET R1, 0x10	;size

	CALL |R7|, modarray

halt:
	JMP halt

modarray:
	loop:	
		LOAD R4,[R0];    cargo el primer numero del array en R4 
		SUB R1, R3
		CMP R1, R2
		JN fin
		PUSH [R7], R4 
		AND R4, R6;      mascara entre 000011 y R4
		CMP R4, R2
		JZ es_multiplo ; si es 0, es porque los ultimos dos bits eran 0, osea multilos de 4 
	 
	no_multiplo:
		POP [R7], R4 
   		MOV R5, R4       ; Carga el número actual en R5, para no perder su valor 
  		SHL R4, 3        ; Multiplica R4 por 8 (desplazamiento a la izquierda)
		SUB R4, R5       ; Resta R5 a R4
    	ADD R4, R3       ; Suma 1 a R4
    	JMP actualizar_numero

	es_multiplo: 
		POP [R7], R4 
		SHRA R4, 1        ; Realiza un desplazamiento a la derecha para verificar si los últimos dos bits son cero
   		SUB R4, R3       ; Resta 1 a R4
    	SUB R4, R3       ; Resta 1 nuevamente a R4
    	JMP actualizar_numero

	actualizar_numero:
   		STR [R0], R4   ; Almacena el valor actualizado de R4 en el arreglo
    	ADD R0, R3       ; Avanza al siguiente número en el arreglo
		JMP loop
			
	fin:
		RET|R7|


p:
DB 0x01
DB 0x02
DB 0x04
DB 0x08
DB 0x03
DB 0x03
DB 0xA1
DB 0xC0
DB 0xFF
DB 0x40
DB 0x55
DB 0xCC
DB 0xBD
DB 0x45
DB 0x9A
DB 0xEE
