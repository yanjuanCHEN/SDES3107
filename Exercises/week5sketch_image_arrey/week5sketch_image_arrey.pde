int numFrames = 15;
int frame = 0;
int xCoordinate = 0;

PImage[] images = new PImage[numFrames];

void setup() {
  size(700,100);
  frameRate(30);
  images[0] = loadImage("00.jpg");
  images[1] = loadImage("01.jpg");
  images[2] = loadImage("02.jpg");
  images[3] = loadImage("03.jpg");
  images[4] = loadImage("04.jpg");
  images[5] = loadImage("05.jpg");
  images[6] = loadImage("06.jpg");
  images[7] = loadImage("07.jpg");
  images[8] = loadImage("08.jpg");
  images[9] = loadImage("09.jpg");
  images[10] = loadImage("10.jpg");
  images[11] = loadImage("11.jpg");
  images[12] = loadImage("12.jpg");
  images[13] = loadImage("13.jpg");
  images[14] = loadImage("14.jpg");
}

void draw() {
  background(255);
  xCoordinate +=4;
  frame++;
  if ( xCoordinate > width) {
    xCoordinate = -60;
    
  }
  if (frame == numFrames) {
    frame =0;
  }
  image(images[frame],xCoordinate,0);
}
