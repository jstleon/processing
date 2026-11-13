color olive, gray;

void setup(){
  size(1000, 1000);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  smooth();
  olive = color(75, 61, 59);
  gray = color(30, 17, 42);
}

void draw(){
   float y = mouseY / float(height);
   background(gray);
   fill(olive);
   quad(700 + y * 60, 0, width, 0, height, height, 300 - y * 60, width);
   color yellow = color(48 + y * 20, 100, 88 -y * 20);
   fill(yellow);
   ellipse(500, 450 + y * 100, 600, 600);
   color orange = color(29, 100, 83 - y * 10);
   fill(orange);
   ellipse(540, 420 + y * 160, 240, 240);
}
