#ifndef COMMS_H
#define COMMS_H

#include <avr/io.h>
#include "delay.h"
#include <stdbool.h>

extern volatile unsigned char usart_buf[16];
extern volatile uint8_t usart_i;
extern volatile bool usart_data_ready;

void usart_init();
void usart_write(unsigned char* data);

#endif
