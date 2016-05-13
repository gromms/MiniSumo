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
		bool distl = bit_get(PINB, BIT(DISTR));
		bool distm = bit_get(PINB, BIT(DISTM));
		bool distr = bit_get(PINB, BIT(DISTL));

		if (distl && !distr)
		{
			usart_write("1:s0.5\n");
			usart_write("2:s-0.8\n");
		}
		else if (!distl && distr)
		{
			usart_write("1:s0.8\n");
			usart_write("2:s-0.5\n");
		}
		else if (distm)
		{
			usart_write("1:s1.2\n");
			usart_write("2:s-1.2\n");
		}
		else
		{
			usart_write("1:s0\n");
			usart_write("2:s0\n");
		}

		_delay_ms(100);
	}
}
