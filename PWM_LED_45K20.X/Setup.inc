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
    
;------------------------------------------------------------------------------
;
; AGREGAR COMO EXTERN LAS RUTINAS QUE REQUIERAN VARIABLES EJE EXTERN DELAY_05S
;
;------------------------------------------------------------------------------
    
    extern Delay100
    extern Set_up


sampleram udata 0x60 ;Da la direcci�n de memoria a partir de la que se alamcenan datos
MYVAR1 res 1 ; Reseva 1 byte a la variable MYVAR1. Parte de ( 0x60 ) 
MYVAR2 res 1 ; Reseva 1 byte a la variable MYVAR2. Parte de ( 0x61 )
MYVAR3 res 1 ; Reseva 1 byte a la variable MYVAR3. Parte de ( 0x62 )

;------------------------------------------------------------------------------
; EEPROM INITIALIZATION
;
; The 18F45K20 has non-volatile EEPROM starting at 0xF00000
; 
;------------------------------------------------------------------------------

DATAEE    ORG  0xF00000 ; Starting address for EEPROM for 18F45K20

    DE    "MCHP"        ; Place 'M' 'C' 'H' 'P' at address 0,1,2,3
;------------------------------------------------------------------------------
