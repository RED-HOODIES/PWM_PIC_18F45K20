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
;		CONFIGURACI�N GENERAL DEL PROYECTO 
;------------------------------------------------------------------------------- 
    
#include "Pines_config_18f45k20.inc"  ; Incluye configuraci�n de pines
#include "Macros.inc"		  ; Incluye las Macros disponibles  
#include "Vectores_config.inc"	  ; Inclye el archivo declaraci�n de vectores de programa
#INCLUDE "P18F45K20.INC"          ; processor specific variable definitions
#define T0PLD (0EC78h) ;@8MHz produce 0.5ms a un prescaler 1:2

