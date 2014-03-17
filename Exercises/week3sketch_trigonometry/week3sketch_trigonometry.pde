size(800,200);
background(242,204,47);
fill(174,221,60);
float offset = 60.0; // Y offset
float scaleVal = 45.0; //scalevalue for the wave magnitude 
float angleInc = PI/30.0; // Increment between the next angle 
float angle = 0.0; // Angle to receive sine values from
for (int x = 0; x <= width;
x += 6) {
float y = offset + (sin(angle) * scaleVal);
rect(x, y, 2, 4); angle += angleInc; 
}
