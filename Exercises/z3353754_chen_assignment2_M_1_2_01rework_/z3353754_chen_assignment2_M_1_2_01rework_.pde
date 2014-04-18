// M_1_2_01.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * order vs random! 
 * how to interpolate beetween a free composition (random) and a circle shape (order)
 * 
 * MOUSE
 * position x          : fade between random and circle shape
 * 
 * KEYS
 * p                   : save pdf
 * s                   : save png
 */

import processing.pdf.*;
import java.util.Calendar;
PImage lion;// add image
PFont f;// add font


boolean savePDF = false;

int actRandomSeed = 0;
int count = 150;
int option = 1;

void setup() {
  size(800,700); 
  lion = loadImage("lion2.png");//add image
  //f = createFont("Baskerville-SemiBoldItalic-190.vlw",90);

 
  cursor(CROSS);
  smooth();
}

void draw() {

  
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
  background(124,72,4);//color changed
  noStroke();

  float faderX = (float)mouseX/width;

  randomSeed(actRandomSeed);
  float angle = radians(360/float(count));
  for (int i=0; i<count; i++){
    // positions
    float randomX = random(50,width); //changed position 
    float randomY = random(50,height);//changed position 
    float circleX = width/2 + cos(angle*i)*300;
    float circleY = height/2 + sin(angle*i)*500;//changed position

    float x = lerp(randomX,circleX, faderX);
    float y = lerp(randomY,circleY, faderX);

    fill(242,149,27);//color changed
    rect(x,y,20,20);//change shape
      fill(250,194,10);
 ellipse(x+50,y+40,10,10);//add ellipses
   
    
    image(lion,250,200,width/2.5,height/2);//
   
     noFill();
     stroke(255,116,3,60);
     line(400,50,100,600);//
     line(100,600,700,600);//
     line(400,50,700,600);//
      line(100,150,700,150);//
     line(700,150,400,700);//
     line(400,700,100,150);//
     
     

   

  }
  stroke(246,255,3,60);//
if (option == 1) {//
    //  Perspective
    for (int x = 60; x <= width-40; x += 40) {//
      for (int y = 60; y <= height-40; y+=40) {//
        line(x, y, width/2, height/2);//
      }
    }
  } 
  
   fill(255);
     text("coming soon...", width-mouseX,height-mouseY);//add text
     text("Lion King",mouseX,mouseY);// add text
     
  fill(174,221,60);
float offset = 60.0; // Y offset
float scaleVal = 45.0; //scalevalue for the wave magnitude 
float angleInc = PI/20.0; // Increment between the next angle 
float Angle = 0.0; // Angle to receive sine values from
for (int x = 0; x <= width;//
x += 6) {
float y = offset + (sin(angle) * scaleVal);//
rect(x, y, 5, 5);  //
rect(x,y+580,5,5);angle += angleInc;//
}
float of = 60.0; // Y offset
float scal = 45.0; //scalevalue for the wave magnitude 
float angl = PI/20.0; // Increment between the next angle 
float An = 0.0; // Angle to receive sine values from
for (int x = 0; x <= width;//
x += 6) {
float y = offset + (cos(angle) * scaleVal);//
rect(x, y, 5, 5);  //
rect(x,y+580,5,5);angle += angleInc;//
}


  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}


void mouseReleased() {
  actRandomSeed = (int) random(100000);
}

void keyReleased() {  
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_####.png");
  if (key == 'p' || key == 'P') savePDF = true;
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}





