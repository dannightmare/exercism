#include "grains.h"
#include <stdint.h>

uint64_t square(uint8_t index)
{
    return (index > 64 || index == 0) ? 0 : (uint64_t)1 << (index - 1);
}

uint64_t total(void)
{
    return (uint64_t)-1;
}
