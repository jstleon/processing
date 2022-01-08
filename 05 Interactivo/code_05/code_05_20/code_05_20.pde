void setup(){
  size(500, 500);
}

void draw(){
  background(0);
  if((mouseX > width/2) && (mouseY > height/2)){
      fill(210, 0, 0);
      rect(width/2, height/2, width/2, height/2);
  }
}
