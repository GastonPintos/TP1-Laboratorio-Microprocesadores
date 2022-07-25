; Codigo para TP1
; Activar un led usando todo el puerto

START:
      LDI R16 , 0 x00
      OUT PORTB, R16
      LDI R16 , 0 xFF
      OUT DDRB, R16
BLINK : 
      LDI R16 , 0 x01
      OUT PORTB, R16
      c a l l DELAY
      LDI R16 , 0 x00
      OUT PORTB, R16
      c a l l DELAY
      RJMP BLINK
DELAY:
      ldi r18 , 17
      ldi r19 , 60
      ldi r20 , 204
L1 :
      dec r20
      brne L1
      dec r19
      brne L1
      dec r18
      brne L1
      ret

