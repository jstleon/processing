Ball b1, b2, b3;
void setup() {
  size(400, 400);
  
  b1 = new Ball();
  b2 = new Ball(30.0, color(0, 200, 0));
  b3 = new Ball(10, 10, 10, color(0, 0, 200));
} 
void draw() {
  background(255);
  b1.move();
  b1.display();
  b2.move();
  b2.display();
  b3.move();
  b3.display();
} 
