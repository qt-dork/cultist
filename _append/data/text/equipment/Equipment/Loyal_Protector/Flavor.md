# Loyal Protector

## Description
### Normal
Convert all but 1|of your health to shield

### Upgraded
Convert all but 1|of your health to|twice as much shield

## Flavor
This is actually based on a card in Hearthstone called "High Priest Thekal"! I like the idea of a card where you give up all of your health in exchange for something functionally similar. One of the neat things about shield in Dicey Dungeons is that you don't keep it outside of battle. This means that once you use this equipment, you're stuck at 1 hp for your next fight. Also, poison and pierce attacks ignore shield, meaning that if your opponent has that, you lose! I feel like this helps reinforce the cultist's themes of losing being the result of you being too greedy with your stuff. 

## Script
### Normal
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