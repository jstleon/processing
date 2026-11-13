void setup() {
  size(500, 500);
 noLoop();
}
void draw() {
for (int i = -50; i < 50; i++) {
     drawX(int(random(255)), int(random(20)),
     int(random(width)), int(random(height)), 100);
     }
     
}
 
void drawX(int gray, int grosor, int x, int y, int size){
// Dibujar una X gris
stroke(gray);
strokeWeight(grosor);
line(x, y, x+size, y+size);
line(x+size, y, x, y+size);
}
