Bubble[] bubbles;

void setup() {
  size(1000,1000);
  smooth();
  
  // Load text file as an array of String
  String[] data = loadStrings("data.txt");
  bubbles = new Bubble[data.length];
  
  // Initialize each Bubble object by splitting each line of the file
  for (int i = 0; i < bubbles.length; i++) {
    float[] values = float(split(data[i], ","));
    bubbles[i] = new Bubble(values[0], values[1], values[2]);
  }
}

void draw() {
  background(20);
  
  // Display and move all bubbles
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].drift();
  }
}

// A Class to describe a "Bubble"
class Bubble {
  float x, y;
  float diameter;
  float speed;
  float r, g;
  
  // The constructor initializes color and size
  // Location is filled randomly
  Bubble(float r_, float g_, float diameter_) {
    x = random(width);
    y = height;
    r = r_;
    g = g_;
    diameter = diameter_*4;
  }

  // Display the Bubble
  void display() {
    stroke(255);
    fill(r, g, 255, 150);
    ellipse(x, y, diameter, diameter);
  }

  // Move the bubble
  void drift() {
    y += random(-3, -0.2);
    x += random(-1, 1);
    if (y < -diameter*2) {
      y = height + diameter*2;
    }
  }
}
