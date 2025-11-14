# 6502lib

Assembly routines and macros for the 6502 processor.
(for the KickAssembler assembler)

## Routines

_routine name - [optional macro] - file to import_

### Misc
delay.long - [LongDelay(time)] - "delay.long.asm"

## Macros

All macros are in the file "macros.asm".

### Math
AddWordMByte(word_address, byte_address)
AddWordLByte(word_address, byte_value)
DecWord(address)
IncWord(address)
SubWordLByte(word_address, byte_value)

### Stack
PushAY()
PullYA()

### Store
StoreWord(value, address)
