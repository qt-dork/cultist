# Description Style Guide
## Description
Have you ever wanted to make sure your wording in descriptions is just right? You're at the right place!

## General
1. Equipment should state what effect they do, even if the equipment itself just inflicts a status.
    * Example: Pierce Spell says "Ignore shields" instead of "Gain pierce". This phrasing is more clear to the user as to what the equipment does.
    * The exception to this rule is when you're introducing an effect in simple equipment that then gets used in more complicated equipment (e.g. Fury is introduced as "Repeat next attack" but then later is phrased as "10% chance of Fury").
2. Equipment descriptions should be as simple and to the point as possible. 
2. Equipment should always use the numeral form of numbers over their word form.
    * The exception to this rule is when referring to dice values that are being rolled (e.g. "Roll 2 sixes").
    * And also when the article "a" could reasonably be used.
    * And also when the word "ALL" is used instead.
3. Try to be as descriptive as possible of what the equipment does. The equipment should not leave the player thinking that the equipment will do something that it doesn't do.
4. Keep in mind localization of descriptions when writing. Don't try to do too much fancy wordplay that could be hard to translate or references to common saying in English that might not exist in other cultures. 
5. If an equipment interacts with variables that will change value throughout the fight and knowledge of the variable is useful to the player, list the current state in the equipment description.
    * You can do this in the description using `<var:variable>`.
    * A useful way to convey this to the player is with a phrase like "(Currently at `<var:variable>`!)").
6. Symbols (e.g. \[heart], \[ice], \[fire]) should precede the number, and not the verb.
    * Do "Burn \[fire]4 dice" instead of "\[fire]Burn 4 dice".
    * You can see a full list of symbols over in the [Description](./Description.md) page.
7. Symbols should touch the number to make sure the number is colored.
    * Do "Burn \[fire]4 dice" instead of "Burn \[fire] 4 dice".
8. Try to avoid end of turn effects on equipment due to used equipment not being able to execute code.

## Nouns
1. Always refer to the opponent as "enemy". Do not capitalize any part of enemy unless it's in the beginning of the sentence.
2. Always refer to the fight as "fight" in equipment. Do not refer to the fight as a "battle", "duel", or "
    * Do "+1 dice this fight" instead of "+1 dice this battle".
3. Always refer to equipment as "equipment". Equipment is always used. The only exceptions to this rule are:
    1. Always refer to Inventor's gadgets as "gadgets". Gadgets are always used.
    2. Always refer to Witch's equipment as "spells". Spells are always cast.
    3. Always refer to Jester's equipment as "cards". Cards are always played.
4. Always use the word "all" when your equipment interacts with all of someone's stuff
    * Do "Burn \[fire]all dice" instead of "Burn \[fire]ALL dice".
    * Do "Shock \[shock]all equipment" instead of "Shock \[shock]ALL equipment".
5. Always refer to dice as dice. Never use the noun die. Only villains do that.

## Verbs
1. Use the verb "Do" when equipment does damage directly (I'm aware that Terry uses "do" and "deal" interchangibly. Be better than Terry. Use "do".)
    * Do "Do \[sword]\<d6> damage" instead of "Deal \[sword]\<d6> damage".
2. Generally speaking, if the status that the equipment is inflicting can be a verb, use the verb in the equipment description.
    * Do "Silence enemy" instead of "Inflict \[silence]1 silence".
3. Use the verb "Add" when equipment gives the user shield.
    * Do "Add \[shield]4 shield" instead of "Gain \[shield]4 shield" or "Add \[shield]4 to shield"
4. Use the verb "Lose" when the equipment hurts the user (should be followed by "\[heart](number) health.").
    * Do "Lose \[heart]4 health" instead of "Take \[sword]4 damage" or "Hurt yourself for \[sword]4".
5. Use the verb "Inflict" when the equipment inflicts poison (I'm also aware that Terry uses "inflict" and "add" interchangibly. Be better than Terry.).
    * Do "Inflict \[poison]4 poison" instead of "Add \[poison]4 poison".
6. Use the verb "Burn" when the equipment burns dice.
    * Do "Burn \[fire]4 dice" instead of "Inflict \[fire]4 burn".
7. Use the verb "Freeze" when the equipment freezes dice.
    * Do "Freeze \[ice]4 dice" instead of "Inflict \[ice]4 freeze".    
8. Use the verb "Recover" when the equipment heals the user.
    * Do "Recover \[heal]4 health" instead of "Heal \[heal]4 health".
9. Equipment that give the player more temporary dice should say "+1 dice this fight".
26. Use the verb "Reduce" when the equipment gives you the reduce status.
    * Do "Reduce \[reduce]4 damage from each attack" instead of "Inflict \[reduce]4 reduce".
    * To save space, you can use the verb "Gain" instead (e.g. "Gain \[reduce]4 reduce").
10. Use the verb "Roll" when the equipment rolls dice.
    * Do "Roll 4 dice" instead of "Give 4 dice" or "Get 4 dice".
    * This includes when the equipment rolls specific numbers ("Roll a four").
12. Use the verb "Reroll" when the equipment rerolls existing dice.
    * Do "Reroll your dice" instead of "Roll your dice again".
13. Equipment that modify dice value should use the phrasing "Dice value +/-(number)".
    * Do "Dice value +1" instead of "Increase your dice by 1".
14. Use the phrase "Shocks the enemy" when an equipment shocks only 1 equipment.
    * Do "\[shock]Shocks the enemy" instead of "Inflicts \[shock]1 shock."
    * This is an exception to the "Symbols should precede numbers" rule.
15. If the equipment shocks more than 1 equipment, then use the phrase "Shock \[shock]\(number) equipment"
    * Do "Shock \[shock]4 equipment" instead of "Inflict \[shock]4 shock" or "+\[shock]4 shock" or "\[shock]4 shock".
20. Use the phrase "\[weaken]Weakens enemy" when the equipment weakens only 1 equipment.
    * Do "\[weaken]Weakens enemy" instead of "Inflict \[weaken]1 weaken".
    * This is an exception to the "Symbols should precede numbers" rule.
16. If the equipment weakens more than 1 equipment, then use the phrase "Weaken \[weaken]\(number) equipment"
    * Do "Weaken \[weaken]4 equipment" instead of "Inflict \[weaken]4 weaken".
15. Use the verb "Discharge" when the equipment interacts with the charge variable in any way.
    * Do "Discharge \[sword]\<charge> damage" instead of "Do \[sword]\<charge> damage" or "Release \[sword]\<charge> as damage".
16. Use the verb "Drain" when the equipment does damage to the enemy and restores just as much health to you. Drain also uses the \[heart] symbol instead of the \[sword] symbol.
    * Do "Drain \[heart]4 health" instead of "Drain \[sword]4 health" or Drain \[heart]4 damage" or "Do \[sword]4 damage and heal it as health".
17. Use the verb "Blind" when the equipment blinds dice.
    * Do "Blind \[blind]4 dice" instead of "Inflict \[blind]4 blind" or "\[blind]Blind enemy".
18. Use the verb "Lock" when the equipment locks dice.
    * Do "Lock \[lock]4 dice" instead of "Inflict \[lock]4 lock".
19. Use the phrase "Return the dice" when the equipment gives you back the dice.
    * Do "Return the dice" instead of "Get the dice back".
21. Use the verb "Curse" when the equipment curses someone.
    * Do "Curse enemy" or "Curse yourself" instead of "Inflicts 1 curse".
22. Use the verb "Silence" when the equipment silences someone.
    * Do "Silence enemy" or "Silence yourself" instead of "Inflicts 1 silence".
23. Use the verb "Split" when the equipment splits dice. If you are unsure if your equipment splits a dice, check the equipment script and see if it calls the [split()](../Scripting/split().md) function.
    * Do "Split a dice" instead of "Cut a dice in half".
24. Use the phrase "Increase (object) by (number)"/"Reduce (object) by (number)" if the equipment modifies a value outside of the dice value.
    * Do "Reduce CPU counter by 4" instead of "Decrement CPU counter by 4"
    * To save space, you can instead use the phrase "(object) +/-(number)" (e.g. "CPU counter +4").
25. Use the verb "Gain" when the equipment adds thorns.
    * Do "Gain \[thorns]4 thorns" instead of "Add \[thorns]4 thorns".
27. Use the phrase "In (number) turns..." when your equipment uses jinx.
    * Do "In \[jinx]4 turns, do \[sword]4 damage" instead of "Do \[sword]4 damage in \[jinx]4 turns" or "Jinx \[jinx]4: Do \[sword]4 damage". 
28. Use the verb "Duplicate" when the equipment duplicates dice.
    * Do "Duplicate a dice" instead of "Roll a copy of this dice" or "Give a copy of this dice".
29. Use the phrase "Cost: \[mana](number)" when an equipment costs mana to use.
30. Use the phrase "If \[mana](number) >/>=/</<= (number):" when an equipment has an additional effect if you have a certain amount of mana.
31. Use the phrase "Start of turn:" for start of turn effects on equipment.
32. Use the verb "Use" when referring to equipment being used.
33. Use the verb "Cast" when referring to Witch's spells being used.
34. Use the verb "Play" when referring to Jester's cards being used.
32. Ignore all other verb rules if the equipment modifies a value by doubling, tripling, quadrupling, or quintupling it. Instead use the verb "Double"/"Triple"/"Quadruple"/"Quintuple".

### Unique Verbs
When coming up with your own unique statuses that use their own verbs, try following these rules to figure out how to describe the action.
1. Does this status stack? Statuses that don't stack usually use their name as their verb.
    * Example: "Silence enemy".
2. What does this status interact with? Statuses that interact with dice or equipment usually use their name as their verb.
    * Example: "Freeze \[ice]4 dice" or "Weaken \[weaken]4 equipment".
3. If this status interacts with the enemy or yourself, think about how this interaction occurs. Statuses that usually do something to someone use their names as verbs.
    * Example: "Drain \[heart]4 health".
4. How numerical is this status? Statuses that interact with number or count and don't do something immediate usually use the verbs "Add", "Lose", "Gain", "Reduce".
    * Example: "Add \[shield]4 shield", "Gain \[thorns]4 thorns", or "Lose \[heart]4 health".
5. How negative is this status? Statuses that can hurt the enemy but can't use their names as verbs usually use the verb "Inflict".
    * Example: "Inflict \[poison]4 poison".
    * Try to avoid using the verb "Inflict" when another verb would fit better. It's an easy mistake to make.

## Punctuation
1. Don't use periods in equipment descriptions.
2. Phrases in parentheses should always capitalize the first word (I'm aware that Terry is inconsistent about this rule. Be better than Terry. Capitalize the first word.)
    * Do "\[gray]\(Reusable)" instead of "\[gray]\(reusable)".
3. Phrases in parentheses should also be grayed out using \[gray] only if they relate to equipment itself and not what the equipment does.
    * Do "\[gray]\(Reusable)" instead of "(Reusable)". Don't do "\[gray]\(Always offered as scrap)" or "\[gray]\(Currently 12!).
4. Try to use commas to indicate pauses, ifs, or any other logical statement where order matters.