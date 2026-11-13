
void setup() {
  size(500, 500);
  noLoop();
}
void draw() {
drawX(0, 20);
}

void drawX(int gray, int grosor){
// Dibujar una X gris
stroke(gray);
strokeWeight(grosor);
line(50, 50, 450, 450);
line(450, 50, 50, 450);
}


void keyPressed(){
    save("image/image_8_8c.jpg");

}
