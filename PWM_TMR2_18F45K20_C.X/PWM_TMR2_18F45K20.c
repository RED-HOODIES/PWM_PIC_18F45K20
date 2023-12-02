/* 
 * File:        Config.h
 * Author:      Juan David Bello Rodriguez 20211005028
 * INSTITUTION: Universidad Distrital Francisco José de Caldas
 *
 * Created on 28 de septiembre de 2023, 11:05 AM
 */


//Versión 1 C Está prende un led con delay
//Versión 2 

//Pasos para PWM
//1. CCPX (RC2) -> out
//2. PER =100
//3. CCPX con PWM
//4.B1,B0 <- 0,0  
//5 TMR2 : IF=0, ON, Valor PSC
//6 Habilitar PWM Manual o interrupciones y cambar duty con desbordamiento.

//Si el duty es 100 se borra el duty
//El duty se conecta al RC2 que es la salida del PWM



#include "Setup.h"
#include "Config.h"

//#include <Xc.h>

void main(void){
    
    Setup();
    
    while(1){
       
    }
} 

