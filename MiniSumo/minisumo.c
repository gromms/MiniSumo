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
	bit_clear(DDRB, BIT(LIGHTL));
	bit_set(PORTB, BIT(LIGHTL));
	bit_clear(DDRD, BIT(LIGHTR));
	bit_set(PORTD, BIT(LIGHTR));

	// initialize comms
	usart_init();

	sei(); // enable interrupts

	while (1)
	{
		bool distl = bit_get(PINB, BIT(DISTR));
		bool distm = bit_get(PINB, BIT(DISTM));
		bool distr = bit_get(PINB, BIT(DISTL));
		bool lightl = bit_get(PINB, BIT(LIGHTL));
		bool lightr = !bit_get(PIND, BIT(LIGHTR));

		/*if (distl && !distr)
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
		}*/

		/*if (lightl)
			usart_write("aaa\n");
		else if (lightr)
			usart_write("ggg\n");
		else
			usart_write("xxx\n");*/

		usart_write(lightl ? "1:s0.3\n" : "1:s0\n");
		usart_write(lightr ? "2:s0.3\n" : "2:s0\n");

		_delay_ms(100);
	}
}
