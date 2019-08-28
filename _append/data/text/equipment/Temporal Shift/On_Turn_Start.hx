if (getstatus(~bonus~) > 0) {
    self.endturnnow();
    removestatus(~bonus~|ALL);
    continue;
}
if (getstatusself(~bonus~) > 0) {
    inflictself(EXTRATURN|getstatusself(~bonus~)); 
    removestatusself(~bonus~|ALL); 
}