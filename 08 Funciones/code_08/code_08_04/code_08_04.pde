void setup() {
  size(500, 500);
  noStroke();
  noLoop();
}
  void draw() {
  eye(350, 250);
  eye(150, 250);
  eye(30, 50);
  eye(450, 400);
  eye(350, 70);
  eye(200, 450);
  eye(0, 350);
  eye(160, 100);
  eye(300, 360);
  eye(70, 510);
}

void eye(int x, int y){
  fill(255);
  ellipse(x, y, 180, 180);
  fill(0);
  ellipse(x+10, y, 70, 70); 
  fill(255);
  ellipse(x+16, y-5, 25, 25);
}

