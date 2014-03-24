void stup() {
size(500,500);
fill(100);
noStroke();
}

void draw() {
  background(255);
  int randomPos = int(random(200.0));
  rect(randomPos, randomPos+ 20, 60, 50);
}
