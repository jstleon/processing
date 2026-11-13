String mensaje = "Animación en círculo";
float rInicial = 0;
float rFinal = 200;
float[] radios;
float pasoAngular;

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  
  radios = new float[mensaje.length()];
  for (int i = 0; i < radios.length; i++) {
    radios[i] = rInicial;
  }
}

void draw() {
  background(255);
  fill(0);
  translate(width/2, height/2);
  
  pasoAngular = TWO_PI / mensaje.length();
  
  for (int i = 0; i < mensaje.length(); i++) {
    float theta = pasoAngular * i;
    float x = radios[i] * cos(theta);
    float y = radios[i] * sin(theta);
    
    if (radios[i] < rFinal) {
      radios[i] += 2; // Incremento del radio para la animación
    }
    
    pushMatrix();
    translate(x, y);
    rotate(theta + HALF_PI);
    text(mensaje.charAt(i), 0, 0);
    popMatrix();
  }
}
