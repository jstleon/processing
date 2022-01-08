PFont font;
size(700, 700);
font = loadFont("AGBookRounded-Bold-120.vlw");
textFont(font);

line(width/2, 0, width/2, height);
fill(0);

textAlign(LEFT);
text("Left", width/2, 130);

textAlign(RIGHT);
text("Rigth", width/2, 380);

textAlign(CENTER);
text("Center", width/2, 650);
