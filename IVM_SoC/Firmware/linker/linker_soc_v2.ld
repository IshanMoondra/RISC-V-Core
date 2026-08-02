ENTRY(_start)

MEMORY {
  FLASH     (rx) : ORIGIN = 0x00000000, LENGTH = 0x00040000   /* 256 KiB Unified L2 */
  IO_MEM    (rw) : ORIGIN = 0x00200000, LENGTH = 2M           /* Includes UART, SPI, etc. */
  TCM       (rw) : ORIGIN = 0x10000000, LENGTH = 8K
}

SECTIONS {
  /* Executable code */
  .text ALIGN(0x400) : {
    . = ORIGIN(FLASH);     /* Force section to start at 0x00000000 */
    . = ALIGN(4);
    KEEP(*(.bare_start))   /* Place _start first */
    KEEP(*(.start))        /* Place everything else later */
    KEEP(*(.init))
    KEEP(*(.text.startup))
    *(.text)
    *(.text.*)
    KEEP(*(.fini))
  } > FLASH

  .spi_gpio ALIGN(0x400) : {
    KEEP(*(.spi_gpio))
  } > FLASH
  
  .spi_compute ALIGN(0x400) : {
    KEEP(*(.spi_compute))
  } > FLASH

  .spi_uart ALIGN(0x400) : {
    KEEP(*(.spi_uart))
  } > FLASH

	/* C++ metadata */
  .eh_frame ALIGN(0x400) : { *(.eh_frame) } > FLASH
  .gcc_except_table ALIGN(0x400) : { *(.gcc_except_table) } > FLASH
  .rtti ALIGN(0x400) : { *(.rtti*) } > FLASH
  .vtable ALIGN(0x400) : { *(.vtable*) } > FLASH

  /* Constructors and destructors */
  .init_array ALIGN(0x400) : {
    PROVIDE_HIDDEN(__init_array_start = .);
    KEEP(*(.init_array))
    PROVIDE_HIDDEN(__init_array_end = .);
  } > FLASH

  .fini_array ALIGN(0x400) : {
    PROVIDE_HIDDEN(__fini_array_start = .);
    KEEP(*(.fini_array))
    PROVIDE_HIDDEN(__fini_array_end = .);
  } > FLASH

	. = 0x00030000;
	/* Read-only data */
  .rodata ALIGN(0x400) : {
    *(.rodata)
    *(.rodata.*)
    *(.const)
    *(.const.*)
  } > FLASH

  /* Move pointer to top 16 KiB of SPI Flash */
	. = 0x00034000;

  /* Mutable state — aligned to 2 KiB slices */
  .data ALIGN(0x800) : {
    __data_start = .;
    *(.data)
    *(.data.*)
    __data_end = .;
  } > FLASH

	.sdata ALIGN(0x800) : {
    PROVIDE(__sdata_start = .);
    *(.sdata)
    *(.sdata.*)
    *(.srodata)
    *(.srodata.*)
    PROVIDE(__sdata_end = .);
	} > FLASH

	.sbss ALIGN(0x800) : {
			PROVIDE(__sbss_start = .);
			*(.sbss)
			*(.sbss.*)
			PROVIDE(__sbss_end = .);
	} > FLASH

  .bss ALIGN(0x800) : {
    PROVIDE(__bss_start = .);
    *(.bss)
    *(.bss.*)
    *(COMMON)
    PROVIDE(__bss_end = .);
  } > FLASH

  .heap ALIGN(0x800) : {
    PROVIDE(__heap_start = .);
    KEEP(*(.heap*))
		/* 4KB Heap */
		/* . = . + 0x1000; */
		/* 16KB Heap */
		. = . + 0x4000;
    PROVIDE(__heap_end = .);
  } > FLASH

  .stack ALIGN(0x800) : {
    PROVIDE(__stack_start = .);
    KEEP(*(.stack*))
    PROVIDE(__stack_end = 0x00040000);
  } > FLASH

  _end = 0x00040000;

  /* Optional global pointer location */
  PROVIDE(_stack_end      = 0x00040000);
	PROVIDE(_heap_start			= __heap_start);
  PROVIDE(_global_pointer = __sdata_start + 0x800);

  /* Peripheral symbols for convenience */
  PROVIDE(IO_BASE     = 0x00200000);

  PROVIDE(SET_DYNAMIC_BASE    = IO_BASE + 0x400 + 0);
  PROVIDE(SET_DYNAMIC_BOUND   = IO_BASE + 0x400 + 4);
  PROVIDE(GET_DYNAMIC_BASE    = IO_BASE + 0x400 + 8);
  PROVIDE(GET_DYNAMIC_BOUND   = IO_BASE + 0x400 + 12);
  PROVIDE(SET_DIS_I_CACHE     = IO_BASE + 0x400 + 16);
  PROVIDE(GET_DIS_I_CACHE     = IO_BASE + 0x400 + 20);
	PROVIDE(SET_I_LOCK		      = IO_BASE + 0x400 + 24);
	PROVIDE(SET_D_LOCK			    = IO_BASE + 0x400 + 28);
	PROVIDE(GET_I_LOCK		      = IO_BASE + 0x400 + 32);
	PROVIDE(GET_D_LOCK		      = IO_BASE + 0x400 + 36);
  
  PROVIDE(UART_BAUD     = IO_BASE + 0x0800 + 0);
  PROVIDE(UART_RECV     = IO_BASE + 0x0800 + 4);
  PROVIDE(UART_SEND     = IO_BASE + 0x0800 + 8);
  PROVIDE(UART_STAT     = IO_BASE + 0x0800 + 12);
  
  PROVIDE(SPI_BASE      = IO_BASE + 0x0C00);

  PROVIDE(SET_PERFMON_STATUS  = IO_BASE + 0x1000);
  PROVIDE(SET_PERFMON_SCALAR  = IO_BASE + 0x1004);
  PROVIDE(SET_PERFMON_TIMER   = IO_BASE + 0x1008);
  PROVIDE(GET_PERFMON_STATUS  = IO_BASE + 0x100C);
  PROVIDE(GET_PERFMON_SOCH    = IO_BASE + 0x1010);
  PROVIDE(GET_PERFMON_SOCL    = IO_BASE + 0x1014);
  PROVIDE(GET_PERFMON_COREH   = IO_BASE + 0x1018);
  PROVIDE(GET_PERFMON_COREL   = IO_BASE + 0x101C);
  PROVIDE(GET_PERFMON_SCALAR  = IO_BASE + 0x1020);
  PROVIDE(GET_PERFMON_TIMER   = IO_BASE + 0x1024);
  PROVIDE(GET_PERFMON_MISS    = IO_BASE + 0x1028);
  PROVIDE(GET_PERFMON_RET_CNT = IO_BASE + 0x102C);
  PROVIDE(PET_WATCHDOG        = IO_BASE + 0x1030);
  PROVIDE(SET_WATCHDOG_HIGH   = IO_BASE + 0x1034);
  PROVIDE(SET_WATCHDOG_LOW    = IO_BASE + 0x1038);
  PROVIDE(GET_WATCHDOG_HIGH   = IO_BASE + 0x103C);
  PROVIDE(GET_WATCHDOG_LOW    = IO_BASE + 0x1040);

  PROVIDE(SET_DIS_SRAM_GATER  = IO_BASE + 0x1044);
  PROVIDE(GET_DIS_SRAM_GATER  = IO_BASE + 0x1048);

  PROVIDE(GET_GPIO_WORD       = IO_BASE + 0x1400);
  PROVIDE(GET_GPIO_HALF_HIGH  = IO_BASE + 0x1404);
  PROVIDE(GET_GPIO_HALF_LOW   = IO_BASE + 0x1408);
  PROVIDE(GET_FLASH_SPECIAL   = IO_BASE + 0x140C);
  PROVIDE(GET_GPIO_CHAN0      = IO_BASE + 0x1410);
  PROVIDE(GET_GPIO_CHAN1      = IO_BASE + 0x1414);
  PROVIDE(GET_GPIO_CHAN2      = IO_BASE + 0x1418);
  PROVIDE(GET_GPIO_CHAN3      = IO_BASE + 0x141C);
  
  PROVIDE(SET_GPIO_WORD       = IO_BASE + 0x1420);
  PROVIDE(SET_GPIO_HALF_HIGH  = IO_BASE + 0x1424);
  PROVIDE(SET_GPIO_HALF_LOW   = IO_BASE + 0x1428);
  PROVIDE(SET_FLASH_SPECIAL   = IO_BASE + 0x142C);
  PROVIDE(SET_GPIO_CHAN0      = IO_BASE + 0x1430);
  PROVIDE(SET_GPIO_CHAN1      = IO_BASE + 0x1434);
  PROVIDE(SET_GPIO_CHAN2      = IO_BASE + 0x1438);
  PROVIDE(SET_GPIO_CHAN3      = IO_BASE + 0x143C);
}
