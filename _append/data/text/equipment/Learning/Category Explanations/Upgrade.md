change_power — tells the game that there's an EquipmentName_upgraded entry for this item and to use that. This handles any complex upgrades
add1/add2/add3 — adds a FREEX to the slots (think Broadsword)
everyturn — removes the once-per-battle restriction from a once-per-battle item
increaserange — changes slot requirement to be +1 if MaxX or -1 if MinX, changes RangeXY to be MaxY+1
reducesize — changes a 2 size card into a 1 size card (using on a size 1 card crashes the game)
simplify — changes slots: Requires1/3/5 —> Odd, Requires2/4/6 —> Even, MaxX/MinX/Odd/Even —> Normal, doesn’t do anything to a countdown
threequartercountdown — reduces countdown by a quarter (presumably rounds down if it produces a fraction)
halfcountdown — reduces countdown by half (rounds down if odd)