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
;	        DECLARACI�N DE VECTORES DE PROGRAMA
;------------------------------------------------------------------------------
#define reset_vector		 0x0000 ; Vector de procesador de reset 
#define alta_interrup_vector	 0x0008 ; Vector de interrupciones de alta prioridad 
#define baja_interrup_vector	 0x0018 ; Vector de interrupciones de baja prioridad 


