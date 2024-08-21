''
''  General Constants:
''
const FALSE = 0
const TRUE = not FALSE


''
''  General Memory Constants:
''
const MEMORY_SIZE& = 65536

const STACK_ADDRESS_DEFAULT& = 256		'$0100
const KEYBOARD_BUFFER_DEFAULT& = 512		'$0200
const KEYBOARD_IRQ_ROUTINE& = 768		'$0300
const FREE_MEMORY_DEFAULT& = 4096		'$1000
const START_ADDRESS_DEFAULT& = 32768		'$8000


''
''  Zero Page Constants:
''
const ZP_REGISTER_INITVALUES& = 0		'$0000
const ZP_STACKPOINTER_PAGE& = 16		'$0010
const ZP_KEYBOARD_BUFFER_PAGE& = 32		'$0020
'const ZP_KEYBOARD_BUFFER_READ_OFFSET& = 33	'$0021
'const ZP_KEYBOARD_BUFFER_WRITE_OFFSET& = 34	'$0022
const ZP_FLAGS_INITVALUE& = 128			'$0080


''
''  Register Constants:
''
const REGISTER_COUNT = 4
const FLAGS_COUNT = 4
const FLAGS_BITMASK = 7

const INDEX_REGISTER = 1
const INDEX_COUNT = 2

const ACCU_REGISTER = 0
const X_REGISTER = 1
const Y_REGISTER = 2
const STACKPOINTER = 3

const ZERO_FLAG = 0
const OVERFLOW_FLAG = 1
const SIGN_FLAG = 2
const CARRY_FLAG = 3
const INTERUPT_FLAG = 7
