void setup(){
  size(800, 800);
}

void draw(){
float mx = map(mouseX, 0, width, 0, 255);
float my = map(mouseY, 0, height, 0, 255);
background(mx, 0, my);

}
