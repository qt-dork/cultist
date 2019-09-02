var i = 0;
for(i in 0...5) {
    var eq_name = rand(getequipment());
    while (self.hasequipment(eq_name)) {
        eq_name = rand(getequipment());
    }
    giveequipment(eq_name, true, true);
    if (equip_obj.script.indexOf('Spellbook') != -1 ||equip_obj.script.indexOf('Deck') != -1 ||equip_obj.script.indexOf('replacemewith') != -1 || equip_obj.script.indexOf('giveequipment') != -1 || equip_obj.countdown > 0 || equip_obj.slots.length == 0 || equip_obj.usesleft != 0) {
        self.equipment.remove(equip_obj);
    }

}
/*givedice(targets[s]);
eq_name.assigndice(self.dicepool[self.dicepool.length-1]|-1);
eq_name.doequipmentaction(self, target, eq.castdirection, eq.assigneddice|0);*/

var i = 0; for(i in 0...5) { var eq_name = rand(getequipment()); while (self.hasequipment(eq_name)) { eq_name = rand(getequipment()); } giveequipment(eq_name, true, true); if (equip_obj.script.indexOf('Spellbook') != -1 ||equip_obj.script.indexOf('Deck') != -1 ||equip_obj.script.indexOf('replacemewith') != -1 || equip_obj.script.indexOf('giveequipment') != -1 || equip_obj.countdown > 0 || equip_obj.slots.length == 0 || equip_obj.usesleft != 0) { self.equipment.remove(equip_obj); } }
/*givedice(targets[s]);
eq_name.assigndice(self.dicepool[self.dicepool.length-1]|-1);
eq_name.doequipmentaction(self, target, eq.castdirection, eq.assigneddice|0);*/