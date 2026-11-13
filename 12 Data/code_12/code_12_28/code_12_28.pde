import processing.video.*;

Capture video;
float thresholdValue = 127;  // Valor para el contraste intenso

void setup() {
  size(1920, 1080);
  video = new Capture(this, width, height);
  video.start();
}

void draw() {
  if (video.available()) {
    video.read();
  }

  video.loadPixels();
  
  // Convertir a escala de grises y aplicar threshold para alto contraste
  for (int j = 0; j < height; j++) {
    for (int i = 0; i < width; i++) {
      color c = video.pixels[i + j * video.width];
      float gray = (red(c) + green(c) + blue(c)) / 3;
      
      if (gray > thresholdValue) {
        video.pixels[i + j * video.width] = color(255);
      } else {
        video.pixels[i + j * video.width] = color(0);
      }
    }
  }
  
  // Distorsiones intensas
  for (int i = 0; i < random(10, 100); i++) {
    int randRow = int(random(height));
    int randCol = int(random(width));
    
    // Desplazamientos aleatorios más grandes
    if (random(1) > 0.5) {
      int shiftAmount = int(random(10, 50));
      for (int j = 0; j < width; j++) {
        video.pixels[j + randRow * video.width] = video.pixels[j + (randRow + shiftAmount) % height * video.width];
      }
    } else {
      int shiftAmount = int(random(10, 50));
      for (int j = 0; j < height; j++) {
        video.pixels[randCol + j * video.width] = video.pixels[(randCol + shiftAmount) % width + j * video.width];
      }
    }
    
    // "Rasgaduras" o cortes en la imagen
    if (random(1) > 0.9) {
      int cutLength = int(random(10, 100));
      for (int j = 0; j < cutLength; j++) {
        video.pixels[randCol + (randRow + j) % height * video.width] = color(0);
      }
    }
    
    // Parpadeo controlado
    if (random(1) > 0.95) {
      for (int k = 0; k < video.pixels.length; k++) {
        video.pixels[k] = color(0);
      }
    }
  }

  updatePixels();
  image(video, 0, 0, width, height);
}
