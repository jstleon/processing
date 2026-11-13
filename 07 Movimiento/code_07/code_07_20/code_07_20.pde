PFont font;

void setup(){
size(800, 800);
font = loadFont("Futura120.vlw");
textFont(font);
}

void draw(){
background(0);
int d = day();
int m = month();
int y = year();

//String t2 = h + ":" + m + ":" + s;
String t = d + "." + m + "." + y;
text(t, 90, 430);
}
