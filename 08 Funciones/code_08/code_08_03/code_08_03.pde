void setup() {
  size(500, 500);
  noStroke();
  noLoop();
}
  void draw() {
  eye(350, 250);
  eye(150, 250);
 
}

void eye(int x, int y){
  fill(255);
  ellipse(x, y, 180, 180);
  fill(0);
  ellipse(x+10, y, 70, 70); 
  fill(255);
  ellipse(x+16, y-5, 25, 25);
}
