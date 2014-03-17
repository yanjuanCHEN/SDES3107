size(500,100);
float v =0.0;
float inc = 0.1;
noStroke();
fill(0);
noiseSeed(0);

for (int i = 0; i < width; i= i+5) {
  float n = noise(v) * 80.0;
  //float n =random(0,1)* 80.0;
  rect(i,10+n,3,20);
  v = v + inc;
}
