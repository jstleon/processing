void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  fill(30);
  strokeWeight(1);
  ellipse(width/2, height/2, width/1.4, width/1.4);
   
  float s = map(second(), 0, 60, 0, TWO_PI)-HALF_PI;
  float m = map(minute(), 0, 60, 0, TWO_PI)-HALF_PI;
  float h = map(hour()%12, 0, 12, 0, TWO_PI)-HALF_PI;
 
  stroke(255);
  
  // segundos
  strokeWeight(2);
  line(width/2, height/2, width/2 + cos(s) * 220, height/2 + sin(s)* 220);
  
  // minutos
  strokeWeight(8);
  line(width/2, height/2, width/2 + cos(m) * 200, height/2 + sin(m)* 200);
  
  // horas
  strokeWeight(15);
  line(width/2, height/2, width/2 + cos(h) * 150, height/2 + sin(h)* 150);
  
  // punto central
  noStroke();
  fill(10);
  ellipse(width/2, height/2, 10, 10);  
}
