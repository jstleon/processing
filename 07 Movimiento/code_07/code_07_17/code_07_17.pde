void setup() {
  size(800, 800);
}

void draw() {
  background(0);

  float s = map(second(), 0, 60, 0, width);
  float m = map(minute(), 0, 60, 0, width);
  float h = map(hour(), 0, 24, 0, width);
  
  // Segundos
  noStroke();
  fill(s/3, 0, s/3);
  rect(0, 0, s, height/3);
  stroke(255);
  line(s, 0, s, height/3);

  // Minutos
  noStroke();
  fill(m/3, 0, 0);
  rect(0, height/3, m, height/3);
  stroke(255);
  line(m, height/3, m, height/1.5);
  
  //Horas
  noStroke();
  fill(0, h/3, h/3);
  rect(0, height/1.5, h, height/3);
  stroke(255);
  line(h, height/1.5, h, height);
 
}
