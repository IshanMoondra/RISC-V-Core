#ifndef soc_mmio
#define soc_mmio

// Defining all the Linker Provided MMIO Addresses. 
extern "C" 
	{
		extern char _stack_end;
		extern char __stack_start;
		extern char _heap_start;
		extern char __heap_end;
		extern int __bss_start;
		extern int __bss_end;
		extern int __sbss_start;
		extern int __sbss_end;
		extern int __sdata_start;
		extern int __sdata_end;
		extern int _global_pointer;

		extern int SET_DYNAMIC_BASE;
		extern int SET_DYNAMIC_BOUND;
		extern int GET_DYNAMIC_BASE;
		extern int GET_DYNAMIC_BOUND;

		extern int SET_DIS_I_CACHE;
		extern int GET_DIS_I_CACHE;
		
		extern int SET_I_LOCK;
		extern int SET_D_LOCK;
		extern int GET_I_LOCK;
		extern int GET_D_LOCK;

		extern int UART_STAT;
		extern int UART_BAUD;
		extern int UART_SEND;
		extern int UART_RECV;

		extern int SPI_BASE;

		extern int SET_PERFMON_STATUS;
		extern int SET_PERFMON_SCALAR;
		extern int SET_PERFMON_TIMER;
		extern int PET_WATCHDOG;
		extern int SET_WATCHDOG_HIGH;
		extern int SET_WATCHDOG_LOW;
		
		extern int GET_WATCHDOG_HIGH;
		extern int GET_WATCHDOG_LOW;
		extern int GET_PERFMON_STATUS;
		extern int GET_PERFMON_SOCH;
		extern int GET_PERFMON_SOCL;
		extern int GET_PERFMON_COREH;
		extern int GET_PERFMON_COREL;
		extern int GET_PERFMON_SCALAR;
		extern int GET_PERFMON_TIMER;
		extern int GET_PERFMON_MISS;
		extern int GET_PERFMON_RET_CNT;

		extern int GET_GPIO_WORD;
		extern int GET_GPIO_HALF_HIGH;
		extern int GET_GPIO_HALF_LOW;
		extern int GET_FLASH_SPECIAL;
		extern int GET_GPIO_CHAN0;
		extern int GET_GPIO_CHAN1;
		extern int GET_GPIO_CHAN2;
		extern int GET_GPIO_CHAN3;

		extern int SET_GPIO_WORD;
		extern int SET_GPIO_HALF_HIGH;
		extern int SET_GPIO_HALF_LOW;
		extern int SET_FLASH_SPECIAL;
		extern int SET_GPIO_CHAN0;
		extern int SET_GPIO_CHAN1;
		extern int SET_GPIO_CHAN2;
		extern int SET_GPIO_CHAN3;
	}

extern "C" void _start() 					__attribute__((naked, section(".bare_start")));
void soc_bootup(int panic_high, int panic_low, int baud)				__attribute__((section(".start")));

#endif // soc_mmio
