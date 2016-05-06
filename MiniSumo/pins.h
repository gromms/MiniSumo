#ifndef PINS_H
#define PINS_H

#include <avr/io.h>

// RS485
#define RS485RX PD2
#define RS485TX PD3
#define RS485TXEN PD4

// BTN inputs
#define START_BTN PB0

// SM inputs
#define KILL PD0
#define START PD1

// DIST input
#define DISTL PB5
#define DISTM PB6
#define DISTR PB7

// LIGHT input
#define LIGHTL PD5
#define LIGHTR PB4


#endif
