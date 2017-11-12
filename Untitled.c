#include "htc.h"
#include "pic16f877.h"

#define _XTAL_FREQ 8000000 //8 Mhz

#define boolean int
#define true 1
#define false 0

#define B  PORTBbits.RB0
#define B1 PORTBbits.RB1

#define A0 PORTAbits.RA0
#define A1 PORTAbits.RA1
#define A2 PORTAbits.RA2
#define A3 PORTAbits.RA3
#define A4 PORTAbits.RA4


static boolean Param6isAlive;
static boolean Param11isAlive;
static boolean TimerMode;
static boolean RelayPowerMode;

static int Count = 0;

static ButtonOnOF(){

	if(A0 == 0){
		if(TimerMode){
		__delay_ms(2000);
			B=1;
		}else B=1;	
     }
	if(A1 == 0)
         	B=0;
}

static void BooleanFlagsControl(){	
	if(A2 == 0){
		Param6isAlive=false;
		Param11isAlive=true;
	}else{
    	Param6isAlive=true;
		Param11isAlive=false;
	}
	if(A3 == 0)
		TimerMode=true;
 	else TimerMode=false;
	if(A4 == 0)
		RelayPowerMode=true;
 	else RelayPowerMode=false;
}		


static void Param6();
static void Param11(); 
static void Param21();


int main(){

ADCON1 = 7; //bolor mutqer@ tvayin
TRISB = 0b11111100;
PORTB=0;

TRISA = 0b00000000;
PORTA = 0b11111111;
T1CON = 1;

while(1){
	BooleanFlagsControl();
	Param6();
	Param11();
	Param21();
	}
}

static void Param6(){
 	if(Param6isAlive)
		ButtonOnOF(); 
}

static void Param11() {
  if(Param11isAlive){
	while (! TMR1IF);
	TMR1IF = 0;
	Count ++;
	if (Count == 100)
	{	
	
	Count = 0;
	ButtonOnOF();
	TMR1IF = 0;
	}
   }
}

static void Param21(){
 if(RelayPowerMode){
	if(A4 == 0){
		B1 = 1;
	}else B1 = 0;
 }
}