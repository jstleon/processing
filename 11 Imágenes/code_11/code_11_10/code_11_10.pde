PImage img;

void setup(){
  size(1000, 1000);
  img = loadImage("a.jpg");
  println(img.width);
}

void draw(){
  loadPixels();
  img.loadPixels();
  for(int y = 0; y < height; y++){
    for(int x = 0; x < width; x++){
      int imageLoc = x + y * img.width;
      int displayLoc = x + y * width;
      
      float r = red(img.pixels[imageLoc]);
      float g = green(img.pixels[imageLoc]);
      float b = blue(img.pixels[imageLoc]);
      
      pixels[displayLoc] = color(r,g,b);
      
    }
  }
  updatePixels();
}
