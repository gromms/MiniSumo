#define F_CPU 16000000UL
#include <avr/io.h>
#define __DELAY_BACKWARD_COMPATIBLE__ // http://lists.gnu.org/archive/html/avr-gcc-list/2012-05/msg00030.html
#include <util/delay.h>
#include <avr/interrupt.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "pins.h"
#include "eeprom.h"
#include "comms.h"
#include "util.h"

char response[16];

ISR(TIMER0_COMPA_vect)
{
	bit_flip(PORTF, BIT(LED1B)); // visualize heartbeat
}

int main(void)
{
	// clock prescaler
	CLKPR = BIT(CLKPCE); // enable prescaler change
	CLKPR = BITS(0b0000, CLKPS0); // divider 1

	// disable JTAG - control F port
	MCUCR = BIT(JTD);
	MCUCR = BIT(JTD);

	// LED outputs
	bit_set(DDRF, LEDS);
	bit_set(PORTF, LEDS);

	// button inputs
	bit_clear(DDRD, BIT(BTN1) | BIT(BTN2));

	// IO inputs
	bit_clear(DDRB, BIT(IO1));
	bit_clear(DDRC, BIT(IO2));

	// initialize comms
	usb_init();
	usart_init();

	// wait for USB configuration
	// while (!usb_configured());
	_delay_ms(1000);

	// heartbeat timer (timer0)
	TCCR0A = BITS(0b10, WGM00); // CTC mode (mode 2)
	TCCR0B = BITS(0b101, CS00); // divider 1024
	TIMSK0 = BIT(OCIE0A); // enable compare A on timer0
	OCR0A = 250; // 62.5Hz
	TCNT0 = 0;

	sei(); // enable interrupts

	bit_clear(PORTF, BIT(LED2G));

	/*uint8_t n;
	char buf[16];*/

	while (1)
	{
		usart_write("3:s1\n");
		usart_write("4:s-1\n");

		_delay_ms(3000);


		usart_write("3:s-1\n");
		usart_write("4:s1\n");

		_delay_ms(3000);
	}
}
