#ifndef UTIL_H
#define UTIL_H

#include <stdbool.h>

#define bit_get(p,m) ((p) & (m))
#define bit_set(p,m) ((p) |= (m))
#define bit_clear(p,m) ((p) &= ~(m))
#define bit_flip(p,m) ((p) ^= (m))
#define bit_write(c,p,m) (c ? bit_set(p,m) : bit_clear(p,m))
#define BIT(x) (0x01 << (x))
#define LONGBIT(x) ((unsigned long)0x00000001 << (x))
#define BITS(b, x) ((b) << (x))

bool streq(const char *str1, const char *str2);
bool strpref(const char *str, const char *pre);

#endif

