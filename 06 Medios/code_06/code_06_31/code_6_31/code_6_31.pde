PFont font;

size(500, 500);
font = loadFont("BebasNeueBook-72.vlw");
textFont(font);

String lines = "L1 L2 L3";
fill(0);

textLeading(55);
text(lines, 5, 15 , 60, 400);

textLeading(80);
text(lines, 200, 15 , 60, 400);

textLeading(120);
text(lines, 400, 15 , 60, 400);
