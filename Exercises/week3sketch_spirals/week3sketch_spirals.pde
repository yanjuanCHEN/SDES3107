size(600,600);
background(0);


noStroke();
smooth();
float radius = 1.0;
for (int deg = 1; deg < 360*50; deg += 12) {
float angle = radians(deg);
float x = 300 + (cos(angle) * radius); 
float y = 300 + (sin(angle) * radius); 
ellipse(x, y, 7, 4);
radius += 0.30;
}
