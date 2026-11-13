float angulo = 0.0;
float radio = 200.0;

void setup(){
  size(800,800);   
}

void draw(){
  background(0);
  angulo +=0.03;

  float a = angulo;
  for(int i=-10; i < 45; i++){
    float y = sin(a) * height/4;
    stroke(255, 20);
    fill(150, y/4, a/4, 20);
    ellipse(i*20, y + height/2, radio, radio);
    a +=0.09;
  }
}
