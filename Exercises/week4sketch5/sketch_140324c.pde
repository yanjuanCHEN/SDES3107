PImage img;
PImage img2;

PImage photo;

void setup() {
  size(800, 800);
  photo = loadImage("crown_of_imperatrice_eugenie_by_lolotte10-d4vsv8l.png");
}

void draw() {
  image(photo, 0, 0);
}
