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
    
#include "Delay.inc"
 
Delay_ code	    ; Permite diferenciar c�digo para el LINKER

    global Delay100		; Define nombre global para implementaci�n
 
Delay100
	
	
	; Delay = 0.1 seconds
; Clock frequency = 8 MHz

; Actual delay = 0.1 seconds = 200000 cycles
; Error = 0 %


			;199998 cycles
	movlw	0x3F
	movwf	d1
	movlw	0x9D
	movwf	d2
Delay_0
	decfsz	d1, f
	goto	$+3*2
	decfsz	d2, f
	goto	Delay_0

			;2 cycles
	goto	$+1*4
			;4 cycles (including call)
    return
	
	END