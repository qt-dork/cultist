# Chance()
## Description
Chance() is a function that takes an int between 1 and 100, and returns a bool. The number inputted is just the odds that chance() will return true. Chance is usually used alongside a formula that accounts for the luck status, which is supposed to increase your odds of luck-based events happening in the game.

## Usage
```haxe
var odds = 25;
if (getstatusself("luck") > 0) {
    odds += 25;
}
else if (getstatusself("luck+") > 0) {
    odds = 100;
}

attack(d);
if (chance(odds)) {
    self.textparticle("Success!");
    inflictself(FURY);
}
```
> As with all other examples, replace quotes with tildes in the csv.
This formula also accounts for the luck status, which improves your odds of getting good outcomes on luck-based events. Luck doubles your chances of getting the good outcome while Luck+ guarantees it.

### Odds
Chance() should be inputting odds as the variable. Odds should be set to what the initial odds are, and then it's modified based on if you have Luck.

### getstatusself("luck")
This bit checks to see if you have any of the Luck status, and if so, then it modifies your odds to increase your chances of success ([getatusself()](./getstatus()) checks if you have any Luck).

### self.textparticle("Success!")
Read about [textparticle()](./textparticle()) here!

Overall, the structure of chance() equipments are as follows:
1. Set the initial odds
2. Modify it based on Luck results (double it on Luck, guarantee it on Luck+)
3. if (chance(odds))
4. Do the bonus effect if chance returns true