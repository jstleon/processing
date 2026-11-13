String mensaje = "Texto alrededor del círculo";
float r = 150; // Radio del círculo
float pasoAngular;

void setup() {
  size(1000, 1000);
  background(255);
  textAlign(CENTER, CENTER);
  textSize(45);  // Establece un tamaño de fuente explícito
  fill(0);       // Establece un color de texto explícito
  translate(width/2, height/2); // Mover al centro del lienzo
  
  pasoAngular = TWO_PI / mensaje.length();
  
  for (int i = 0; i < mensaje.length(); i++) {
    float theta = pasoAngular * i;
    float x = r * cos(theta);
    float y = r * sin(theta);
    
    pushMatrix();
    translate(x, y);
    rotate(theta + HALF_PI); // Alineación tangencial con el círculo
    text(mensaje.charAt(i), 0, 0);
    popMatrix();
  }
  noLoop();  // No hay necesidad de un bucle draw() constante
}
