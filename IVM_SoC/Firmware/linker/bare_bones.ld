ENTRY(_start)

MEMORY
{
  INSTR_MEM (rx)  : ORIGIN = 0x00000000, LENGTH = 1K     /* Instruction Cache */
  DATA_MEM  (rw)  : ORIGIN = 0x00000000, LENGTH = 4K     /* Data SRAM */
  IO_MEM    (rw)  : ORIGIN = 0x01000000, LENGTH = 1M     /* Includes UART, SPI, etc. */
}

SECTIONS
{
  /* Code section in Instruction Cache */
  .text :
  {
    KEEP(*(.init))
    KEEP(*(.text.startup))
    *(.text)
    *(.text.*)
    _etext = .;
  } > INSTR_MEM

  /* Data section in Data SRAM */
  .data :
  {
    _sdata = .;
    *(.data)
    *(.data.*)
    _edata = .;
  } > DATA_MEM

  /* BSS section (zero-initialized data) */
  .bss (NOLOAD) :
  {
    _sbss = .;
    *(.bss)
    *(.bss.*)
    *(COMMON)
    _ebss = .;
  } > DATA_MEM

  /* Stack (placed at the end of SRAM) */
  .stack (NOLOAD) :
  {
    _stack_start = .;
    . = . + 0x400; /* 1KB stack */
    _stack_end = .;
  } > DATA_MEM

  /* Peripheral symbols for convenience */
  PROVIDE(UART_TX   = 0x02000004);
  PROVIDE(UART_RX   = 0x02000008);
  PROVIDE(SPI_BASE  = 0x02000000);
  PROVIDE(IO_BASE   = 0x01000000);
}
