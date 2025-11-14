# 6502lib

Assembly routines and macros for the 6502 processor.
(for the KickAssembler assembler)

## Routines

### Misc

- **delay.long** "delay.long.asm"
  - LongDelay(time)

## Macros

All macros are in the file "macros.asm".

### Math

- AddWordMByte(word_address, byte_address)
- AddWordLByte(word_address, byte_value)
- DecWord(address)
- IncWord(address)
- SubWordLByte(word_address, byte_value)

### Stack

- PushAY()
- PullYA()

### Store

- StoreWord(value, address)
