boolean button = false;

int x = 50;
int y = 50;
int w = 50;
int h = 50;

void setup() {
  size(800, 800);
}

void draw() {
  
  if((mouseX > x) && (mouseX < x + w) &&
  (mouseY > y) && (mouseY < y +h && mousePressed)){
    button = true;
    }else{
    button = false;
    }
  
  
  if(button) {
    background(255);
    stroke(0);
  } else {
    background(0);
    stroke(255);
  }
  fill(175);
  rect(x, y, w, h);
}
