#ifndef PINS_H
#define PINS_H

#include <avr/io.h>

// RS485
#define RS485RX PD2
#define RS485TX PD3
#define RS485TXEN PD4

// BTN input
#define START_BTN PB0

// SM inputs
#define KILL PD0
#define START PD1

// DIST inputs
#define DISTL PB5
#define DISTM PB7
#define DISTR PB6
#define DISTS (BIT(DISTL) | BIT(DISTM) | BIT(DISTR))

// LIGHT inputs
#define LIGHTL PB4
#define LIGHTR PD5

// LED
#define LED PD6

#endif
