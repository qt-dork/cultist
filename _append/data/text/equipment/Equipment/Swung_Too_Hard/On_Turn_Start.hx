if (getstatusself(~smashed~) > 0) {
    for (i in 0...getstatusself(~smashed~)) {
        var equip = rand(self.equipment);
        while (equip.ready == 0) {
            trace(equip.name);
            equip = rand(self.equipment);
        }
        trace(equip.name);
        equip.animate(~error~);
        sfx(~roboterror~);
    }
    removestatusself(~smashed~|ALL);
}