Ball [] balls = new Ball[0];
float gravity = 0.6;

void setup() {
  size(800, 800);
  frameRate(30);
  //balls[0] = new Ball(50, 0, 50, color(random(255)));
}

void draw() {
  background(30);
  // Update and display all balls
  for (int i = 0; i < balls.length; i++) {
    balls[i].gravity();
    balls[i].move();
    balls[i].display();
  }
  println(balls.length);
}

void mousePressed() {
  color rgb = color(random(255));
  // A new ball object 
  Ball b = new Ball(mouseX, mouseY, random(20, 60), rgb);
  // Append to array
  balls = (Ball[]) append(balls, b);
}
