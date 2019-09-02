if (getstatus("stolen") > 0) {
    target.extradice += getstatus("stolen");
    removestatus("stolen", ALL);
}