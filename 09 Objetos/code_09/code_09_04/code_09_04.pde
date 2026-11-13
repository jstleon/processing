Spot sp, sp2, sp3;

void setup(){
  size(500, 500);
  noStroke();
  sp = new Spot(width/2, 100, 50, 5.5);
  sp2 = new Spot(width/3, 50, 30, 1.5);
  sp3 = new Spot(width*0.8, 20, 10, 7.5);
}

void draw(){
  fill(0, 15);
  rect(0, 0, width, height);
  fill(255);
  sp.colores();
  sp.display();
  sp.move();
  
  sp2.colores();
  sp2.display();
  sp2.move();
  
  sp3.colores();
  sp3.display();
  sp3.move();
}
