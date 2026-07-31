/* Entry point for the program */
ENTRY(_start)

/* === Memory Regions === */
MEMORY
{
    INSTR_MEM (rx)  : ORIGIN = 0x00000000, LENGTH = 1K     /* Instruction memory */
    DATA_MEM  (rw)  : ORIGIN = 0x00000000, LENGTH = 4K     /* Data SRAM */
    IO_MEM    (rw)  : ORIGIN = 0x01000000, LENGTH = 1M     /* I/O peripherals */
}

/* === Sections === */
SECTIONS
{
    /* === Code Section === */
    .text :
    {
        . = ORIGIN(INSTR_MEM);     /* Start of instruction memory */
        . = ALIGN(4);
        KEEP(*(.start))            /* Entry point */
        *(.text)                   /* Main code */
        *(.text.*)                 /* Additional code sections */
        _etext = .;                /* End of text */
    } > INSTR_MEM

    /* === Initialized Data Section === */
    .data :
    {
        . = ALIGN(4);
        _sdata = .;
        *(.data)
        *(.data.*)
        _edata = .;
    } > DATA_MEM

    /* === Uninitialized Data Section === */
    .bss (NOLOAD) :
    {
        . = ALIGN(4);
        _sbss = .;
        *(.bss)
        *(.bss.*)
        *(COMMON)
        _ebss = .;
    } > DATA_MEM

    /* === Heap Section === */
    .heap (NOLOAD) :
    {
        . = ALIGN(4);
        _heap_start = .;
        . = . + 0x400;             /* Reserve 1KB */
        _heap_end = .;
    } > DATA_MEM

    /* === Stack Section (grows downward) === */
    .stack (NOLOAD) :
    {       
        . = _heap_end;
        . = ALIGN(4);
        _stack_start = .;
        . = . + 0x800;         /* 1KB stack */
        _stack_end = .;        /* Initial SP */
    } > DATA_MEM

    /* === Optional Global Pointer === */
    PROVIDE(_global_pointer = 0x00000200);

    /* === Peripheral Base Addresses === */
    PROVIDE(UART_TX   = 0x02000004);
    PROVIDE(UART_RX   = 0x02000008);
    PROVIDE(SPI_BASE  = 0x02000000);
    PROVIDE(IO_BASE   = 0x01000000);
}
