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
    // Change bubbles if mouse rolls over
    if (bubbles[i].rollover(mouseX, mouseY)) {
      bubbles[i].change();
    }
  }
}

// Save new Bubble data when mouse is Pressed
void mousePressed() {
  saveData();
}

void saveData() {
  // For each Bubble make one String to be saved
  String[] data = new String[bubbles.length];
  for (int i = 0; i < bubbles.length; i++) {
    // Concatenate bubble variables
    data[i] = bubbles[i].r + "," + bubbles[i].g + "," + bubbles[i].diameter;
  }
  // Save to File
  saveStrings("data/data.txt", data);
}

// A Bubble class
class Bubble {
  float x, y;
  float diameter;
  float r, g;
  
  Bubble(float r_, float g_, float diameter_) {
    x = random(width);
    y = random(height);
    r = r_;
    g = g_;
    diameter = diameter_;
  }

  // True or False if point is inside circle
  boolean rollover(int mx, int my) {
    if (dist(mx, my, x, y) < diameter / 2) {
      return true;
    } else {
      return false;
    }
  }

  // Change Bubble variables
  void change() {
    r = constrain(r + random(-10, 10), 0, 255);
    g = constrain(g + random(-10, 10), 0, 255);
    diameter = constrain(diameter + random(-2, 4), 4, 72);
  }

  // Display Bubble
  void display() {
    stroke(0);
    fill(r, g, 255, 150);
    ellipse(x, y, diameter, diameter);
  }

  // Bubble drifts upwards
  void drift() {
    y += random(-3, -0.1);
    x += random(-1, 1);
    if (y < -diameter * 2) {
      y = height + diameter * 2;
    }
  }
}
