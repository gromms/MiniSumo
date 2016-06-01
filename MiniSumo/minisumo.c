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

void drive(int left, int right)
{
	char buf[24];
	sprintf(buf, "1:%s0.%.3d\n" "2:%s0.%.3d\n",
		left < 0 ? "-" : "", abs(left),
		right < 0 ? "-" : "", abs(right));
	usart_write(buf);
}

int main(void)
{
	// clock prescaler
	CLKPR = BIT(CLKPCE); // enable prescaler change
	CLKPR = BITS(0b0000, CLKPS0); // divider 1

	// BTN inputs
	bit_clear(DDRB, BIT(START_BTN));
	bit_set(PCICR, BIT(PCIE0));
	bit_set(PCMSK0, BIT(PCINT0));

	// DIST inputs
	bit_clear(DDRB, DISTS);
	bit_set(PORTB, DISTS); // pull-ups

	// LIGHT inputs
	bit_clear(DDRB, BIT(LIGHTL));
	bit_set(PORTB, BIT(LIGHTL));
	bit_clear(DDRD, BIT(LIGHTR));
	bit_set(PORTD, BIT(LIGHTR));

	// LED
	bit_set(DDRD, BIT(LED));

	// initialize comms
	usart_init();

	sei(); // enable interrupts

	while (1)
	{
		bool distl = !bit_get(PINB, BIT(DISTL));
		bool distm = bit_get(PINB, BIT(DISTM));
		bool distr = !bit_get(PINB, BIT(DISTR));
		bool lightl = !bit_get(PINB, BIT(LIGHTL));
		bool lightr = bit_get(PIND, BIT(LIGHTR));
		bool btn = !bit_get(PINB, BIT(START_BTN));

		if (lightl || lightr)
		{
			drive(
				lightl ? 300 : 0,
				lightr ? 300 : 0);
		}
		else
		{
			if (distl && !distr)
			{
				drive(-400, -500);
			}
			else if (!distl && distr)
			{
				drive(-500, -400);
			}
			else if (distm)
			{
				drive(-500, -500);
			}
			else
			{
				drive(0, -200);
			}
		}

		_delay_ms(50);
	}
}
