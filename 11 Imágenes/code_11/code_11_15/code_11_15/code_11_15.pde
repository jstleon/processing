PImage img;
int pointillize = 6;

void setup(){
   size(1000, 1000);
   img = loadImage("a.jpg");
   background(0);
}

void draw(){
   pointillize = (int)random(1, 10);
   int x = int(random(img.width));
   int y = int(random(img.height));
   int loc = x + y * img.width;
   
   loadPixels();
   float r = red(img.pixels[loc]);
   float g = green(img.pixels[loc]);
   float b = blue(img.pixels[loc]);
   noStroke();
   
   fill(r, g, b, 100);
   ellipse(x, y, pointillize, pointillize);
}
