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
;                                                                             *
;    Files Required: P18F45K20.INC					      *
;		     Macros.inc						      *
;		     Delay.inc						      *
;		     Config_general.inc					      *
;		     Inte_periferico.inc				      *
;		     Inte_TMR.inc					      *
;		     Setup.inc						      *
;		     Pines_config.inc					      *
;		     Vectores_config.inc				      *
;		     Macros.inc						      *
;		     Inte_PIC.inc					      *
;		     Interrupciones.inc				              *
;		     delay.asm					              *
;		     interrup_periferico.asm				      *
;		     interrup_TMR.asm					      *
;		     setup.asm					              *
;		     timer_18f45k20TEMP.asm				      *
;                                                                             *
;******************************************************************************
;                                                                             *
; Notes:     Control de conteos e interrupciones por TMR0 para el PIC 18f4520 *
;                                                                             *
;******************************************************************************
;                                                                             *
;    Revision History:                                                        *
;                                                                             *
;******************************************************************************
    #include "Config_general.inc"
    #include "Interno_PIC.inc"
    #include "Setup.inc"
    

;------------------------------------------------------------------------------
; RESET VECTOR
;------------------------------------------------------------------------------

RES_VECT  ORG     reset_vector            ; processor reset vector
          GOTO    main             ; go to beginning of program

;------------------------------------------------------------------------------
; MAIN PROGRAM
;------------------------------------------------------------------------------
maindata udata ; Da la direcci�n de memoria a partir de la que se alamcenan datos
;CONTROL_DELAY res 1   ; Reseva 1 byte a la variable conreb.  
	  
	  
	  
main_ code

;*********************************************************************
main:
	global main	    ; Define nombre global si se requiere en otro c�digo
	call Set_up         ; Llama a la etiqueta Set_up en el archivo setup.asm
	
loop:			
		bra loop
	BRA $
          END