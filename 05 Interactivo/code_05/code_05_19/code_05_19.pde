void setup(){
  size(500, 500);
}

void draw(){
  background(0);
  if(mouseX > width/2){
    if(mouseY > height/2){
      fill(255);
      rect(width/2, height/2, width/2, height/2);
    }
  }
}
