dvoid setup(){
size(500, 500);
strokeWeight(20);
}

void draw(){
  background(204);
  line(50, 50, 450, 450);
  if(keyPressed){
    line(450, 50, 50, 450);
  }
}
