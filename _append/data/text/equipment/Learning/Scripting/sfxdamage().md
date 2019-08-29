# sfxdamage()
## Description
sfxdamage() plays attack sfx. The reason it exists is to dynamically make the severity of the attack sounds match the damage dealt.

## Usage
`sfxdamage(target, amount);`

> Note: Commas are replaced with pipes and quotes are replaced with tildes.

### Target
This dictates where the sound is coming from. I don't actually know too much about how this effects sfx stuff, but you should be using *target* when it deals damage to the opponent and *self* when it deals damage to yourself (if you know how this effects anything please let me know and I'll update the documentation).

### Amount
Amount dictates how severe the sound is that plays. You don't have to use plain numbers, you can use variables, d for the dice value just inserted, or anything that returns a number!