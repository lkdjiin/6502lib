// Destroys X.
.macro LongDelay(time) {
  ldx #time
  jsr delay.long
}

delay:
{
  // X - The delay time.
  // Destroys X.
  long:
  {
    PushAY()
    for_x:
      ldy #0
      for_y:
        dey
        bne for_y
      dex
      bne for_x
    PullYA()
    rts
  }
}
