//size(300,300);
//background(242,204,47);
//ellipse(20,20,30,30);
//ellipse(150,150,100,100);
//
//
////x=5,10.15,20...
//for (int x = 5; x < 26; x=x+5) {
//  if ((x>15)&(x<26)){
//    stroke(255,0,0);
//  } else { stroke(150,0,0);
//  }
//  line(x,0,x,height);
//}
//
//fill(174,221,60);
//smooth();
//beginShape();
//vertex(50,50); 
//vertex(75,75); 
//vertex(150,50); 
//vertex(75,25);
//endShape(CLOSE);
//
//smooth();
//noStroke();
//beginShape();
//vertex(150,150);
//bezierVertex(150,150,80,220,150,80);
//bezierVertex(150,80,220,220,150,150);
//endShape();



size(600,600);
PImage myImage;
PImage myImage2;
myImage = loadImage("sadpug.jpg");
myImage2 = loadImage("Doggy.jpg");
tint(100,200,300);

image(myImage,0,0,width,height);
float scale = 0.3;
tint(100,200,100);
image(myImage2,-180,200,myImage2.width * scale, myImage2.height * scale);
