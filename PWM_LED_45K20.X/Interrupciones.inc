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
;		CONFIGURACI�N INTERRUPCIONES 
;------------------------------------------------------------------------------- 
#INCLUDE "Config_general.inc"	;Incluye las configuraciones generales del proyecto
 
		
context_ram  udata ;configura la posici�n de almacenamiento de registros seg�n convenga
W_TEMP        res 1  ; Reseva 1 byte a el registro W_TEMP
STATUS_TEMP   res 1  ; Reseva 1 byte a el registro status 
BSR_TEMP      res 1  ; Reseva 1 byte a el registro bank select usado en interrupciones

		

