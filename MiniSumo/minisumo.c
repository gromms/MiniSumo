#include <avr/io.h>
#include "delay.h"
#include <avr/interrupt.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "pins.h"
#include "eeprom.h"
#include "comms.h"
#include "util.h"

int main(void)
{
	// clock prescaler
	CLKPR = BIT(CLKPCE); // enable prescaler change
	CLKPR = BITS(0b0000, CLKPS0); // divider 1

	// BTN inputs
	bit_clear(DDRB, BIT(START_BTN));

	// DIST inputs
	bit_clear(DDRB, DISTS);
	bit_set(PORTB, DISTS); // pull-ups

	// LIGHT inputs
	bit_clear(DDRD, BIT(LIGHTL));
	bit_clear(DDRB, BIT(LIGHTR));

	// initialize comms
	usart_init();

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
