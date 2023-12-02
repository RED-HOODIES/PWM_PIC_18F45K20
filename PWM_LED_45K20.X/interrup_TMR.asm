;******************************************************************************
;                                                                             *
;    Filename:        PWM 18f45k20                                        *
;    Date:             03/10/2023                                             *
;    File Version:      Versión 1                                            *
;    Author:          Oscar David Poblador Parra			      *
;    Código:	      20211005116					      *
;    Company:        Universidad Distrital FJC                                *
;                                                                             *
;******************************************************************************
    
;-------------------------------------------------------------------------------
;		CONFIGURACIÓN Y RUTINAS interrupciones por TMR
;------------------------------------------------------------------------------- 
#include "Inte_TMR.inc"
    extern COUNTER1
    extern COUNTER2
    extern COUNTER3
 
interrup_TMR code

    
config_inte_TMR0:
	global config_inte_TMR0	    ;Declara la funcion como global para ser utilizada
	
	BCF INTCON,TMR0IF ; Deshabilitar bandera 

	if 0
	    BSF T0CON,TMR0ON	    ; Habilita/Enciende TMR0 7 BIT
	    BCF T0CON,T08BIT	    ; Elige operación a 16bits 6 bit
	    BCF T0CON,T0CS	    ; Elige el conteo como ciclos de instrucción
	    BCF T0CON,T0SE	    ; Elige funcionamiento en flanco de bajada
	    ;T0CON,T0PS '00' PARA PRESCALER DE 1:2 
	endif
	
	movlw b'00000000'	    ; Carga el arreglo de bits al registro
	movwf T0CON
	BCF INTCON,TMR0IE ; Habilitar timmer 0 para interrumpir

	return
config_inte_TMR2:
    
    global config_inte_TMR2
    
	BCF PIR1,TMR2IF		    ;Desabilita bandera
	BSF PIE1, TMR2IE	    ;Habilita timer 2
	BSF IPR1, TMR2IP	    ;Alta prioridad
	movlw b'00000110'
	movwf T2CON
	MOVLW .249
	MOVWF PR2
	
    return
    
interrup_TMR2:
	global interrup_TMR2
	BCF PIR1,TMR2IF		    ; Desabilita bandera
	DECFSZ COUNTER1		    ; Decrementa contador de 122 muestras
	bra subida		    ; Realiza proceso de subida
	movlw .1		    ; Asegura el salto del contador cuando se decremente y sea = 0
	movwf COUNTER1		    ; Carga 1 en el contador
	DECFSZ COUNTER2		    ; Drementa contador de 121 muestras de subida
	bra bajada		    ; Realiza proceso de bajada
	movlw .123		    ; Reinicia contador muestras subida
	movwf COUNTER1		    ; Carga 123 en contador
	movlw .122		    ; Reinicia contador muestras bajada
	movwf COUNTER2		    ; Carga 122 en contador
	movlw .247		    ; Reinicia ancho de pulso
	movwf CCPR1L		    ; Carga el mínimo de ancho de pulso
	return

subida:
	decfsz COUNTER3		    ; Decrementa contador de iteraciones de suma (2 iteraciones)
	bra aux			    ; Realiza la suma ascendente
	movlw .3		    ; Reinicia contador de iteraciones
	movwf COUNTER3		    ; Carga 3 en el contador
	return
aux:
	decf CCPR1L		    ; Aumenta el ancho del pulso
	bra subida		    ; Hace iteración
bajada:
	decfsz COUNTER3		    ; Decrementa contador de iteraciones de resta (2 iteraciones)
	bra aux2		    ; Realiza la resta descendente
	movlw .3		    ; Reinicia contador de iteraciones
	movwf COUNTER3		    ; Carga 3 en el contador
	return
aux2:
	incf CCPR1L		    ; Disminuye el ancho del pulso
	bra bajada		    ; Hcae iteración

	
	


	
	END


