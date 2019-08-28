var i = 0;
for (i in 1...7) {
    for (mydice in self.dicepool) {
        trace(i);
        trace(getstatusself(~gambit_~+i));
        if (mydice.available()) {
            trace(mydice.basevalue);
            if (mydice.basevalue == i) {
                if (getstatusself(~gambit_~+i) > 0) {
                    target.textparticle(~It's a hit!~);
                    attack(i * 3);
                    sfxdamage(target|i * 3);
                    removestatusself(~gambit_~+i|1); 
                }
            }
        }
    }
    removestatusself(~gambit_~+i|ALL);
}