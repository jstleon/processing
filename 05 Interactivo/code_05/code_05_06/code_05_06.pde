float x;
int offset = 0;
void setup() {
  size(580, 580);
  x = width/2;
}
void draw() {
  background(204);
    if (mouseX > x) {
      x += 0.5;
      offset = -10;
    }
    if (mouseX < x) {
      x -= 0.5;
      offset = 10;
    }
  line(x, 0, x, height);
  
  line(mouseX, mouseY, mouseX + offset, mouseY - 10);
  line(mouseX, mouseY, mouseX + offset, mouseY + 10);
  line(mouseX, mouseY, mouseX + offset*3, mouseY);
}