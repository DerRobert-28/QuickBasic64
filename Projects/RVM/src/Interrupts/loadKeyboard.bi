sub Interrupt.loadKeyboard ()
	dim keyboardAddr	as _unsigned long
	dim equFlag		as _unsigned long
	dim equAccu		as _unsigned long
	dim equStack		as _unsigned long
	dim equKeyboard		as _unsigned long
	dim equPage0		as _unsigned long
	dim equPage1		as _unsigned long
	dim equPage2		as _unsigned long
	dim equLoop		as _unsigned long
	dim equOffset0		as _unsigned long
	dim equOffset1		as _unsigned long
	:
	keyboardAddr = KEYBOARD_IRQ_ROUTINE
	:
	Memory.push keyboardAddr, &HF8			'JMP #03
	Memory.push keyboardAddr, &H03
	:
	equFlag = keyboardAddr
	Memory.push keyboardAddr, &H00			'Flags: EQU #00
	:
	equAccu = keyboardAddr
	Memory.push keyboardAddr, &H00			'Accu: EQU #00
	:
	equStack = keyboardAddr
	Memory.push keyboardAddr, &H00			'Stack: EQU #00
	:
	Memory.push keyboardAddr, &H14			'PHA
	Memory.push keyboardAddr, &H90			'PHP
	Memory.push keyboardAddr, &H10			'PLA
	:
	Memory.push keyboardAddr, &H18			'STA [Flags]
	Memory.push keyboardAddr, Cpu.LoByte(equFlag)
	Memory.push keyboardAddr, Cpu.HiByte(equFlag)
	:
	Memory.push keyboardAddr, &H10			'PLA
	:
	Memory.push keyboardAddr, &H18			'STA [Accu]
	Memory.push keyboardAddr, Cpu.LoByte(equAccu)
	Memory.push keyboardAddr, Cpu.HiByte(equAccu)
	:
	Memory.push keyboardAddr, &H10			'PLA
	:
	Memory.push keyboardAddr, &H18			'STA [Stack]
	Memory.push keyboardAddr, Cpu.LoByte(equStack)
	Memory.push keyboardAddr, Cpu.HiByte(equStack)
	:
	Memory.push keyboardAddr, &H0C			'LDA [Flags]
	Memory.push keyboardAddr, Cpu.LoByte(equFlag)
	Memory.push keyboardAddr, Cpu.HiByte(equFlag)
	:
	Memory.push keyboardAddr, &H14			'PHA
	:
	Memory.push keyboardAddr, &H0C			'LDA [Accu]
	Memory.push keyboardAddr, Cpu.LoByte(equAccu)
	Memory.push keyboardAddr, Cpu.HiByte(equAccu)
	:
	Memory.push keyboardAddr, &H14			'PHA
	:
	Memory.push keyboardAddr, &H0C			'LDA [Stack]
	Memory.push keyboardAddr, Cpu.LoByte(equStack)
	Memory.push keyboardAddr, Cpu.HiByte(equStack)
	:
	Memory.push keyboardAddr, &H14			'PHA
	:
	Memory.push keyboardAddr, &H0C			'LDA [ZP_KEYBOARD_BUFFER_PAGE]
	Memory.push keyboardAddr, Cpu.LoByte(ZP_KEYBOARD_BUFFER_PAGE)
	Memory.push keyboardAddr, Cpu.HiByte(ZP_KEYBOARD_BUFFER_PAGE)
	:
	equPage0 = keyboardAddr + 11
	equPage1 = keyboardAddr + 17
	equPage2 = keyboardAddr + 20
	Memory.push keyboardAddr, &H18			'STA [Page0]
	Memory.push keyboardAddr, Cpu.LoByte(equPage0)
	Memory.push keyboardAddr, Cpu.HiByte(equPage0)
	:
	Memory.push keyboardAddr, &H18			'STA [Page1]
	Memory.push keyboardAddr, Cpu.LoByte(equPage1)
	Memory.push keyboardAddr, Cpu.HiByte(equPage1)
	:
	Memory.push keyboardAddr, &H18			'STA [Page2]
	Memory.push keyboardAddr, Cpu.LoByte(equPage2)
	Memory.push keyboardAddr, Cpu.HiByte(equPage2)
	:
	Memory.push keyboardAddr, &H0C			'LDA $hhhh
	Memory.push keyboardAddr, &H00
	Memory.push keyboardAddr, &H00			'Page0: EQU #00
	:
	Memory.push keyboardAddr, &H18			'STA [Accu]
	Memory.push keyboardAddr, Cpu.LoByte(equAccu)
	Memory.push keyboardAddr, Cpu.HiByte(equAccu)
	:
	equLoop = keyboardAddr
	Memory.push keyboardAddr, &H0C			'Loop:	LDA $hhhh
	equOffset0 = keyboardAddr
	Memory.push keyboardAddr, &H01			'Offset0: EQU #01
	Memory.push keyboardAddr, &H00			'Page1: EQU #00
	:
	Memory.push keyboardAddr, &H18			'STA $hhhh
	equOffset1 = keyboardAddr
	Memory.push keyboardAddr, &H00			'Offset1: EQU #01
	Memory.push keyboardAddr, &H00			'Page2: EQU #00
	:
	Memory.push keyboardAddr, &H49			'INC [Offset1]
	Memory.push keyboardAddr, Cpu.LoByte(equOffset1)
	Memory.push keyboardAddr, Cpu.HiByte(equOffset1)
	:
	Memory.push keyboardAddr, &H49			'INC [Offset0]
	Memory.push keyboardAddr, Cpu.LoByte(equOffset0)
	Memory.push keyboardAddr, Cpu.HiByte(equOffset0)
	:
	Memory.push keyboardAddr, &HA0			'BNE [Loop]
	Memory.push keyboardAddr, (equLoop - (keyboardAddr + 1)) and 255  
	:
	Memory.push keyboardAddr, &H0C			'LDA [Accu]
	Memory.push keyboardAddr, Cpu.LoByte(equAccu)
	Memory.push keyboardAddr, Cpu.HiByte(equAccu)
	:
	Memory.push keyboardAddr, &HFB			'RTS
	:
	while (keyboardAddr and 255) < 80
		Memory.push keyboardAddr, &H00		'NOP 
	wend
end sub
