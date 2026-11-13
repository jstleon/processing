import processing.video.*;

Capture video;
ArrayList<Particle> particles = new ArrayList<Particle>();
float thresholdValue = 127;

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
  
  particles.clear();
  
  for (int j = 0; j < height; j++) {
    for (int i = 0; i < width; i++) {
      color c = video.pixels[i + j * video.width];
      float gray = (red(c) + green(c) + blue(c)) / 3;
      
      if (gray > thresholdValue) {
        if (random(1) < 0.05) {  // Elegimos píxeles al azar para tratarlos como partículas
          Particle p = new Particle(new PVector(i, j), gray);
          particles.add(p);
        }
      }
    }
  }
  
  background(0);
  for (Particle p : particles) {
    p.update();
    p.display();
  }
}

class Particle {
  PVector position;
  PVector velocity;
  float lifetime;
  float size;
  
  Particle(PVector pos, float gray) {
    position = pos;
    velocity = new PVector(random(-2, 2), random(-2, 2));
    lifetime = random(100, 255);
    size = map(gray, 128, 255, 2, 8);
    
    // Ocasionalmente introducimos velocidades aleatorias altas para el efecto glitch
    if (random(1) < 0.02) {
      velocity.mult(3);
    }
  }
  
  void update() {
    // Introduce una ligera fuerza de gravedad
    velocity.y += 0.05;
    
    position.add(velocity);
    lifetime -= 2;
  }
  
  void display() {
    fill(255, lifetime);
    noStroke();
    ellipse(position.x, position.y, size, size);
  }
}
