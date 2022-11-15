;
; a simple boot sector program thatl loops forever.
;

loop:                   ; define a label, 'loop', that will allow
                        ; us to jump back to it, forever.
    
    jmp loop            ; use simple CPU instruction that jump
                        ; to a new memory address to continue execution.
                        ; in this case, jump to the address of the current
                        ; instruction.

times 510-($-$$) db 0   ; when compiled, the program must fin into 512 bytes,
                        ; with the last two bytes being the magic number 0xaa55
                        ; that lets BIOS know this is the boot sector. this code
                        ; tells the assembly compiler to pad out the program with
                        ; enough zero bytes (db 0) to reach the 510th byte.

dw 0xaa55               ; last two bytes form the magic number, so BIOS knows
                        ; we are in the boot sector.