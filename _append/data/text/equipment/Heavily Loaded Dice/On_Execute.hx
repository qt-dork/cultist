self.extradice--;
if (getstatusself(~heavyloaded_~ + self.getvar(~load~)) > 0) {
    removestatusself(~heavilyloaded_~ + self.getvar(~load~));
}
inflictself(~heavyloaded_~ + d);
self.setvar(~load~|d);