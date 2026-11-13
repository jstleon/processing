
void setup() {
  size(500, 500);
  noLoop();
}
void draw() {
drawX(255, 20, 105, 105, 250);
drawX(55, 7, 355, 205, 50);
drawX(155, 60, 180, 350, 80);
drawX(25, 5, 80, 50, 190);
}
 
void drawX(int gray, int grosor, int x, int y, int size){
// Dibujar una X gris
stroke(gray);
strokeWeight(grosor);
line(x, y, x+size, y+size);
line(x+size, y, x, y+size);
}

