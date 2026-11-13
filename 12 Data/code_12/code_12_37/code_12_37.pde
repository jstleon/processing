String mensaje = "Texto interactivo en un círculo";
float r = 200;
float pasoAngular;

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(255);
  fill(0);
  translate(width/2, height/2);
  
  pasoAngular = TWO_PI / mensaje.length();
  
  for (int i = 0; i < mensaje.length(); i++) {
    float theta = pasoAngular * i;
    float x = r * cos(theta);
    float y = r * sin(theta);
    
    float distancia = dist(mouseX, mouseY, x + width/2, y + height/2);
    if (distancia < 20) {
      fill(255, 0, 0);
      textSize(36);
    } else {
      fill(0);
      textSize(20);
    }
    
    pushMatrix();
    translate(x, y);
    rotate(theta + HALF_PI);
    text(mensaje.charAt(i), 0, 0);
    popMatrix();
  }
}
