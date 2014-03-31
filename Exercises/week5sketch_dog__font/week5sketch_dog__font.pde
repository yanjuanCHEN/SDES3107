PImage doge;
PFont f;

int[] hues = {131,300, 60,5};
void setup() {
  size(1000,600);
  colorMode(HSB,360,100,100);
  doge = loadImage("doge.jpg");
  f = createFont("Serif-48",24);
  textFont(f);
  textAlign(CENTER);
  fill(0);
}
void draw() {
  image(doge,0,0,width,height);
  fill(hues[0],100,100);
  text("such avoid", width-mouseX,height-mouseY);
  fill(hues[1],100,100);
  text("wow",mouseX,mouseY);
}
