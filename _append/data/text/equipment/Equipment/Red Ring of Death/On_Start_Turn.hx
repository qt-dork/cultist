if (turn > 1) {
    self.setvar(~remaining~|self.getvar(~remaining~) - 1);
}
if (self.getvar(~remaining~) < 1) {
    attack(self.getvar(~damagedeal~));
    sfxdamage(target|self.getvar(~damagedeal~));
    self.setvar(~damagedeal~|20);
    self.setvar(~remaining~|5);
}