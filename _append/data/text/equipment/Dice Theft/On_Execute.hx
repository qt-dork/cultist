if (target.dice + target.extradice < 3) {
    var i = 0;
    for (i in 0...target.dice+target.extradice) { 
        givedice(); 
        target.extradice--; 
        inflict(~stolen~|1); 
    }
}
else {
        givedice([rand([1|2|3|4|5|6])|rand([1|2|3|4|5|6])|rand([1|2|3|4|5|6])]);
        target.extradice-=3;
        inflict(~stolen~|3);
}
