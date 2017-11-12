opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F877
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_BooleanFlagsControl
	FNCALL	_main,_Param6
	FNCALL	_main,_Param11
	FNCALL	_main,_Param21
	FNCALL	_Param11,_ButtonOnOF
	FNCALL	_Param6,_ButtonOnOF
	FNROOT	_main
	global	_Count
	global	_Param11isAlive
	global	_Param6isAlive
	global	_RelayPowerMode
	global	_TimerMode
	global	_PORTA
psect	text118,local,class=CODE,delta=2
global __ptext118
__ptext118:
_PORTA	set	5
	global	_PORTAbits
_PORTAbits	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTBbits
_PORTBbits	set	6
	global	_T1CON
_T1CON	set	16
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_TMR1IF
_TMR1IF	set	96
	global	_ADCON1
_ADCON1	set	159
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"Example.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_Count:
       ds      2

_Param11isAlive:
       ds      2

_Param6isAlive:
       ds      2

_RelayPowerMode:
       ds      2

_TimerMode:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
	clrf	((__pbssCOMMON)+6)&07Fh
	clrf	((__pbssCOMMON)+7)&07Fh
	clrf	((__pbssCOMMON)+8)&07Fh
	clrf	((__pbssCOMMON)+9)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Param6
?_Param6:	; 0 bytes @ 0x0
	global	?_Param11
?_Param11:	; 0 bytes @ 0x0
	global	?_Param21
?_Param21:	; 0 bytes @ 0x0
	global	??_Param21
??_Param21:	; 0 bytes @ 0x0
	global	?_ButtonOnOF
?_ButtonOnOF:	; 0 bytes @ 0x0
	global	??_ButtonOnOF
??_ButtonOnOF:	; 0 bytes @ 0x0
	global	?_BooleanFlagsControl
?_BooleanFlagsControl:	; 0 bytes @ 0x0
	global	??_BooleanFlagsControl
??_BooleanFlagsControl:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	3
	global	??_Param6
??_Param6:	; 0 bytes @ 0x3
	global	??_Param11
??_Param11:	; 0 bytes @ 0x3
	global	??_main
??_main:	; 0 bytes @ 0x3
;;Data sizes: Strings 0, constant 0, data 0, bss 10, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3      13
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _Param11->_ButtonOnOF
;;   _Param6->_ButtonOnOF
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0       0
;;                _BooleanFlagsControl
;;                             _Param6
;;                            _Param11
;;                            _Param21
;; ---------------------------------------------------------------------------------
;; (1) _Param11                                              0     0      0       0
;;                         _ButtonOnOF
;; ---------------------------------------------------------------------------------
;; (1) _Param6                                               0     0      0       0
;;                         _ButtonOnOF
;; ---------------------------------------------------------------------------------
;; (2) _ButtonOnOF                                           3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _Param21                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _BooleanFlagsControl                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _BooleanFlagsControl
;;   _Param6
;;     _ButtonOnOF
;;   _Param11
;;     _ButtonOnOF
;;   _Param21
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       D       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       F      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 85 in file "C:\Users\Isahak\Desktop\MPLAB-master\Source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  674[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_BooleanFlagsControl
;;		_Param6
;;		_Param11
;;		_Param21
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Isahak\Desktop\MPLAB-master\Source.c"
	line	85
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	87
	
l2615:	
;Source.c: 87: ADCON1 = 7;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	88
;Source.c: 88: T1CON = 1;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	90
;Source.c: 90: TRISB = 0b11111100;
	movlw	(0FCh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	91
	
l2617:	
;Source.c: 91: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	93
	
l2619:	
;Source.c: 93: TRISA = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	94
;Source.c: 94: PORTA = 0b11111111;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	l2621
	line	96
;Source.c: 96: while(1){
	
l675:	
	line	97
	
l2621:	
;Source.c: 97: BooleanFlagsControl();
	fcall	_BooleanFlagsControl
	line	98
	
l2623:	
;Source.c: 98: Param6();
	fcall	_Param6
	line	99
	
l2625:	
;Source.c: 99: Param11();
	fcall	_Param11
	line	100
	
l2627:	
;Source.c: 100: Param21();
	fcall	_Param21
	goto	l2621
	line	101
	
l676:	
	line	96
	goto	l2621
	
l677:	
	line	102
	
l678:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_Param11
psect	text119,local,class=CODE,delta=2
global __ptext119
__ptext119:

;; *************** function _Param11 *****************
;; Defined at:
;;		line 109 in file "C:\Users\Isahak\Desktop\MPLAB-master\Source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ButtonOnOF
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text119
	file	"C:\Users\Isahak\Desktop\MPLAB-master\Source.c"
	line	109
	global	__size_of_Param11
	__size_of_Param11	equ	__end_of_Param11-_Param11
	
_Param11:	
	opt	stack 6
; Regs used in _Param11: [wreg+status,2+status,0+pclath+cstack]
	line	110
	
l2603:	
;Source.c: 110: if(Param11isAlive){
	movf	(_Param11isAlive+1),w
	iorwf	(_Param11isAlive),w
	skipnz
	goto	u2311
	goto	u2310
u2311:
	goto	l690
u2310:
	goto	l686
	line	111
	
l2605:	
;Source.c: 111: while (! TMR1IF);
	goto	l686
	
l687:	
	
l686:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l686
u2320:
	
l688:	
	line	112
;Source.c: 112: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	113
	
l2607:	
;Source.c: 113: Count ++;
	movlw	low(01h)
	addwf	(_Count),f
	skipnc
	incf	(_Count+1),f
	movlw	high(01h)
	addwf	(_Count+1),f
	line	114
;Source.c: 114: if (Count == 100){
	movlw	064h
	xorwf	(_Count),w
	iorwf	(_Count+1),w
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l690
u2330:
	line	115
	
l2609:	
;Source.c: 115: Count = 0;
	clrf	(_Count)
	clrf	(_Count+1)
	line	116
	
l2611:	
;Source.c: 116: ButtonOnOF();
	fcall	_ButtonOnOF
	line	117
	
l2613:	
;Source.c: 117: TMR1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	goto	l690
	line	118
	
l689:	
	goto	l690
	line	119
	
l685:	
	line	120
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_Param11
	__end_of_Param11:
;; =============== function _Param11 ends ============

	signat	_Param11,88
	global	_Param6
psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:

;; *************** function _Param6 *****************
;; Defined at:
;;		line 104 in file "C:\Users\Isahak\Desktop\MPLAB-master\Source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ButtonOnOF
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text120
	file	"C:\Users\Isahak\Desktop\MPLAB-master\Source.c"
	line	104
	global	__size_of_Param6
	__size_of_Param6	equ	__end_of_Param6-_Param6
	
_Param6:	
	opt	stack 6
; Regs used in _Param6: [wreg+status,2+status,0+pclath+cstack]
	line	105
	
l2599:	
;Source.c: 105: if(Param6isAlive)
	movf	(_Param6isAlive+1),w
	iorwf	(_Param6isAlive),w
	skipnz
	goto	u2301
	goto	u2300
u2301:
	goto	l682
u2300:
	line	106
	
l2601:	
;Source.c: 106: ButtonOnOF();
	fcall	_ButtonOnOF
	goto	l682
	
l681:	
	line	107
	
l682:	
	return
	opt stack 0
GLOBAL	__end_of_Param6
	__end_of_Param6:
;; =============== function _Param6 ends ============

	signat	_Param6,88
	global	_ButtonOnOF
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:

;; *************** function _ButtonOnOF *****************
;; Defined at:
;;		line 37 in file "C:\Users\Isahak\Desktop\MPLAB-master\Source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Param6
;;		_Param11
;; This function uses a non-reentrant model
;;
psect	text121
	file	"C:\Users\Isahak\Desktop\MPLAB-master\Source.c"
	line	37
	global	__size_of_ButtonOnOF
	__size_of_ButtonOnOF	equ	__end_of_ButtonOnOF-_ButtonOnOF
	
_ButtonOnOF:	
	opt	stack 6
; Regs used in _ButtonOnOF: [wreg]
	line	38
	
l2589:	
;Source.c: 38: if(PORTAbits.RA0 == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(5),0	;volatile
	goto	u2271
	goto	u2270
u2271:
	goto	l659
u2270:
	line	39
	
l2591:	
;Source.c: 39: if(TimerMode){
	movf	(_TimerMode+1),w
	iorwf	(_TimerMode),w
	skipnz
	goto	u2281
	goto	u2280
u2281:
	goto	l660
u2280:
	line	40
	
l2593:	
;Source.c: 40: _delay((unsigned long)((2000)*(8000000/4000.0)));
	opt asmopt_off
movlw  21
movwf	((??_ButtonOnOF+0)+0+2),f
movlw	75
movwf	((??_ButtonOnOF+0)+0+1),f
	movlw	209
movwf	((??_ButtonOnOF+0)+0),f
u2347:
	decfsz	((??_ButtonOnOF+0)+0),f
	goto	u2347
	decfsz	((??_ButtonOnOF+0)+0+1),f
	goto	u2347
	decfsz	((??_ButtonOnOF+0)+0+2),f
	goto	u2347
	clrwdt
opt asmopt_on

	line	41
	
l2595:	
;Source.c: 41: PORTBbits.RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),0	;volatile
	line	42
;Source.c: 42: }else PORTBbits.RB0 = 1;
	goto	l659
	
l660:	
	bsf	(6),0	;volatile
	goto	l659
	
l661:	
	line	43
	
l659:	
	line	44
;Source.c: 43: }
;Source.c: 44: if(PORTAbits.RA1 == 0)
	btfsc	(5),1	;volatile
	goto	u2291
	goto	u2290
u2291:
	goto	l663
u2290:
	line	45
	
l2597:	
;Source.c: 45: PORTBbits.RB0 = 0;
	bcf	(6),0	;volatile
	goto	l663
	
l662:	
	line	46
	
l663:	
	return
	opt stack 0
GLOBAL	__end_of_ButtonOnOF
	__end_of_ButtonOnOF:
;; =============== function _ButtonOnOF ends ============

	signat	_ButtonOnOF,88
	global	_Param21
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:

;; *************** function _Param21 *****************
;; Defined at:
;;		line 122 in file "C:\Users\Isahak\Desktop\MPLAB-master\Source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text122
	file	"C:\Users\Isahak\Desktop\MPLAB-master\Source.c"
	line	122
	global	__size_of_Param21
	__size_of_Param21	equ	__end_of_Param21-_Param21
	
_Param21:	
	opt	stack 7
; Regs used in _Param21: [wreg]
	line	123
	
l1725:	
;Source.c: 123: if(RelayPowerMode){
	movf	(_RelayPowerMode+1),w
	iorwf	(_RelayPowerMode),w
	skipnz
	goto	u41
	goto	u40
u41:
	goto	l696
u40:
	line	124
	
l1727:	
;Source.c: 124: if(PORTAbits.RA4 == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(5),4	;volatile
	goto	u51
	goto	u50
u51:
	goto	l694
u50:
	line	125
	
l1729:	
;Source.c: 125: PORTBbits.RB1 = 1;
	bsf	(6),1	;volatile
	line	126
;Source.c: 126: }else PORTBbits.RB1 = 0;
	goto	l696
	
l694:	
	bcf	(6),1	;volatile
	goto	l696
	
l695:	
	goto	l696
	line	127
	
l693:	
	line	128
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_Param21
	__end_of_Param21:
;; =============== function _Param21 ends ============

	signat	_Param21,88
	global	_BooleanFlagsControl
psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:

;; *************** function _BooleanFlagsControl *****************
;; Defined at:
;;		line 51 in file "C:\Users\Isahak\Desktop\MPLAB-master\Source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text123
	file	"C:\Users\Isahak\Desktop\MPLAB-master\Source.c"
	line	51
	global	__size_of_BooleanFlagsControl
	__size_of_BooleanFlagsControl	equ	__end_of_BooleanFlagsControl-_BooleanFlagsControl
	
_BooleanFlagsControl:	
	opt	stack 7
; Regs used in _BooleanFlagsControl: [wreg+status,2]
	line	52
	
l1703:	
;Source.c: 52: if(PORTAbits.RA2 == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(5),2	;volatile
	goto	u11
	goto	u10
u11:
	goto	l1709
u10:
	line	53
	
l1705:	
;Source.c: 53: Param6isAlive=0;
	clrf	(_Param6isAlive)
	clrf	(_Param6isAlive+1)
	line	54
	
l1707:	
;Source.c: 54: Param11isAlive=1;
	movlw	low(01h)
	movwf	(_Param11isAlive)
	movlw	high(01h)
	movwf	((_Param11isAlive))+1
	line	55
;Source.c: 55: }else{
	goto	l1713
	
l666:	
	line	56
	
l1709:	
;Source.c: 56: Param6isAlive=1;
	movlw	low(01h)
	movwf	(_Param6isAlive)
	movlw	high(01h)
	movwf	((_Param6isAlive))+1
	line	57
	
l1711:	
;Source.c: 57: Param11isAlive=0;
	clrf	(_Param11isAlive)
	clrf	(_Param11isAlive+1)
	goto	l1713
	line	58
	
l667:	
	line	59
	
l1713:	
;Source.c: 58: }
;Source.c: 59: if(PORTAbits.RA3 == 0)
	btfsc	(5),3	;volatile
	goto	u21
	goto	u20
u21:
	goto	l1717
u20:
	line	60
	
l1715:	
;Source.c: 60: TimerMode=1;
	movlw	low(01h)
	movwf	(_TimerMode)
	movlw	high(01h)
	movwf	((_TimerMode))+1
	goto	l1719
	line	61
	
l668:	
	
l1717:	
;Source.c: 61: else TimerMode=0;
	clrf	(_TimerMode)
	clrf	(_TimerMode+1)
	goto	l1719
	
l669:	
	line	62
	
l1719:	
;Source.c: 62: if(PORTAbits.RA4 == 0)
	btfsc	(5),4	;volatile
	goto	u31
	goto	u30
u31:
	goto	l1723
u30:
	line	63
	
l1721:	
;Source.c: 63: RelayPowerMode=1;
	movlw	low(01h)
	movwf	(_RelayPowerMode)
	movlw	high(01h)
	movwf	((_RelayPowerMode))+1
	goto	l672
	line	64
	
l670:	
	
l1723:	
;Source.c: 64: else RelayPowerMode=0;
	clrf	(_RelayPowerMode)
	clrf	(_RelayPowerMode+1)
	goto	l672
	
l671:	
	line	65
	
l672:	
	return
	opt stack 0
GLOBAL	__end_of_BooleanFlagsControl
	__end_of_BooleanFlagsControl:
;; =============== function _BooleanFlagsControl ends ============

	signat	_BooleanFlagsControl,88
psect	text124,local,class=CODE,delta=2
global __ptext124
__ptext124:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
