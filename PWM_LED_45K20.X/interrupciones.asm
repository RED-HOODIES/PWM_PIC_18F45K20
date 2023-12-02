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
;		CONFIGURACIÓN Y USO INTERRUPCIONES
;-------------------------------------------------------------------------------
    
#include "Interrupciones.inc"  ; Incluye archivo de interrupciones  
	
 
    extern interrup_TMR2
      
;------------------------------------------------------------------------------
; HIGH PRIORITY INTERRUPT VECTOR
;------------------------------------------------------------------------------

ISRH      code     alta_interrup_vector ; De plantilla: ISRH      ORG     0x0008

          ; Run the High Priority Interrupt Service Routine
          GOTO    HIGH_ISR
	  
;------------------------------------------------------------------------------
; LOW PRIORITY INTERRUPT VECTOR
;------------------------------------------------------------------------------

ISRL      code     baja_interrup_vector ; De plantilla: ISRL      ORG     0x0018
          
          ; Run the High Priority Interrupt Service Routine
          GOTO    LOW_ISR  
;------------------------------------------------------------------------------
interrupts_code		code           ; Permite diferenciar código para el LINKER
		
;------------------------------------------------------------------------------
; RUTINA INTERRUPCIONES DE ALTA PRIORIDAD
;------------------------------------------------------------------------------

HIGH_ISR  
	  BTFSC PIR1,TMR2IF	    ; Si no hay bandera de TMR2 (Hay overflow) se salta   
	  call interrup_TMR2	    ; Realiza interrupción por TMR1
EXIT_ISR:
	global EXIT_ISR
          RETFIE  FAST		    ; Retorna y habilita interrpciones globales (Return + set GIE)
	  
;------------------------------------------------------------------------------
; RUTINA INTERRUPCIONES DE BAJA PRIORIDAD 
;------------------------------------------------------------------------------

LOW_ISR
          ; Context Saving for Low ISR
          MOVWF   W_TEMP              ; save W register
          MOVFF   STATUS, STATUS_TEMP ; save status register
          MOVFF   BSR, BSR_TEMP       ; save bankselect register

          ; Insert Low Priority ISR Here

          ; Context Saving for Low ISR
          MOVFF   BSR_TEMP, BSR       ; restore bankselect register
          MOVF    W_TEMP, W           ; restore W register
          MOVFF   STATUS_TEMP, STATUS ; restore status register
          RETFIE
;------------------------------------------------------------------------------
;Para poder finalizar el archivo asm
ISRconfig:

	      return

      END