/* 
 * File:        Config.h
 * Author:      Juan David Bello Rodriguez 20211005028
 * INSTITUTION: Universidad Distrital Francisco José de Caldas
 *
 * Created on 28 de septiembre de 2023, 11:05 AM
 */

#include <xc.h>
#define _XTAL_FREQ 16000000
#define LED LATCbits.LATC4
#define tLED TRISCbits.TRISC4 
#define BTG(R,b) R^=1<<b

void SetupOscilador(void);
void Setupports(void);
void Setupint(void);
void SetupINTTMR2(void);
void SetupPWM(void);
void __interrupt(high_priority) H_ISR(void);
void Setup(void);


#ifndef SETUP_H
#define	SETUP_H

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* SETUP_H */



