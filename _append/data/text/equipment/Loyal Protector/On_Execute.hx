// Normal
inflictself(SHIELD,self.hp - 1);
pierceattackself(self.hp - 1);
sfx("_shield");

// Upgraded
inflictself(SHIELD,2 * (self.hp - 1));
pierceattackself(self.hp - 1);
sfx("_shield");