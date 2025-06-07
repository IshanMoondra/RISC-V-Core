; Load the UART base address & Divider & Wait counter
li t0, 2
slli t0, t0, 25     ; UART Base Address -> 0x02000000
li t1, 1000         ; UART Divider
li t2, 100          ; Wait Counter
li t3, 0            ; Loop Counter

; Load starting character 'A' (0x41) & set stop character 'Z'
li a0, 0x41         ; ASCII 'A'
li a1, 0x5A         ; ASCII 'Z' (loop limit)

L2:
; Transmit character over UART
sw a0, 8(t0)

L1:
addi t3, t3, 1
blt t3, t2, L1      ; Wait between UART sends

; Update Character
addi a0, a0, 1      ; Increment ASCII character ('A' -> 'B' -> ...)
ble a0, a1, L2      ; Continue until 'Z'

HLT                 ; Stop Execution

