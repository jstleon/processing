String mensaje = "Texto con efecto resorte";
float r = 150; // Radio base del círculo
float pasoAngular;

void setup() {
  size(1000, 1000);
  textAlign(CENTER, CENTER);
  textSize(24);  
  fill(0);       
}

void draw() {
  background(255);
  translate(width/2, height/2); 
  
  pasoAngular = TWO_PI / mensaje.length();
  
  // Calcula la distancia del ratón al centro
  float d = dist(mouseX, mouseY, width/2, height/2);
  // Mapea esa distancia a un factor de escala para el radio
  float escala = map(d, 0, width/2, 1.5, 0.5);
  float rActual = r * escala;
  
  for (int i = 0; i < mensaje.length(); i++) {
    float theta = pasoAngular * i;
    float x = rActual * cos(theta);
    float y = rActual * sin(theta);
    
    pushMatrix();
    translate(x, y);
    rotate(theta + HALF_PI); 
    text(mensaje.charAt(i), 0, 0);
    popMatrix();
  }
}
