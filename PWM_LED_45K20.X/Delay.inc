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
;		CONFIGURACI�N PROGRAMAS DELAY 
;------------------------------------------------------------------------------- 
    #define load_d1   0x11
Delay_ram udata	    ;configura la posici�n de almacenamiento de registros seg�n convenga
d1 res 1	    ; Reseva 1 byte a el registro d1
d2 res 1	    ; Reseva 1 byte a el registro d2
d3 res 1	    ; Reseva 1 byte a el registro d3

