var i = 1;
var acceptable = [];
var banned = [];
var banall = false;
for (i in 1...7) {
    if (getstatusself("dicelock_" + i) > 0) {
        banned.push(i);
    } 
    else { 
        acceptable.push(i);
    } 
}
if (acceptable.length < 1) {
    banall = true;
}
i = 1;
for (mydice in self.dicepool){
    if (mydice.available()) { 
        for (i in banned) { 
            if (mydice.basevalue == i) { 
                if (banall == true) { 
                    mydice.removedice(self.screenposition()); 
                } 
                else { 
                    mydice.animatereroll(rand(acceptable)); 
                } 
            }
        }
    i = 1;
    }
}