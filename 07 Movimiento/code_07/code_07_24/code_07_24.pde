  float angle = 0.0;
  float offset = 250;
  float scalar = 210;
  float speed = 0.08;
  void setup() {
     size(500, 500);
     smooth();
  }
  
  void draw() {
     float x = offset + cos(angle) * scalar;
     float y = offset + sin(angle) * scalar;
     ellipse( x, y, 80, 80);
     angle += speed;
  }
