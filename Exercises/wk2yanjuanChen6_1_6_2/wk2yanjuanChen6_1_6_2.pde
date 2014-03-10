size(300,300);
background(0);
ellipse(20,20,30,30);
ellipse(150,150,100,100);


//x=5,10.15,20...
for (int x = 5; x < 26; x=x+5) {
  if ((x>15)&(x<26)){
    stroke(255,0,0);
  } else { stroke(150,0,0);
  }
  line(x,0,x,height);
}

