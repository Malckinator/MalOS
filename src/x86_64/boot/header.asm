section .multiboot_header
header_start:
dd 0xE85250D6 ; multiboot 2 id number
dd 0 ; protected mode i386
dd header_end - header_start ; length
dd 0x100000000 - (0xE85250D6 + 0 + (header_end - header_start)) ; checksum
; end tag
dw 0
dw 0
dd 8
header_end: