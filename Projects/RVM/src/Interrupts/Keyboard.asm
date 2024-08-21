		ORG	$0300
		JMP	[Keyboard]
Flags:		EQU	#00
Accu:		EQU	#00
Stack:		EQU	#00
Keyboard:	PHA
		PHP
		PLA
		STA	[Flags]
		PLA
		STA	[Accu]
		PLA
		STA	[Stack]
		LDA	[Flags]
		PHA
		LDA	[Accu]
		PHA
		LDA	[Stack]
		PHA
		LDA	$0020
		STA	[Page0]
		STA	[Page1]
		STA	[Page2]
		EQU	#0C	;LDA $hhhh
		EQU	#00
Page0:		EQU	#00
		STA	[Accu]
Loop:		EQU	#0C	;LDA $hhhh
Offset0:	EQU	#01
Page1:		EQU	#00
		EQU	#18	;STA $hhhh
Offset1:	EQU	#00
Page2:		EQU	#00
		INC	[Offset1]
		INC	[Offset0]
		BNE	[Loop]
		LDA	[Accu]
		RTS
