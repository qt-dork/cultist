var i = 0;
for (mydice in self.dicepool) {
    if (mydice.available()) {
        for (i in 1...7) {
            if (mydice.basevalue == getstatusself(~spatulambit_~+i)) {
                target.textparticle(~It's a hit!~);
                attack((7 - i) * 3);
                sfxdamage(target|(7 - i) * 3);
                removestatusself(~spatulambit_~+i|1);
                break;
            }
        }
        i = 0;
    }
}

var i = 0; for (mydice in self.dicepool) { if (mydice.available()) { for (i in 1...7) { if (mydice.basevalue == getstatusself(~spatulambit_~+i)) { target.textparticle(~It's a hit!~); attack((7 - i) * 3); sfxdamage(target|(7 - i) * 3); removestatusself(~spatulambit_~+i|1); break; } } i = 0; } }