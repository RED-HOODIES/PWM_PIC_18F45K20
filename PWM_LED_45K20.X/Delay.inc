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
;		CONFIGURACIÓN PROGRAMAS DELAY 
;------------------------------------------------------------------------------- 
    #define load_d1   0x11
Delay_ram udata	    ;configura la posición de almacenamiento de registros según convenga
d1 res 1	    ; Reseva 1 byte a el registro d1
d2 res 1	    ; Reseva 1 byte a el registro d2
d3 res 1	    ; Reseva 1 byte a el registro d3

