# Description
## Description (Wow that's meta)
It's just your item description! Maximum length is 2 lines on size 1 equipment and 3 lines on size 2 equipment. I think equipment that's 4 lines long crashes the game when you open it? Description names should be brief due to space constraints, so no Magic-styled legalese descriptions! Descriptions should avoid punctuation when possible, excluding commas.

Use a `|` to indicate newlines, and `[;]` instead of a comma to avoid csv issues!

You can include `self.setvar()`-styled variables in it using `<var:name>`!

## Real World Example
`Convert all but 1|of your health to shield`

## Symbols You Can Use
Name | Description | Example
--- | --- | ---
`<d6>` | an outlined d6 | `Deal [sword]<d6> damage`
`<double>` | 2x an outlined d6 | `Deal [sword]<double> damage`
`<triple>` | 3x an outlined d6 | `Deal [sword]<triple> damage`
`<quadruple>` | 4x an outlined d6 | `Deal [sword]<quadruple> damage`
`[sword]` | A sword icon! Text following it is white. Should be placed before damage values. | `Deal [sword]<d6> damage`
`[shield]` | A shield icon! Text following it is orange. Should be placed before values that indicates how much shield you'll gain. | `Give yourself [shield]<d6> shield`
`[heart]` | A heart icon! Text following it is red. Should be placed before health drain and siphon values. | `Drain [heart]<d6> health`
`[lock]` | A lock icon! Text following it is white. Should be placed before values that indicate how much lock you're dealing. | `Lock [lock]2 equipment`
`[heal]` | A green plus icon! Text following it is green. Should be placed before healing values. | `Heal [heal]<d6> health`
`[poison]` | A poisonous bubble icon! Text following it is purple. Should be placed before poison values. | `Inflict [poison]4 poison`
`[ice]` | A cyan ice cube icon! Text following it is cyan. Should be placed before freeze values. | `Freeze [ice]3 dice`
`[fire]` | A flame icon! Text following it is red. Should be placed before burn values. | `Burn [fire]3 dice`
`[dice]` | A dice icon! Text following it is white. I don't think should ever be used? It's used only once in Marmalade | `Get a [dice]6 next turn`