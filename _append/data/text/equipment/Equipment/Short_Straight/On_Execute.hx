var i = 1;
trace(actualdice[0].basevalue); trace(actualdice[1].basevalue); trace(actualdice[2].basevalue); trace(actualdice[3].basevalue);
for (i in 1...4) {
    trace(actualdice[0].basevalue); trace(actualdice[1].basevalue); trace(actualdice[2].basevalue); trace(actualdice[3].basevalue);
    if (actualdice[0].basevalue == i && actualdice[1].basevalue == i+1 && actualdice[2].basevalue == i+2 && actualdice[3].basevalue == i+3) {
        attack(d);
    }
}

givedice([actualdice[0]|actualdice[1]|actualdice[2]|actualdice[3]]); 
e.animate(~error~);
sfx(~roboterror~);