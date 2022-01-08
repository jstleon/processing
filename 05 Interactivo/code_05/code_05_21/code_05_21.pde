void setup(){
size(800, 800);
rectMode(CENTER);
}

void draw(){
  background(0);
  noStroke();
  if(!mousePressed){
    fill(200, 0, 0);
    rect(width/2, height/2, width/2, height/2);
  }else{
    fill(0, 0, 200);
    ellipse(width/2, height/2, width/2, height/2);
  }
}
