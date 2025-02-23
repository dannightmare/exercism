#include "queen_attack.h"
#include <stdbool.h>

bool is_valid_position(position_t queen)
{
    return queen.row <= 7 && queen.column <= 7;
}

attack_status_t can_attack(position_t queen_1, position_t queen_2)
{
    if (!is_valid_position(queen_1) ||
        !is_valid_position(queen_2) ||
        (queen_1.row == queen_2.row && queen_1.column == queen_2.column)) {
        return INVALID_POSITION;
    }
    if (queen_1.row == queen_2.row ||
        queen_1.column == queen_2.column ||
        (queen_1.column - queen_1.row) == (queen_2.column - queen_2.row) ||
        (queen_1.column + queen_1.row) == (queen_2.column + queen_2.row)) {
        return CAN_ATTACK;
    }
    return CAN_NOT_ATTACK;
}
