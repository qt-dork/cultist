# Loyal Protector

## Description
Convert all but 1|of your health to shield

## Script
```haxe
inflictself(SHIELD|self.hp - 1); pierceattackself(self.hp - 1); sfx(~_shield~);
```
### Explanation
I use `self.hp - 1` to make sure that you only shield for all but one of your hp.

I use `pierceattackself()` instead of `attackself()` to avoid breaking any existing shield.

## Size
1

## Gadget
None! (So far!)

## Slots
NORMAL

## NEED TOTAL?
N/A

## Category
SHIELD

## Colour
ORANGE