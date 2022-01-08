int x = 150;
int y = 150;
int w = 500;
int h = 500;

void setup(){
  size(800, 800);
}

void draw(){
  background(204);
  
  if((mouseX > x) && (mouseX < x + w) &&
  (mouseY > y) && (mouseY < y+h)){
    fill(0);
    }else{
    fill(255);
    }
    rect(x, y, w, h);
  }
