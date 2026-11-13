void setup() {
  size(500, 500);
  noLoop();
  background(235);
}

void draw() {
  fruto(150, 250, 150, 1);
}

void fruto(int x, int y, int size, int dir) {
  pushMatrix();
    translate(x, y); // Mover a posicion 
    scale(size); // Escalar tamaño con size
    stroke(0); // Borde negro
    strokeWeight(0.02);
    noFill();
    ellipse(1.0*dir, -0.5, 0.8, 0.8); // Círculo externo fruto

  for (float i = 0; i < 6.30; i+=0.2) {
    strokeWeight(0.008);
    fill(144, 20);
    ellipse(1.0*dir+cos(i)*0.3, -0.5+sin(i)*0.3, 0.3, 0.3);
    line(1.0*dir, -0.5, 1.0*dir+cos(i)*0.7, -0.5+sin(i)*0.7 );
  }

  noFill();
  strokeWeight(0.03);
  // Rama del fruto
  bezier(1.0*dir, -0.5, 0.8*dir, -0.2, 0.5*dir, -0.5, 0.0, 0.0); 
  // Hoja
  bezier(0.4*dir, 0.5, 0.4*dir, 0.2, 0.2*dir, 0.0, 0.0, 0.0);
  bezier(0.4*dir, 0.5, 0.5*dir, 0.3, 0.4*dir, 0.0, 0.0, 0.0);

  fill(random(120, 200), 255);
  // Fruto
  ellipse(1.0*dir, -0.5, 0.4, 0.4); 
  fill(255);
   // Semilla
  ellipse(1.0*dir, -0.5, 0.1, 0.1);
  popMatrix();
}

