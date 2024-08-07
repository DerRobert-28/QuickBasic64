# RVM - A **Virtual** CPU

## Implemented commands

| Binary | Hex | Opcode | Function |
|:-:|:-|:-|:-|
| 00000000 | 00 | NOP | Execute no operation. |
| 00000100 | 04 xx | LDA #xx | Load accu with value. |
| 00000101 | 05 xx | LDX #xx | Load X with value. |
| 00000110 | 06 xx | LDY #xx | Load Y with value. |
| 00000111 | 07 xx | LD? #xx | (reserved) ¹ |
| 00001000 | 08 xx xx | LDA $xxxx | Load accu with address. |
| 00001001 | 09 xx xx | LDX $xxxx | Load X with address. |
| 00001010 | 0A xx xx | LDY $xxxx | Load Y with address. |
| 00001011 | 0B xx xx | LD? $xxxx | (reserved) ¹ |
| 00001100 | 0C xx xx | STA $xxxx | Store accu into address. |
| 00001101 | 0D xx xx | STX $xxxx | Store X into address. |
| 00001110 | 0E xx xx | STY $xxxx | Store Y into address. |
| 00001111 | 0F xx xx | ST? $xxxx | (reserved) ¹ |
| 00010000 | 10 | TXA | Transfer X into accu. |
| 00010001 | 11 | TYA | Transfer Y into accu. |
| 00010010 | 12 | TAX | Transfer accu into X. |
| 00010011 | 13 | TAY | Transfer accu into Y. |
| 10000000 | 80 | CLZ | Clear zero flag. ² |
| 10000001 | 81 | CLS | Clear sign flag. ² |
| 10000010 | 82 | CLC | Clear carry flag. |
| 10000100 | 84 | SEZ | Set zero flag. ² |
| 10000101 | 85 | SES | Set sign flag. ² |
| 10000110 | 86 | SEC | Set carry flag. |
| 11111100 | FC xx | JMP $xx | Jump to relative address. |
| 11111101 | FD xx xx | JMP $xxxx | Jump to address. |
| 11111110 | FE | STP | Stop CPU. ³ |
| 11111111 | FF | HLT | Halt CPU. ³ |
----
\
¹) These opcodes are reserved (for future uses).
\
²) These opcodes are implemented for testing purposes,
and should not be used directly.
\
³) Currently,
there is no difference between stopping
and halting the CPU.
