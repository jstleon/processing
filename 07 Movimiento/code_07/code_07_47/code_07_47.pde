void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  fill(80);
  strokeWeight(1);
  ellipse(width/2, height/2, width/1.8, width/1.8);
   
  float s = map(second(), 0, 60, 0, TWO_PI)-HALF_PI;
  float m = map(minute(), 0, 60, 0, TWO_PI)-HALF_PI;
  float h = map(hour()%12, 0, 12, 0, TWO_PI)-HALF_PI;
  numeros();
  stroke(255);
  strokeWeight(2);
  
  // segundos
  line(width/2, height/2, cos(s) * 120 + width/2, sin(s)* 120 + height/2);
  strokeWeight(8);
  
  // minutos
  line(width/2, height/2, cos(m) * 110 + width/2, sin(m)* 110 + height/2);
  strokeWeight(15);
  
  // horas
  line(width/2, height/2, cos(h) * 90 + width/2, sin(h)* 90 + height/2);
  
  // punto
  noStroke();
  fill(10);
  ellipse(width/2, height/2, 10, 10);  
 
}

void numeros(){
for(float angle = 0; angle < TWO_PI; angle+= PI/6.0){
    fill(255, 0, 0);
    noStroke();
    ellipse(cos(angle)*125+width/2,  sin(angle)*125+height/2, 10, 10);
  }
}
