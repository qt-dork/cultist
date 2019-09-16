if (getstatusself(~heavyloaded_~ + self.getvar(~load~)) > 0) {
    for (mydice in self.dicepool){
        if (mydice.available()) { 
            if (mydice.basevalue != self.getvar(~load~)) { 
                mydice.animatereroll(self.getvar(~load~));
            } 
        } 
    } 
}