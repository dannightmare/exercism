#include "grains.h"

uint64_t square(uint8_t index)
{
    if (index > 64 || index == 0) {
        return 0;
    }
    return (uint64_t)1 << (index - 1);
}

uint64_t total(void)
{
    return (uint64_t)-1;
}
