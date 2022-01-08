void setup() {
  size(800, 800);
}

void draw() {
  background(0);

  //Dibuja línea en el centro
  stroke(255, 150);
  line(width/2, 0, width/2, height);

  //Dibuja una línea que siga al ratón en X
  line(mouseX, 0, mouseX, height);
  noStroke();

  // Estructura if
  if (mouseX < 200) {
    fill(255, 0, 0, 150); // Rojo
    ellipse(width/2, height/2, 500, 500);
    
  } else if (mouseX > 600) {
    rectMode(CENTER);
    fill(0, 0, 255, 150); // Azul
    rect(width/2, height/2, 500, 500);
    
  } else if ((mouseX > 300) && (mouseX < 500)){
    fill(255, 255, 0, 155); // Amarillo
    triangle(width/2, 200, 650, 650, 150, 650);
  }
}