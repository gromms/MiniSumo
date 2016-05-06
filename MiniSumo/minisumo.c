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

int main(void)
{
	// clock prescaler
	CLKPR = BIT(CLKPCE); // enable prescaler change
	CLKPR = BITS(0b0000, CLKPS0); // divider 1

	// disable JTAG - control F port
	//MCUCR = BIT(JTD);
	//MCUCR = BIT(JTD);

	// button inputs
	bit_clear(DDRB, BIT(START_BTN));

	// COMP inputs
	bit_set(PORTB, BIT(DISTL) | BIT(DISTM) | BIT(DISTR) | BIT(LIGHTL) | BIT(LIGHTR));
	bit_clear(DDRB, BIT(DISTL) | BIT(DISTM) | BIT(DISTR) | BIT(LIGHTL) | BIT(LIGHTR));

	// initialize comms
	//usb_init();
	usart_init();

	// wait for USB configuration
	// while (!usb_configured());
	_delay_ms(1000);

	sei(); // enable interrupts

	while (1)
	{
		/*usart_write("1:s0.3\n");
		usart_write("2:s-0.3\n");*/
		bool b = bit_get(PINB, BIT(DISTL));
		usart_write(b ? "1\n" : "0\n");

		_delay_ms(100);
	}
}
