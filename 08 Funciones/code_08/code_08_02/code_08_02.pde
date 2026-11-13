void setup() {
  size(500, 500);
  noStroke();
  noLoop();
}
  void draw() {
  // Ojo derecha
  fill(255);
  ellipse(350, 250, 180, 180);
  fill(0);
  ellipse(350+10, 250, 70, 70); // Black circle 
  fill(255);
  ellipse(350+16, 245, 25, 25); // Small, white circle
  
  // Ojo izquierda
  fill(255);
  ellipse(150, 250, 180, 180);
  fill(0);
  ellipse(150+10, 250, 70, 70); // Black circle 
  fill(255);
  ellipse(150+16, 245, 25, 25); // Small, white circle
}

