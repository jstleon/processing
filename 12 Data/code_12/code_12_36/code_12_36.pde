String mensaje = "Texto a lo largo de una espiral. ";
float r = 10; // Radio inicial
float pasoAngular;

void setup() {
  size(800, 800);
  background(255);
  textAlign(CENTER);
  fill(0);
  translate(width/2, height/2);

  pasoAngular = TWO_PI / 50.0;  // Incremento angular para cada caracter
  
  for (int i = 0; i < mensaje.length(); i++) {
    float theta = pasoAngular * i;
    float x = r * cos(theta);
    float y = r * sin(theta);
    
    pushMatrix();
    translate(x, y);
    rotate(theta);
    text(mensaje.charAt(i), 0, 0);
    popMatrix();
    
    r += 2; // Incremento del radio
  }
  noLoop();
}
