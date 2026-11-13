import processing.video.*;

Capture video;
PFont f;
String[] chars = {".", "-", "+", "#"};

void setup() {
  size(1920, 1080);
  video = new Capture(this, width, height);
  video.start();
  f = createFont("miFuente.ttf", 16);
}

void draw() {
  if (video.available()) {
    video.read();
  }

  background(0);
  video.loadPixels();
  
  for (int j = 0; j < height; j += 16) {
    for (int i = 0; i < width; i += 16) {
      color c = video.pixels[i + j * video.width];
      float brightnessValue = brightness(c);
      
      int charIndex = int(map(brightnessValue, 0, 255, 0, chars.length - 1));
      String chosenChar = chars[charIndex];
      
      float fontSize = map(brightnessValue, 0, 255, 8, 32);
      textFont(f, fontSize);
      
      fill(c);
      text(chosenChar, i, j);
    }
  }
}
