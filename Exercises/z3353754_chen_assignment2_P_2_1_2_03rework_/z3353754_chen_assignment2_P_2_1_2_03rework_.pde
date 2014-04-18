// P_2_1_2_03.pde
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
 * changing size of circles in a rad grid depending the mouseposition
 * 	 
 * MOUSE
 * position x/y        : module size and offset z
 * 
 * KEYS
 * s                   : save png
 * p                   : save pdf
 */
 
import processing.opengl.*;
import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;
float r;
float g;
float tileCount = 20;
color moduleColor = color(255,179,13);//change colour
int moduleAlpha = 180;
int actRandomSeed = 0;
int max_distance = 500; 
int x = 300;//
int y = 300;//
float size = 40;//
float hue = 60;//
float transparency = 60;//



void setup(){
  size(800, 700, OPENGL);//change size
  
  
}

void draw() {
  if (savePDF) beginRaw(PDF, timestamp()+".pdf");
 

  background(255);//change color
  smooth();
  noFill();
 
 
  

  randomSeed(actRandomSeed);

  stroke(moduleColor, moduleAlpha);
  strokeWeight(1.5);//change the stroke

  for (int gridY=0; gridY<width; gridY+=25) {
    for (int gridX=0; gridX<height; gridX+=25) {

      float diameter = dist(mouseX, mouseY*g+20, gridX, gridY);//
      diameter = diameter/max_distance * 40;
      pushMatrix();
      translate(gridX, gridY, diameter*5);
      ellipse(0, 0, diameter, diameter);    //changed shape
   
      
      
      popMatrix(); 
      
    }
  }
  fill(246,255,3,80);
 
float radius = 2.0;
for (int deg = 1; deg < 360*60; deg += 12) {
float angle = radians(deg);
float x = 300 + (cos(angle) * radius); 
float y = 300 + (sin(angle) * radius); 
ellipse(x, y, 7, 7);
radius += 0.80;
}
  
 colorMode(HSB, 260,100,100);//


for (int i =0; i < 300; i++) {//
  // setting random values of coordinates and colours
  x= round(random(width));//
  y= round(random(height)); //
  size= random(10,40);//
  hue= random(160,230);//
  transparency =random(100);//
  
  fill(hue,100,100,transparency);//
  rect(x,y,size,size);//
 

}
fill(176,52,245);//
ellipse(680,70,80,80);//
scale(1.5);//
fill(176,52,245);//
ellipse(400,120,80,80);//
fill(240,87,214,60);//
ellipse(450,90,100,100);//


translate(width/2,height/2);//
rotate(PI/8);//
fill(176,52,245,50);//
rect(-25,-25,60,60);//

translate(33,0);//
fill(176,52,245,50);//
rect(0,0,65,40);//

rotate(PI/10);//

fill(240,87,214);//
rect(0,0,8,50);//
fill(0);


  if (savePDF) {
    savePDF = false;
    endRaw();
  }

  
}

void mousePressed() {
  actRandomSeed = (int) random(100000);
}

void keyReleased(){
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
  if (key == 'p' || key == 'P') savePDF = true;
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}





