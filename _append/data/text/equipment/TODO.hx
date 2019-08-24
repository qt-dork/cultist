if (getstatusself(~heavyloaded_~ + self.getvar(~load~)) > 0) {
    for (mydice in self.dicepool) {
        if (mydice.available()) {
            if (mydice.basevalue != self.getvar(~load~)) {
                mydice.animatereroll(self.getvar(~load~));
            }
        }
    }
}

var dicelist = []; for (mydice in self.dicepool){ if (mydice.available() && mydice.basevalue != d){ dicelist.push(mydice); } } if(dicelist.length > 0) { shuffle(dicelist); dicelist[0].animatereroll(d| self.screenposition()); } givedice(d);

var dicelist = [];
pierceattackself(2);
if(d >= 6) {
    givedice([6| 1]); 
}
else {
    givedice(d + 1);
}
for (mydice in self.dicepool) {
    if (mydice.available()) {
        trace(mydice);
        dicelist.push(mydice);
    }
}
trace(dicelist[dicelist.length]);
trace(dicelist[dicelist.length-1]);
if (dicelist[dicelist.length - 1] >= 6) {
    givedice(1);
}
else {
    dicelist[dicelist.length - 1].animatereroll(dicelist[dicelist.length - 1] + 1);
}

var dicelist = []; pierceattackself(2); if(d >= 6) { givedice([6| 1]); } else { givedice(d + 1); } for (mydice in self.dicepool) { if (mydice.available()) { dicelist.push(mydice); } } if (dicelist[dicelist.length - 1] >= 6) { givedice(1); } else { dicelist[dicelist.length - 1].animatereroll(dicelist[dicelist.length - 1] + 1); }

var dicelist = []; pierceattackself(2); if(d >= 6) { givedice([6| 1]);  } else { givedice(d + 1); } for (mydice in self.dicepool) { if (mydice.available()) { trace(mydice); trace(mydice.basevalue); dicelist.push(mydice); } } trace(dicelist[dicelist.length]); trace(dicelist[dicelist.length].basevalue); trace(dicelist[dicelist.length-1]); trace(dicelist[dicelist.length-1].basevalue); if (dicelist[dicelist.length - 1].basevalue >= 6) { givedice(1); } else { dicelist[dicelist.length - 1].animatereroll(dicelist[dicelist.length - 1] + 1); }