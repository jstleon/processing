PImage img;

void setup(){
  size(1000, 1000);
  img = loadImage("a.jpg");

}

void draw(){
  loadPixels();
  img.loadPixels();
  for(int y = 0; y < height; y++){
    for(int x = 0; x < width; x++){
      int loc = x + y * img.width;
     
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      
      float adjustBrightness = ((float)mouseX/width) * 1.0;
      
      r *= adjustBrightness;
      g *= adjustBrightness;
      b *= adjustBrightness;
      
      color c = color(r,g,b);
      pixels[loc] = c;
    }
  }
  updatePixels();
}
