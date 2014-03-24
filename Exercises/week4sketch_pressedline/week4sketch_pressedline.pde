void setup () {
  size(100, 100);

}


void draw() {
  background (204);

  if (keyPressed == true) {
    if (key == '1') {
      line(50, 50, 100, 0);
    }
    if (key == '2') {
      line(50, 50, 100, 100);
    }
  }
}

