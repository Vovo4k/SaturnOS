[org 0x7c00]

mov bx, StartOS
call print
call print_nl

mov dx, 0x12fe
call print_hex

jmp $
%include "print\rint.asm"
%include "print\printhex.asm"

StartOS:
    db 'Starting SaturnOS',0



times 510-($-$$) db 0
dw oxaa55