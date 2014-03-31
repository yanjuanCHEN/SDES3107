PImage img;
PImage zoom;
PImage eye1,eye2;
color pixelColour;

void setup() {
  size(600,600);
  img = loadImage("Beautifull-cat-cats-14749885-1600-1200.jpg");
}
void draw(){
  image(img,0,0,width,height);
  
  eye1 = get(207-20,148-20,40,40);
  image(eye1,207-40,148-40,80,80);
  
  eye2 = get(297-20,148-20,40,40);
  image(eye1,297-40,148-40,80,80);
  
  zoom = get(mouseX-10,mouseY-10,20,20);
  image(zoom,mouseX+60,mouseY,80,80);
  pixelColour = get(mouseX,mouseY);
  fill(pixelColour);
  ellipse(mouseX+30,mouseY,50,50);
}
  
