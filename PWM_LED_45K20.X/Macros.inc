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
;		CONFIGURACI�N Y USO MACROS
;-------------------------------------------------------------------------------   
LOAD16B MACRO HL,H,L
	    movlw   HL>>8
	    movwf   H
	    movlw   HL&0FFh
	    movwf   L
	ENDM 