PFont font;

void setup(){
size(800, 800);
font = loadFont("Futura120.vlw");
textFont(font);
}

void draw(){
background(0);
int s = second();
int m = minute();
int h = hour();

//String t2 = h + ":" + m + ":" + s;
String t = nf(h, 2) + ":" + nf(m, 2) + ":" + nf(s, 2);
text(t, 125, 430);
}
