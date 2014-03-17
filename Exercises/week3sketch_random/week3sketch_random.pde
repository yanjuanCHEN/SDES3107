size (600,600);
int x = 300;
int y = 300;
float size = 40;
float hue = 60;
float transparency = 60;
colorMode(HSB, 360,100,100);

// 0 1 2 3 4 5 6...99
for (int i =0; i < 300; i++) {
  // setting random values of coordinates and colours
  x= round(random(width));
  y= round(random(height)); 
  size= random(10,40);
  hue= random(160,230);
  transparency =random(100);
  
  fill(hue,100,100,transparency);
  ellipse(x,y,size,size);
 

}
