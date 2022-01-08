int x = 250;
int y = 250;

void setup(){
size(500, 500);
}

void draw(){
background(230, 0, 0);  
if(keyPressed && (key == CODED)){
  if(keyCode == LEFT){
    x -=3;
  }else if(keyCode == RIGHT){
    x +=3;
  }
  if(keyCode == UP){
    y -=3;
  }else if(keyCode == DOWN){
    y +=3;
  }
}
ellipse(x, y, 50, 50);
}
