// Macro collection for 6502

// Math ----------------------------------------------------------------

// Add a word in memory and a literal byte.
.macro AddWordLByte(word_address, byte_value) {
  clc
  lda word_address
  adc #byte_value
  sta word_address
  bcc done
  inc word_address + 1
  done:
}

// Add a word in memory and a byte in memory.
.macro AddWordMByte(word_address, byte_address) {
  clc
  lda word_address
  adc byte_address
  sta word_address
  bcc done
  inc word_address + 1
  done:
}

// Decrement a word in memory.
.macro DecWord(address) {
  sec
  lda address
  sbc #1
  sta address
  bcs done
  dec address + 1
  done:
}

// Increment a word in memory.
.macro IncWord(address) {
  inc address
  bne done
  inc address + 1
  done:
}

// Shift left a 16 bits number.
// Destroys nothing.
.macro ShiftLeftWord(word_address) {
  asl word_address     // low byte
  rol word_address + 1 // high byte
}

// Sub a literal byte from a word in memory.
// Destroys A
.macro SubWordLByte(word_address, byte_value) {
  sec
  lda word_address
  sbc #byte_value
  sta word_address
  bcs done
  dec word_address + 1
  done:
}

// Stack ---------------------------------------------------------------

.macro PullYA() {
  pla
  tay
  pla
}

.macro PushAY() {
  pha
  tya
  pha
}

// Store ---------------------------------------------------------------

.macro StoreWord(value, address) {
  lda #<value
  sta address
  lda #>value
  sta address + 1
}

