Ball b1;

void setup(){
  size(400, 400);
  b1 = new Ball(20,20,10,color(30));
}

void draw(){
  background(255);
  b1.move();
  b1.display();
}
