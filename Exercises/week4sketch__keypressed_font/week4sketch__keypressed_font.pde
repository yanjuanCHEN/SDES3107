PFont myFont;

void setup() {
  myFont =createFont("Arial",32);
  textFont(myFont,32);
}

void draw() {
  background(0);
  
 if (keyPressed == true){
   text(key,28,75);
 }
}
