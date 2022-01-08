void setup(){
size(800, 800);
noStroke();
rectMode(CENTER);
}

void draw(){
  background(0);
  if(mouseX > 100){
    if(mouseX < 300){
      fill(255, 0, 0);
      ellipse(width/2, height/2, 500, 500);
      }else{
      fill(0, 0, 255);
      rect(width/2, height/2, 500, 500);
    }
  }
}