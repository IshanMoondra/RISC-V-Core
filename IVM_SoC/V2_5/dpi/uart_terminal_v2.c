#include <stdio.h>
#include <stdint.h>
#include "svdpi.h"

// Hello World Smoke Tester
void dpi_hello_world_v4() {
    printf("\nHello World from DPI-C!");
    printf("Now the UART Works begin: \n");
    fflush(stdout);
}

/* --------------------------------------------------------------------------
   Internal UART state
   -------------------------------------------------------------------------- */

static int      g_rx_rdy        = 0;
static int      g_rx_buffer     = 0;
static int      g_tx_done       = 0;

static int      g_clr_rx_rdy    = 0;
static int      g_start_transmit = 0;
static int      g_tx_buffer     = 0;

typedef enum { RX_IDLE, RX_WAIT_READ, RX_PULSE_CLR } rx_state_e;
typedef enum { TX_IDLE, TX_WRITE_BUF, TX_PULSE_START } tx_state_e;

static rx_state_e rx_state = RX_IDLE;
static tx_state_e tx_state = TX_IDLE;

/* --------------------------------------------------------------------------
   Raw hex dump parser state
   -------------------------------------------------------------------------- */

typedef enum {
    UART_MODE_ASCII,
    UART_MODE_WAIT_LEN,
    UART_MODE_RAW
} uart_mode_e;

static uart_mode_e uart_mode = UART_MODE_ASCII;
static int raw_expected = 0;
static int raw_count    = 0;
static uint8_t raw_bytes[8]; 

/* --------------------------------------------------------------------------
   SV → C : Capture UART RX inputs from the testbench
   -------------------------------------------------------------------------- */
void dpi_uart_set_rx_inputs_v2(svBit rx_rdy, int rx_buffer, svBit tx_done)
{
    g_rx_rdy    = rx_rdy;
    g_rx_buffer = rx_buffer;
    g_tx_done   = tx_done;
}

/* --------------------------------------------------------------------------
   C → SV : Compute UART control outputs and print TX bytes to stdout
   -------------------------------------------------------------------------- */
void dpi_uart_get_ctrl_outputs_v2(
    svBit *clr_rx_rdy,
    int   *tx_buffer,
    svBit *start_transmit
) {
    /* Default outputs */
    g_clr_rx_rdy     = 0;
    g_start_transmit = 0;
    g_tx_buffer      = 0;

    /* ============================================================
       RX PATH: SoC UART TX → DPI → stdout
       ============================================================ */
    switch (rx_state) 
		{
    case RX_IDLE:
        if (g_rx_rdy)
					rx_state = RX_WAIT_READ;
        break;

        /* Prefix tracking: R = retired count, Y = cycle count */
        static char pending_prefix = 0;

        case RX_WAIT_READ:
        {
					uint8_t b = (uint8_t)(g_rx_buffer & 0xFF);

					/* -------------------------------
					UART protocol parsing
					------------------------------- */
					if (uart_mode == UART_MODE_ASCII) {

						/* Detect prefix commands */
						if (b == 'R' || b == 'Y') {
							pending_prefix = (char)b;
							printf("\n[GOT PREFIX]: %c", b);
							fflush(stdout);
						}

						/* Detect start of dump */
						else if (b == 'D') {
							uart_mode = UART_MODE_WAIT_LEN;
						}

						/* Normal ASCII */
						else {
							printf("\n[GOT]: %c", b);
							fflush(stdout);
						}
					}

					else if (uart_mode == UART_MODE_WAIT_LEN) {
						raw_expected = b;
						raw_count    = 0;
						uart_mode    = UART_MODE_RAW;

						if (pending_prefix)
							printf("\n[GOT %c DUMP]: [HEX:", pending_prefix);
						else
							printf("\n[GOT DUMP]: [HEX:");

						fflush(stdout);
					}

					else if (uart_mode == UART_MODE_RAW) {
						raw_bytes[raw_count] = b;   // store for later conversion
						printf(" %02X", b);
						fflush(stdout);

						raw_count++;
						if (raw_count >= raw_expected) {
								printf(" ]");
								fflush(stdout);

								/* If this dump was prefixed with R or Y, convert to decimal */
								if (pending_prefix) {
									uint32_t value = 0;
									for (int i = 0; i < raw_expected; i++)
										value |= ((uint32_t)raw_bytes[i] << (8 * i));

									if (pending_prefix == 'R')
										printf("  => Count = %u (Non-NOP Retired Instructions)", value);
									else if (pending_prefix == 'Y')
										printf("  => Count = %u (Core Cycles)", value);

										pending_prefix = 0;
										fflush(stdout);
									}

									uart_mode = UART_MODE_ASCII;
							}
					}
        }
        rx_state = RX_PULSE_CLR;
        break;

		case RX_PULSE_CLR:
				g_clr_rx_rdy = 1;
				rx_state     = RX_IDLE;
				break;
		}

    /* ============================================================
       TX PATH: (host → SoC UART RX) — disabled for now
       ============================================================ */
    switch (tx_state) {

    case TX_IDLE:
        break;

    case TX_WRITE_BUF:
        tx_state = TX_PULSE_START;
        break;

    case TX_PULSE_START:
        g_start_transmit = 1;
        tx_state         = TX_IDLE;
        break;
    }

    /* Drive outputs back to SV */
    *clr_rx_rdy     = (svBit)g_clr_rx_rdy;
    *tx_buffer      = (int)g_tx_buffer;
    *start_transmit = (svBit)g_start_transmit;
}
