float x, y;
float easing = 0.02;

float diametro = 60;

void setup(){
  size(800, 800);
}

void draw(){
  background(0);
  float targetX = mouseX;
  float targetY = mouseY;
  x +=(targetX - x) * easing;
  y +=(targetY -y) * easing;
  
  fill(220);
  ellipse(x, y, diametro, diametro);
  
  fill(200, 0, 0);
  ellipse(mouseX, mouseY, diametro/2, diametro/2);
  
  println("X " + targetX + " : " + x + " | Y " + targetY + " : " + y);
  
}
