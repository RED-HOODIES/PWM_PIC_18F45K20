;******************************************************************************
;                                                                             *
;    Filename:        PWM 18f45k20                                        *
;    Date:             03/10/2023                                             *
;    File Version:      Versi�n 1                                            *
;    Author:          Oscar David Poblador Parra			      *
;    C�digo:	      20211005116					      *
;    Company:        Universidad Distrital FJC                                *
;                                                                             *
;******************************************************************************
    
;-------------------------------------------------------------------------------
;		CONFIGURACI�N Y RUTINAS interrupciones por perif�ricos
;------------------------------------------------------------------------------- 
#include "Inte_periferico.inc"
    
    extern EXIT_ISR


interrup_periferi code

    
config_inte_boton:
	global config_inte_boton  ;Declara la funcion como global para ser utilizada
	
	BCF INTCON,INT0IF   ; Borra bandera
	BSF INTCON,INT0IE   ; Habilita ENABLE
	BCF INTCON2,RBPU    ; Pone el pull up (logica negativa)	
	BCF INTCON2,INTEDG0 ; Flanco de subida	
    return

Interrup_boton:
	global Interrup_boton	    ;Declara la funcion como global para ser utilizada
	

    return
	
	
	END