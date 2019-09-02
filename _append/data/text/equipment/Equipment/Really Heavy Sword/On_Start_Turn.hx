if (getstatusself(~dicecard~) > 0) { 
    var i = 0; 
    for (i in 0...getstatusself(~dicecard~)) { 
        var remove = []; 
        for (mydice in self.dicepool) { 
            if (mydice.available()) { 
                remove.push(mydice); 
            }
        }
        shuffle(remove); 
        remove[0].removedice(self.screenposition());
    }
}
removestatusself(~dicecard~|ALL);