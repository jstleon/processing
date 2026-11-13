ball b, c;

void setup(){
  size(820, 462);
  b = new ball(new PVector(100,20), 60);
  c = new ball(new PVector(230,120), 30);
}

void draw(){
  background(0);
b.display();
b.move();

c.display();
c.move();
}
