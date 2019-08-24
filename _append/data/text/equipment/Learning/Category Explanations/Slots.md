# Slots
## Description
This indicates what dice your equipment will take. You can require multiple dice by using | (pipes) in between them.

## Real World Example
`NORMAL|NORMAL|NORMAL|NORMAL`

## Possible Values
Name | Description
--- | ---
empty column| Doesn't take any dice. Usually used for passives.
NORMAL | Will take any dice
REQUIRESX | Will only accept dice of a specific value (i.e. REQUIRES1 will only accept 1s)
MAXX | Will only accept dice of that specific value or less (i.e. MAX4 will only accept dice valued 4 or less)
MINX | Will only accept dice of that specific value or more (i.e. MIN3 will only accept dice valued 3 or more)
EVEN | Will only accept even-valued dice
ODD | Will only accept odd-valued dice
COUNTDOWN | Used in conjunction with the [NEED TOTAL?](./NEED_TOTAL?.md) column. Indicates the total value of dice you need to put in to use the equipment.
DOUBLES | Will only accept two of a dice. Must have a pipe between them. (DOUBLES\|DOUBLES)
FREEX | Adds a certain amount to the amount you put in (i.e. NORMAL\|FREE2 will add 2 to the dice you put in)