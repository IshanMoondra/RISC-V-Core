ENTRY(_start)

MEMORY
{
  INSTR_MEM (rx)  : ORIGIN = 0x00000000, LENGTH = 1K     /* Instruction Cache */
  DATA_MEM  (rw)  : ORIGIN = 0x00000000, LENGTH = 4K     /* Data SRAM */
  IO_MEM    (rw)  : ORIGIN = 0x01000000, LENGTH = 1M     /* Includes UART, SPI, etc. */
}

SECTIONS
{
  /* Ensure _start is placed at address 0x00000000 */
  .text :
  {
    . = ORIGIN(INSTR_MEM);     /* Force section to start at 0x00000000 */
    . = ALIGN(4);
    KEEP(*(.start))            /* Place _start first */
    KEEP(*(.init))             /* Optional init routines */
    KEEP(*(.text.startup))     /* Optional startup code */
    *(.text)                   /* All other code */
    *(.text.*)
    _etext = .;                /* End of text section */
  } > INSTR_MEM

  /* Initialized data section */
  .data :
  {
    . = ALIGN(4);
    _sdata = .;
    *(.data)
    *(.data.*)
    _edata = .;
  } > DATA_MEM

  /* Uninitialized data section */
  .bss (NOLOAD) :
  {
    . = ALIGN(4);
    _sbss = .;
    *(.bss)
    *(.bss.*)
    *(COMMON)
    _ebss = .;
  } > DATA_MEM

  /* Stack section at the end of SRAM */
  .stack (NOLOAD) :
  {
    . = ALIGN(4);
    _stack_start = .;
    . = . + 0x0400; /* 1KB stack */
    _stack_end = .;
  } > DATA_MEM

  /* Heap section at the end of Stack */
  .heap (NOLOAD) :
  {
    . = ALIGN(4);
    _heap_start = .;
    . = . + 0x0400; /* 1KB heap */
    _heap_end = .;
  } > DATA_MEM

  /* Optional global pointer location */
  PROVIDE(_global_pointer = 0x00000200);

  /* Peripheral symbols for convenience */
  PROVIDE(UART_RATE   = 0x02000004);
  PROVIDE(UART_DATA   = 0x02000008);
  PROVIDE(SPI_BASE    = 0x02000000);
  PROVIDE(IO_BASE     = 0x01000000);
}
