//AmericanTypewriter-CondensedLight-20.vlw
//AvenirNext-Bold-20.vlw
//Baskerville-SemiBoldItalic-20.vlw

size(500,500);
background(0);

PFont font1;
PFont font2;
PFont font3;

font1 = loadFont("AmericanTypewriter-CondensedLight-20.vlw");

font2 = loadFont("AvenirNext-Bold-20.vlw");

font3 = loadFont("Baskerville-SemiBoldItalic-20.vlw");

textFont(font1);
fill(174,221,60);
textSize(30);
text("whats up?!",100,100);
textFont(font2);
textSize(50);
fill(242,204,47);
text("Cheer Up!", 200,200);
textFont(font3);
textSize(60);
fill(250);
text("wake up!",100,400);




