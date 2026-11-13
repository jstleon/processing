import processing.video.*;

Capture video;
PFont f;
String chars = "TIEMPOS ATROCES";

void setup() {
  size(1920, 1080);
  video = new Capture(this, width, height);
  video.start();
  f = createFont("miFuente.ttf", 16);  // Asegúrate de que esta fuente esté en la carpeta "data"
}

void draw() {
  if (video.available()) {
    video.read();
  }

  background(0);
  video.loadPixels();
  int charcount = 0;
  for (int j = 0; j < height; j += 16) {
    for (int i = 0; i < width; i += 16) {
      color c = video.pixels[i + j * video.width];
      fill(c);
      
      textFont(f);
      textAlign(CENTER);
      text(chars.charAt(charcount), i, j);
      charcount = (charcount + 1) % chars.length();
    }
  }
}
