PImage img;
PImage photo2;

PImage photo;

void setup() {
  size(800, 550);
  photo = loadImage("crown_of_imperatrice_eugenie_by_lolotte10-d4vsv8l.png");
  photo2= loadImage("Lab-Dog-looking-sad.jpg");
  image(photo,0,0, photo.width/2, photo.height/2);
}

void draw() {
 
  image(photo2, 0, 0);
   image(photo, mouseX-(photo.width/2), mouseY-450);
}
