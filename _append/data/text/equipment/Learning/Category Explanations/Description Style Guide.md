# Description Style Guide
## Description
Have you ever wanted to make sure your wording in descriptions is just right? You're at the right place!

## General
1. Equipment should state what effect they do, even if the equipment itself just inflicts a status.
    * Example: Pierce Spell says "Ignore shields" instead of "Gain pierce". This phrasing is more clear to the user as to what the equipment does.
    * The exception to this rule is when you're introducing an effect in simple equipment that then gets used in more complicated equipment (e.g. Fury is introduced as "Repeat next attack" but then later is phrased as "10% chance of Fury").
2. Equipment should always use the numeral form of numbers over their word form.
    * The exception to this rule is when referring to dice values that are being rolled (e.g. "Roll 2 sixes").
    * And also when the article "a" could reasonably be used.
    * And also when the word "all" is used instead.
3. Try to be as descriptive as possible of what the equipment does. The equipment should not leave the player thinking that the equipment will do something that it doesn't do.
4. Keep in mind localization of descriptions when writing. Don't try to do too much fancy wordplay that could be hard to translate or references to common saying in English that might not exist in other cultures. 
5. If an equipment interacts with variables that will change value throughout the fight and knowledge of the variable is useful to the player, list the current state in the equipment description.
    * You can do this in the description using `<var:variable>`.
    * A useful way to convey this to the player is with a phrase like "(Currently at `<var:variable>`!)").
6. Symbols (e.g. \[heart], \[ice], \[fire]) should precede the number, and not the verb.
7. Try to avoid end of turn effects on equipment due to used equipment not being able to execute code.

## Punctuation
1. Don't use periods in equipment descriptions.
2. Phrases in parentheses should always capitalize the first word (I'm aware that Terry is inconsistent about this rule. Be better than Terry. Capitalize the first word.)
3. Try to use commas to indicate pauses, ifs, or any other logical statement where order matters.

## Verbs
1. Use the verb "Do" when equipment does damage directly (I'm aware that Terry uses "do" and "deal" interchangibly. Be better than Terry. Use "do".)
    * Example: "Do \[sword]\<d6> damage"
2. Generally speaking, if the status that the equipment is inflicting can be a verb, use the verb in the equipment description.
2. Use the verb "Add" when equipment gives the user shield.
3. Use the verb "Lose" when the equipment hurts the user (should be followed by "\[heart](number) health.").
4. Use the verb "Inflict" when the equipment inflicts poison (I'm also aware that Terry uses "inflict" and "add" interchangibly. Be better than Terry.).
5. Use the verb "Burn" when the equipment burns dice.
6. Use the verb "Freeze" when the equipment burns dice.
7. Use the verb "Increase" when the equipment increases an already existing status by a certain amount.
8. Use the verb "Recover" when the equipment heals the user.
9. Equipment that give the player more temporary dice should say "+1 dice this fight".
10. Use the verb "Roll" when the equipment rolls dice.
    * This includes when the equipment rolls specific numbers ("Roll a four").
11. Use the verb "Reroll" when the equipment rerolls existing dice.
12. Equipment that modify dice value should use the phrasing "Dice value +/-(number)".
13. Use the phrase "Shocks the enemy" when an equipment inflicts shock.
14. Use the verb "Discharge" when the equipment interacts with the charge variable in any way.
15. Use the verb "Drain" when the equipment does damage to the enemy and restores just as much health to you. Drain also uses the \[heart] symbol in 
16. Use the verb "Blind" when the equipment blinds dice.
17. Use the verb "Lock" when the equipment locks dice.
18. Use the phrase "Return the dice" when the equipment gives you back the dice.
19. Use the verb "Weaken" when the equipment weakens equipment.
20. Use the verb "Curse" when the equipment curses someone.
    * Example: "Curse enemy" or "Curse yourself".
21. Use the verb "Silence" when the equipment silences someone.
    * Example: "Silence enemy" or "Silence yourself".
22. Use the verb "Split" when the equipment splits dice. If you are unsure if your equipment splits a dice, check the equipment script and see if it calls the [split()](../Scripting/split().md) function.
23. Use the verb "Increase"/"Reduce" if the equipment modifies a value outside of the dice value.
24. Use the verb "Gain" when the equipment adds thorns.
25. Use the verb "Reduce" when the equipment gives you the reduce status.
26. Use the phrase "In (number) turns..." when your equipment uses jinx.
27. Use the verb "Duplicate" when the equipment duplicates dice.
28. Use the phrase "Cost: \[mana](number)" when an equipment costs mana to use.
29. Use the phrase "If \[mana](number) >/>=/</<= (number):" when an equipment has an additional effect if you have a certain amount of mana.
30. Use the phrase "Start of turn:" for start of turn effects on equipment.

13. Ignore all other verb rules if the equipment modifies a value by doubling, tripling, or quadrupling it. Instead use the verb "Double"/"Triple"/"Quadruple".


## Nouns
1. Refer to the opponent as "enemy". Do not capitalize any part of enemy unless it's in the beginning of the sentence.
2. Always refer to dice as dice. Never use the noun die. Only villains do that.