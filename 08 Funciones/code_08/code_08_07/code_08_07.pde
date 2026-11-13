
void setup() {
  size(500, 500);
  noLoop();
}
void draw() {
drawX(0);
}

void drawX(int gray){
// Dibujar una X gris
stroke(gray);
strokeWeight(60);
line(50, 50, 450, 450);
line(450, 50, 50,450);

}


void keyPressed(){
    save("image/image_8_7.jpg");

}
