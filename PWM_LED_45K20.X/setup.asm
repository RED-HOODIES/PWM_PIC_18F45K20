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
;		CONFIGURACIÓN E IMPLEMENTACIÓN SET UP 
;------------------------------------------------------------------------------- 
      
#INCLUDE "Config_general.inc"    ;Incluye las configuraciones generales del proyecto

     extern config_inte_TMR2
     
Setup_ udata			 ; Da la dirección de memoria a partir de la que se alamcenan datos
COUNTER1 res 1
COUNTER2 res 1 
COUNTER3 res 1 
    global COUNTER1	 ; Declara la variable global 
    global COUNTER2
    global COUNTER3
 
SETUP_ code                      ; Permite distinguir programa para el LINKER

Set_up:
	global Set_up		 ; Referencia global de uso. Permite utilizar
	movlw .123		 ; Se inicia número muestras subida
	movwf COUNTER1		 ; Carga 123 en la variable 
	MOVLW .122		 ; Se inicia número muestras de bajada
	MOVWF COUNTER2		 ; Se carga 1222 en la variable
	MOVLW .3		 ; Se inicia iteración de suma (2 veces) 
	MOVWF COUNTER3		 ; Se carga 3 en la variable
OSCC:				 ; Configuración Oscilador interno
    
    MOVLW b'01011100'  		 ;Oscilador interno a 16MHz
    movwf OSCCON   


PWM_CONFIG:
	movlw 0Fh		; Carga el valor [1111]
	movwf CCP1CON		; Configura modod en PWM, salida simple y active-low, salida por P1A
	movlw .247		; Valor mínimo que se puede alcanzar en ancho de banda
	movwf CCPR1L		; Inicia el valor de ancho de banda
	
config_C:
    	;CLRF contreb ;inicia en 0
	CLRF PORTC       	; Limpia el registro de entrada 
	CLRF LATC		; Limpia el registro de salida
	MOVLW b'00000000'	; Habilita todos los puertos
	MOVWF TRISC		; Configura los tree state del puerto 
	
CONFIGURACION_INTERRUP:
	
	BSF INTCON,PEIE		; Habilita interrupciones por periféricos 
	BSF INTCON,GIE		; Habilita interrupciones globales
	call config_inte_TMR2
	
	RETURN
      END 

