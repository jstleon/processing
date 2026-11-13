EllipseVibra bug;

void setup(){
size(800, 800);
bug = new EllipseVibra(width/2, height/2, 60);
}

void draw(){
bug.move();
bug.display();
}
