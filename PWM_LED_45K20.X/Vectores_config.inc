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
    
;------------------------------------------------------------------------------
;	        DECLARACIÓN DE VECTORES DE PROGRAMA
;------------------------------------------------------------------------------
#define reset_vector		 0x0000 ; Vector de procesador de reset 
#define alta_interrup_vector	 0x0008 ; Vector de interrupciones de alta prioridad 
#define baja_interrup_vector	 0x0018 ; Vector de interrupciones de baja prioridad 


