addjestercard(~juggling ball~); self.changebattlevar(~jugglingballs~| 1);

if(self.roll_total%2 == 0){ e.castdirection = 1; }else{ e.castdirection = 0; };

e always refers to the item you're calling the script from, whereas eq is just a variable name
So for example, trace(e.name) in an equipment's script would get you the equipment's name, but for(eq in self.equipment){trace(eq.name);}; would trace the names of all your equipment

function floordiv(x|y){var t = 0; while (x>0) {x-=y; t++;} return t; } var tot=0; var count=0; var ava=[]; for (mydice in self.dicepool) { if (mydice.available()) { tot+= mydice.basevalue; count++; ava.push(mydice; } } var del = 0; for (mydice in ava) { trace(tot); trace(count); trace(~~); del+=0.05; mydice.animatereroll(floordiv(tot|count)|self.screenposition()|del); tot-=floordiv(tot|count); count--;


Name: Item name. if you put put an @ and text after the main name, the game wont display the string after the @ so you can have items with multiple names ex. `Precious Egg@6` and `Precious Egg@5` are both called "precious egg"
Description: item description. three lines fit on a card. if your item is reusable/has uses, the last line here will be replaced with the (reusable) text in game unless Hide Reusable is set to YES
Size: size 1 or size 2
Script: On Execute: what the item does when used
Gadget: inventor gadget.
Slots: the item's slots, ex `NORMAL`, `MAX3`, `COUNTDOWN`, `DOUBLES|DOUBLES`
NEED TOTAL: entering a number here on an item with two slots will make them a NEEDS total (ex. NEEDS 4 for change machine) if the item's slot is a COUNTDOWN, this is the number of the countdown.
Category: ITEM, SHIELD, WEAPON, or MAGIC. this also automatically colors items if you dont enter a color
Colour: available colors are RED, ORANGE, YELLOW, GREEN, BRIGHTCYAN, PURPLE, PINK, GRAY
Upgrade and Weaken: what the item does when upgraded or weakened. include an itemname_upgraded and/or an itemname/downgraded if you want it to have custom behavior.
Alternate Status Trigger: if the status listed here is changed by pu/bonus round, change this card to it's alt. (ex. Sonic Wave has `weaken` here, and changes to Sonic Wave?)
SFX: put none here for no sfx. vanilla equipment sfx are handled by the game, but for modded items you'll need to list the sound event here.
Uses?: 0 for one use, -1 for reusable, any other number for that many uses.
Cast Backwards: when used, does the item ANIMATE by going toward the player (YES) or away from them (NO)
Single use?: self explanatory
Parallel Universe: is this a PU item?
Speical?: im not entirely sure what this does, but skillcards etc are included here.
Error Immune: YES if it isn't removed by an error from Robot (ex. Buster Sword)
Show Gold: literally only pickpocket uses this
Appears For Parts: if it always appears for parts as inventor eg. Scrap Metal
Hide Reusable: if the "(Reusable)" text is hidden or not.
Witch Spell: can this be a witch spell? 1 for "this is also a witch spell", 2 for "this can only be a witch spell"
Script: [condition]: what the item does when [condition] is met.


var firstcard = Deck.getcard(0); if(firstcard != null) firstcard.delete();